%% clear the workspace and import the non-linearity curve
clc;
clear all;
close all;

%import the adc_count/voltage curve into our workspace
load ('./non_linearity_curve.mat');


%**************************************************************************
%***** DEFINE THE SYSTEM SPECS HERE ***************************************
%**************************************************************************
% define the ENOB spec
%enob = input('ENOB in bits (14 to 17) - ');
enob = 14;

% define the ADC range in mV
% modify it by increments of 5 down to 80mV not less
%adc_range = input('ADC range in mV (80 to 100) - ');
adc_range = 100;

%should we use centering and scaling in polynomial computation
%centerAndScale = input('Center and Scale data for fitting? (1 = yes, 0 = no) - ');
centerAndScale = 1;

%should we SMC or IEEE-754 single precision floating point
%smc_float_format = input('Use SMC floating point format? (1 = yes use SMC, 0 = no use IEEE-754) - ');
smc_float_format = 1;

%**************************************************************************
%**************************************************************************
%**************************************************************************


adc_range_idx = ceil((100 - adc_range)/5);

% limit ADC range to the given spec (i.e. +-90mV)
adc_count = adc_count((adc_range_idx + 1):(end-adc_range_idx));
v_mV = v_mV((adc_range_idx + 1):(end-adc_range_idx));


%switch to micro-volts from millivolts
v_uV = v_mV * 1000;

%to represent -100,000 to 100,000 we need 18-bits, hence we scale the
%output down by a factor of 4 so that we can represent it with 16-bits
%we are not loosing precision since our ENOB is 14-bits
v_uV = v_uV / 4;

l = length(adc_count);

%max tolerable error is 0.5LSB of the ENOB
max_error = 0.5*((v_uV(1) - v_uV(end))/(2^enob));

fprintf('\n')

%% 4 section polynomials solution

%print info on the effective system specs
fprintf('Calculating polynomial coefficients for the following specs.\n')
fprintf('ENOB - %d bits\n', enob)
fprintf('ADC range - +-%d mV\n', v_mV(1))

if(centerAndScale)
    fprintf('Centering and scaling enablied?- Yes\n\n')    
else
    fprintf('Centering and scaling enablied?- No\n\n')       
end


%divide the entire non-linearity curve into 4 sections and fit 4 different polinomials
adc_count_4_4 = adc_count(1:(ceil(l/4))+1);
adc_count_4_3 = adc_count((ceil(l/4)+1):ceil(l/2));
adc_count_4_2 = adc_count((ceil(l/2)):ceil(3*l/4)-1);
adc_count_4_1 = adc_count((ceil(3*l/4)-1):l);
v_uV_4_4 = v_uV(1:(ceil(l/4))+1);
v_uV_4_3 = v_uV((ceil(l/4)+1):ceil(l/2));
v_uV_4_2 = v_uV((ceil(l/2)):ceil(3*l/4)-1);
v_uV_4_1 = v_uV((ceil(3*l/4)-1):l);

fprintf('/*************************\n')
fprintf('/****** SECTION #1 *******\n')
fprintf('/*************************\n')
    
