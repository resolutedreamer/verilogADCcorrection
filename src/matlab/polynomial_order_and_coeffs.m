%% clear the workspace and import the non-linearity curve
clc;
clear all;
close all;

%import the adc_count/voltage curve into our workspace
load ('./non_linearity_curve.mat');

% limit ADC range to +-80mV
adc_count = adc_count((4 + 1):(end-4));
v_mV = v_mV((4 + 1):(end-4));
v_uV = v_mV * 1000;

% define the ENOB spec
enob = 14; %bits

l = length(adc_count);

%max tolerable error is 0.5LSB of the ENOB
max_error = 0.5*((v_uV(1) - v_uV(end))/(2^enob));


%% 4 polynomials solution

%divide the entire non-linearity curve into 4 sections and fit 4 different polinomials
adc_count_4_1 = adc_count(1:(ceil(l/4))+1);
adc_count_4_2 = adc_count((ceil(l/4)+1):ceil(l/2));
adc_count_4_3 = adc_count((ceil(l/2)):ceil(3*l/4)-1);
adc_count_4_4 = adc_count((ceil(3*l/4)-1):l);
v_uV_4_1 = v_uV(1:(ceil(l/4))+1);
v_uV_4_2 = v_uV((ceil(l/4)+1):ceil(l/2));
v_uV_4_3 = v_uV((ceil(l/2)):ceil(3*l/4)-1);
v_uV_4_4 = v_uV((ceil(3*l/4)-1):l);

for deg_4_1 = 1:10
    %determine the coefficients of the approximating polinomial of degree deg

    coeff_4_1 = polyfit(adc_count_4_1, v_uV_4_1, deg_4_1); %freq = x axis, voltage = y axis
    coeff_4_1 = single(coeff_4_1);
    v_uV_fit_4_1(:,deg_4_1) = polyval(coeff_4_1, adc_count_4_1);

      
    %see how good the fit is, max sample error
    max_fit_error_4_1(deg_4_1) = max(abs(v_uV_4_1 - v_uV_fit_4_1(:,deg_4_1)));
    if(max_fit_error_4_1(deg_4_1) <= max_error)
               
       fprintf('Polinoimial of degree %d is sufficient for 1st section of 4 section NLC\n\n', deg_4_1)
        
       %coefficients are
       for(i = 1:(deg_4_1+1))
          coeff_4_1_smcfp(i) = uint32(syn_ieeefp2smcfp(coeff_4_1(i), 8, 23));
          fprintf('x^%d * %.32f, \tSMC-float - %d\n',length(coeff_4_1)-i, coeff_4_1(i), coeff_4_1_smcfp(i)) 
       end
        
       break;
    end
end

for deg_4_2 = 1:10
    %determine the coefficients of the approximating polinomial of degree deg

    coeff_4_2 = polyfit(adc_count_4_2, v_uV_4_2, deg_4_2); %freq = x axis, voltage = y axis
    coeff_4_2 = single(coeff_4_2);
    v_uV_fit_4_2(:,deg_4_2) = polyval(coeff_4_2, adc_count_4_2);


    %see how good the fit is, max sample error
    max_fit_error_4_2(deg_4_2) = max(abs(v_uV_4_2 - v_uV_fit_4_2(:,deg_4_2)));
    if(max_fit_error_4_2(deg_4_2) <= max_error)
       fprintf('Polinoimial of degree %d is sufficient for 2nd section of 4 section NLC\n\n', deg_4_2)     
       
       %coefficients are
       for(i = 1:(deg_4_2+1))
          coeff_4_2_smcfp(i) = uint32(syn_ieeefp2smcfp(coeff_4_2(i), 8, 23));
          fprintf('x^%d * %.32f, \tSMC-float - %d\n',length(coeff_4_2)-i, coeff_4_2(i), coeff_4_2_smcfp(i)) 
       end
       
       break;
    end
end

for deg_4_3 = 1:10
    %determine the coefficients of the approximating polinomial of degree deg

    coeff_4_3 = polyfit(adc_count_4_3, v_uV_4_3, deg_4_3); %freq = x axis, voltage = y axis
    coeff_4_3 = single(coeff_4_3);
    v_uV_fit_4_3(:,deg_4_3) = polyval(coeff_4_3, adc_count_4_3);


    %see how good the fit is, max sample error
    max_fit_error_4_3(deg_4_3) = max(abs(v_uV_4_3 - v_uV_fit_4_3(:,deg_4_3)));
    if(max_fit_error_4_3(deg_4_3) <= max_error)
       fprintf('Polinoimial of degree %d is sufficient for 3rd section of 4 section NLC\n\n', deg_4_3)

       %coefficients are
       for(i = 1:(deg_4_3+1))
          coeff_4_3_smcfp(i) = uint32(syn_ieeefp2smcfp(coeff_4_3(i), 8, 23));
          fprintf('x^%d * %.32f, \tSMC-float - %d\n',length(coeff_4_3)-i, coeff_4_3(i), coeff_4_3_smcfp(i)) 
       end

       break;
    end
end

for deg_4_4 = 1:10
    %determine the coefficients of the approximating polinomial of degree deg
    coeff_4_4 = polyfit(adc_count_4_4, v_uV_4_4, deg_4_4); %freq = x axis, voltage = y axis
    coeff_4_4 = single(coeff_4_4);
    v_uV_fit_4_4(:,deg_4_4) = polyval(coeff_4_4, adc_count_4_4);
    
    %see how good the fit is, max sample error
    max_fit_error_4_4(deg_4_4) = max(abs(v_uV_4_4 - v_uV_fit_4_4(:,deg_4_4)));
    if(max_fit_error_4_4(deg_4_4) <= max_error)
       fprintf('Polinoimial of degree %d is sufficient for 4th section of 4 section NLC\n\n', deg_4_4)
       
       %coefficients are 
       for(i = 1:(deg_4_4+1))
          coeff_4_4_smcfp(i) = uint32(syn_ieeefp2smcfp(coeff_4_4(i), 8, 23));
          fprintf('x^%d * %.32f, \tSMC-float - %d\n',length(coeff_4_4)-i, coeff_4_4(i), coeff_4_4_smcfp(i)) 
       end
       
       break;
    end
end

