%Converts IEEE Format Floating Point Numbers to SMC Format Floating Point numbers
function smc_fp_number   = syn_ieeefp2smcfp(ieee_fp_number, exponent_width, matissa_width)

	if (ieee_fp_number==0) 
		ieee_fp_number=1e-128;
	end

	[f,e]=log2(abs(ieee_fp_number));
	exp = e+2^(exponent_width-1)-1;
	if (exp<1) 
    	exp =1; 
	end
	if (exp>(2^exponent_width-2)) 
    	exp =1; 
	end
	exp = exp*2^matissa_width;
	frac = convergent((2*f-1)*2^matissa_width);
	sign = (ieee_fp_number<0)*2^(matissa_width+exponent_width);
	smc_fp_number   = exp + frac + sign;
end
