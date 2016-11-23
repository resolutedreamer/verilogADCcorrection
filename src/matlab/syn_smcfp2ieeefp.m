%Converts SMC Format Floating Point Numbers to IEEE Format Floating Point numbers
function ieee_fp_number = syn_smcfp2ieeefp(smc_fp_number, exponent_width, matissa_width)
	smc_fp_number = double(smc_fp_number);
	ieee_fp_number = (-2*floor(smc_fp_number/(2^(exponent_width+matissa_width)))+1)*(2^(floor(mod(smc_fp_number,(2^(exponent_width+matissa_width)))/(2^matissa_width))-2^(exponent_width-1)+1))*(mod(smc_fp_number,2^matissa_width)/(2^(matissa_width+1))+0.5);
end

