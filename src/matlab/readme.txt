/*******************************************************************
******************** syn_ieeefp2smcfp ******************************
*******************************************************************/
Converts IEEE format floating-point numbers to SMC floating-point numbers. For example to convert IEEE representation of 0.25 to SMC (symphony model compiler) representation we will use the following command in matlab

	smcfp = uint32(syn_ieeefp2smcfp(0.25, 8, 23))

	smcfp = 

		1056964608

Here, the 8 and 23 are the exponent and mantissa widths. You should always use these values for the conversions.


/*******************************************************************
******************** syn_smcfp2ieeefp ******************************
*******************************************************************/
Converts SMC floating-point numbers to IEEE floating-point numbers. For example to convert the SMC representation of 0.25 to IEEE we will use the following command in matlab.

	ieeefp = syn_smcfp2ieeefp(1056964608, 8, 23)

	ieeefp = 

		0.2500