for deg_4_1 = 1:10
    %determine the coefficients of the approximating polinomial of degree deg

    %if number of datapoints is less than the polynomial degree we are
    %trying to find, exit
    if(length(adc_count_4_1) <= deg_4_1)
        break;
    end
    
    if (centerAndScale == 1)
        [coeff_4_1,s_4_1,mu_4_1] = polyfit(adc_count_4_1, v_uV_4_1, deg_4_1); %freq = x axis, voltage = y axis
        coeff_4_1 = single(coeff_4_1);
        mu_4_1 = single(mu_4_1);
        
        %convert the coefficients and the mean and the standard deviation
        %to SMC float format anc back, so that the differences in number
        %representation are taken into account during the polyval
        %calculation
        if (smc_float_format == 1)
            coeff_4_1_smcfp = uint32(syn_ieeefp2smcfp(coeff_4_1, 8, 23));
            mu_4_1_smcfp    = uint32(syn_ieeefp2smcfp(mu_4_1, 8, 23));  

            for(i = 1:(deg_4_1+1))
              coeff_4_1(i)  = syn_smcfp2ieeefp(coeff_4_1_smcfp(i), 8, 23);
            end
            mu_4_1(1)       = syn_smcfp2ieeefp(mu_4_1_smcfp(1), 8, 23); %mean
            mu_4_1(2)       = syn_smcfp2ieeefp(mu_4_1_smcfp(2), 8, 23); %standard deviation
        end
        
        v_uV_fit_4_1(:,deg_4_1) = polyval(coeff_4_1, adc_count_4_1, s_4_1, mu_4_1);
    else        
        coeff_4_1 = polyfit(adc_count_4_1, v_uV_4_1, deg_4_1); %freq = x axis, voltage = y axis
        coeff_4_1 = single(coeff_4_1);
        
        %convert the coefficients 
        %to SMC float format anc back, so that the differences in number
        %representation are taken into account during the polyval
        %calculation
        if (smc_float_format == 1)
            coeff_4_1_smcfp = uint32(syn_ieeefp2smcfp(coeff_4_1, 8, 23));

            for(i = 1:(deg_4_1+1))
              coeff_4_1(i)  = syn_smcfp2ieeefp(coeff_4_1_smcfp(i), 8, 23);
            end
        end
        
        v_uV_fit_4_1(:,deg_4_1) = polyval(coeff_4_1, adc_count_4_1);
    end
    
    %see how good the fit is, max sample error
    max_fit_error_4_1(deg_4_1) = max(abs(v_uV_4_1 - v_uV_fit_4_1(:,deg_4_1)));
    if(max_fit_error_4_1(deg_4_1) <= max_error)

       if (centerAndScale == 1)
           % x^ = (x - mean)/std
           if (smc_float_format == 1)
               fprintf('Polynomial was centered and scaled with \n\tMean - %f (SMC-float - %d), \n\tSTD - %f (SMC-float -%d) \n', mu_4_1(1), mu_4_1_smcfp(1), mu_4_1(2), mu_4_1_smcfp(2))
           else
               fprintf('Polynomial was centered and scaled with \n\tMean - %f, \n\tSTD - %f \n', mu_4_1(1), mu_4_1(2))
           end
           
           fprintf('\tX_new = (X_orig - Mean)/STD\n\n')
       end
       
       fprintf('Polinoimial degree (order) - %d\n\n', deg_4_1)
        
       %coefficients are
       for(i = 1:(deg_4_1+1))
           if(smc_float_format == 1)
               fprintf('x^%d * %.32f, \tSMC-float - %d\n',length(coeff_4_1)-i, coeff_4_1(i), coeff_4_1_smcfp(i)) 
           else
               fprintf('x^%d * %.32f\n',length(coeff_4_1)-i, coeff_4_1(i)) 
           end
       end
       
       fprintf('\n\n');
       break;
    else
        if(deg_4_1 == 10)
            fprintf('No fit found for the given data\n\n');
        end
    end
end

fprintf('/*************************\n')
fprintf('/****** SECTION #2 *******\n')
fprintf('/*************************\n')

for deg_4_2 = 1:10
    %determine the coefficients of the approximating polinomial of degree deg

    %if number of datapoints is less than the polynomial degree we are
    %trying to find, exit
    if(length(adc_count_4_2) <= deg_4_2)
        break;
    end
    
    if (centerAndScale == 1)
        [coeff_4_2,s_4_2,mu_4_2] = polyfit(adc_count_4_2, v_uV_4_2, deg_4_2); %freq = x axis, voltage = y axis
        coeff_4_2 = single(coeff_4_2);
        mu_4_2 = single(mu_4_2);
        
        %convert the coefficients and the mean and the standard deviation
        %to SMC float format anc back, so that the differences in number
        %representation are taken into account during the polyval
        %calculation
        if (smc_float_format == 1)        
            coeff_4_2_smcfp = uint32(syn_ieeefp2smcfp(coeff_4_2, 8, 23));
            mu_4_2_smcfp    = uint32(syn_ieeefp2smcfp(mu_4_2, 8, 23));  

            for(i = 1:(deg_4_2+1))
              coeff_4_2(i)  = syn_smcfp2ieeefp(coeff_4_2_smcfp(i), 8, 23);
            end
            mu_4_2(1)       = syn_smcfp2ieeefp(mu_4_2_smcfp(1), 8, 23); %mean
            mu_4_2(2)       = syn_smcfp2ieeefp(mu_4_2_smcfp(2), 8, 23); %standard deviation
        end
        
        v_uV_fit_4_2(:,deg_4_2) = polyval(coeff_4_2, adc_count_4_2, s_4_2, mu_4_2);
    else        
        coeff_4_2 = polyfit(adc_count_4_2, v_uV_4_2, deg_4_2); %freq = x axis, voltage = y axis
        coeff_4_2 = single(coeff_4_2);
        
        %convert the coefficients 
        %to SMC float format anc back, so that the differences in number
        %representation are taken into account during the polyval
        %calculation
        if (smc_float_format == 1)        
            coeff_4_2_smcfp = uint32(syn_ieeefp2smcfp(coeff_4_2, 8, 23));

            for(i = 1:(deg_4_2+1))
              coeff_4_2(i)  = syn_smcfp2ieeefp(coeff_4_2_smcfp(i), 8, 23);
            end
        end
        
        v_uV_fit_4_2(:,deg_4_2) = polyval(coeff_4_2, adc_count_4_2);
    end
      
    %see how good the fit is, max sample error
    max_fit_error_4_2(deg_4_2) = max(abs(v_uV_4_2 - v_uV_fit_4_2(:,deg_4_2)));
    if(max_fit_error_4_2(deg_4_2) <= max_error)
               
       if (centerAndScale == 1)
           % x^ = (x - mean)/std
           if (smc_float_format == 1)
               fprintf('Polynomial was centered and scaled with \n\tMean - %f (SMC-float - %d), \n\tSTD - %f (SMC-float -%d) \n', mu_4_2(1), mu_4_2_smcfp(1), mu_4_2(2), mu_4_2_smcfp(2))
           else
               fprintf('Polynomial was centered and scaled with \n\tMean - %f, \n\tSTD - %f \n', mu_4_2(1), mu_4_2(2))
           end
           
           fprintf('\tX_new = (X_orig - Mean)/STD\n\n')
       end

       fprintf('Polinoimial degree (order) - %d\n\n', deg_4_2)
              
       %coefficients are
       for(i = 1:(deg_4_2+1))
           if(smc_float_format == 1)
               fprintf('x^%d * %.32f, \tSMC-float - %d\n',length(coeff_4_2)-i, coeff_4_2(i), coeff_4_2_smcfp(i)) 
           else
               fprintf('x^%d * %.32f\n',length(coeff_4_2)-i, coeff_4_2(i)) 
           end
       end
       
       fprintf('\n\n');
       break;
    else
        if(deg_4_2 == 10)
            fprintf('No fit found for the given data\n\n');
        end       
    end
end

fprintf('/*************************\n')
fprintf('/****** SECTION #3 *******\n')
fprintf('/*************************\n')

for deg_4_3 = 1:10
    %determine the coefficients of the approximating polinomial of degree deg

    %if number of datapoints is less than the polynomial degree we are
    %trying to find, exit
    if(length(adc_count_4_3) <= deg_4_3)
        break;
    end
    
    if (centerAndScale == 1)
        [coeff_4_3,s_4_3,mu_4_3] = polyfit(adc_count_4_3, v_uV_4_3, deg_4_3); %freq = x axis, voltage = y axis
        coeff_4_3 = single(coeff_4_3);
        mu_4_3 = single(mu_4_3);
        
        %convert the coefficients and the mean and the standard deviation
        %to SMC float format anc back, so that the differences in number
        %representation are taken into account during the polyval
        %calculation
        if (smc_float_format == 1)        
            coeff_4_3_smcfp = uint32(syn_ieeefp2smcfp(coeff_4_3, 8, 23));
            mu_4_3_smcfp    = uint32(syn_ieeefp2smcfp(mu_4_3, 8, 23));  

            for(i = 1:(deg_4_3+1))
              coeff_4_3(i)  = syn_smcfp2ieeefp(coeff_4_3_smcfp(i), 8, 23);
            end
            mu_4_3(1)       = syn_smcfp2ieeefp(mu_4_3_smcfp(1), 8, 23); %mean
            mu_4_3(2)       = syn_smcfp2ieeefp(mu_4_3_smcfp(2), 8, 23); %standard deviation
        end
        
        v_uV_fit_4_3(:,deg_4_3) = polyval(coeff_4_3, adc_count_4_3, s_4_3, mu_4_3);
    else        
        coeff_4_3 = polyfit(adc_count_4_3, v_uV_4_3, deg_4_3); %freq = x axis, voltage = y axis
        coeff_4_3 = single(coeff_4_3);
        
        %convert the coefficients 
        %to SMC float format anc back, so that the differences in number
        %representation are taken into account during the polyval
        %calculation
        if (smc_float_format == 1)
            coeff_4_3_smcfp = uint32(syn_ieeefp2smcfp(coeff_4_3, 8, 23));

            for(i = 1:(deg_4_3+1))
              coeff_4_3(i)  = syn_smcfp2ieeefp(coeff_4_3_smcfp(i), 8, 23);
            end
        end
        
        v_uV_fit_4_3(:,deg_4_3) = polyval(coeff_4_3, adc_count_4_3);
    end
      
    %see how good the fit is, max sample error
    max_fit_error_4_3(deg_4_3) = max(abs(v_uV_4_3 - v_uV_fit_4_3(:,deg_4_3)));
    if(max_fit_error_4_3(deg_4_3) <= max_error)
  
       if (centerAndScale == 1)
           % x^ = (x - mean)/std
           if (smc_float_format == 1)
               fprintf('Polynomial was centered and scaled with \n\tMean - %f (SMC-float - %d), \n\tSTD - %f (SMC-float -%d) \n', mu_4_3(1), mu_4_3_smcfp(1), mu_4_3(2), mu_4_3_smcfp(2))
           else
               fprintf('Polynomial was centered and scaled with \n\tMean - %f, \n\tSTD - %f \n', mu_4_3(1), mu_4_3(2))
           end
           
           fprintf('\tX_new = (X_orig - Mean)/STD\n\n')
       end
               
       fprintf('Polinoimial degree (order) - %d\n\n', deg_4_3)
            
       %coefficients are
       for(i = 1:(deg_4_3+1))
           if(smc_float_format == 1)
               fprintf('x^%d * %.32f, \tSMC-float - %d\n',length(coeff_4_3)-i, coeff_4_3(i), coeff_4_3_smcfp(i)) 
           else
               fprintf('x^%d * %.32f\n',length(coeff_4_3)-i, coeff_4_3(i)) 
           end
       end
       
       fprintf('\n\n');
       break;
    else
        if(deg_4_3 == 10)
            fprintf('No fit found for the given data\n\n');
        end       
    end
end

fprintf('/*************************\n')
fprintf('/****** SECTION #4 *******\n')
fprintf('/*************************\n')

for deg_4_4 = 1:10
    %determine the coefficients of the approximating polinomial of degree deg

    %if number of datapoints is less than the polynomial degree we are
    %trying to find, exit
    if(length(adc_count_4_4) <= deg_4_4)
        break;
    end
    
    if (centerAndScale == 1)
        [coeff_4_4,s_4_4,mu_4_4] = polyfit(adc_count_4_4, v_uV_4_4, deg_4_4); %freq = x axis, voltage = y axis
        coeff_4_4 = single(coeff_4_4);
        mu_4_4 = single(mu_4_4);
        
        %convert the coefficients and the mean and the standard deviation
        %to SMC float format anc back, so that the differences in number
        %representation are taken into account during the polyval
        %calculation
        if (smc_float_format == 1)        
            coeff_4_4_smcfp = uint32(syn_ieeefp2smcfp(coeff_4_4, 8, 23));
            mu_4_4_smcfp    = uint32(syn_ieeefp2smcfp(mu_4_4, 8, 23));  

            for(i = 1:(deg_4_4+1))
              coeff_4_4(i)  = syn_smcfp2ieeefp(coeff_4_4_smcfp(i), 8, 23);
            end
            mu_4_4(1)       = syn_smcfp2ieeefp(mu_4_4_smcfp(1), 8, 23); %mean
            mu_4_4(2)       = syn_smcfp2ieeefp(mu_4_4_smcfp(2), 8, 23); %standard deviation
        end
        
        v_uV_fit_4_4(:,deg_4_4) = polyval(coeff_4_4, adc_count_4_4, s_4_4, mu_4_4);
    else        
        coeff_4_4 = polyfit(adc_count_4_4, v_uV_4_4, deg_4_4); %freq = x axis, voltage = y axis
        coeff_4_4 = single(coeff_4_4);
        
        %convert the coefficients 
        %to SMC float format anc back, so that the differences in number
        %representation are taken into account during the polyval
        %calculation
        if (smc_float_format == 1)        
            coeff_4_4_smcfp = uint32(syn_ieeefp2smcfp(coeff_4_4, 8, 23));

            for(i = 1:(deg_4_4+1))
              coeff_4_4(i)  = syn_smcfp2ieeefp(coeff_4_4_smcfp(i), 8, 23);
            end
        end
        
        v_uV_fit_4_4(:,deg_4_4) = polyval(coeff_4_4, adc_count_4_4);
    end
      
    %see how good the fit is, max sample error
    max_fit_error_4_4(deg_4_4) = max(abs(v_uV_4_4 - v_uV_fit_4_4(:,deg_4_4)));
    if(max_fit_error_4_4(deg_4_4) <= max_error)
   
       if (centerAndScale == 1)
           % x^ = (x - mean)/std
           if (smc_float_format == 1)
               fprintf('Polynomial was centered and scaled with \n\tMean - %f (SMC-float - %d), \n\tSTD - %f (SMC-float -%d) \n', mu_4_4(1), mu_4_4_smcfp(1), mu_4_4(2), mu_4_4_smcfp(2))
           else
               fprintf('Polynomial was centered and scaled with \n\tMean - %f, \n\tSTD - %f \n', mu_4_4(1), mu_4_4(2))
           end
           
           fprintf('\tX_new = (X_orig - Mean)/STD\n\n')
       end
               
       fprintf('Polinoimial degree (order) - %d\n\n', deg_4_4)
           
       %coefficients are
       for(i = 1:(deg_4_4+1))
           if(smc_float_format == 1)
               fprintf('x^%d * %.32f, \tSMC-float - %d\n',length(coeff_4_4)-i, coeff_4_4(i), coeff_4_4_smcfp(i)) 
           else
               fprintf('x^%d * %.32f\n',length(coeff_4_4)-i, coeff_4_4(i)) 
           end
       end
       
       fprintf('\n\n');
       break;
    else
        if(deg_4_4 == 10)
            fprintf('No fit found for the given data\n\n');
        end       
    end
end