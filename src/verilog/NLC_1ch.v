////////////////////////////////////////////////////////////////
// EEM216A Final Project: ADC Non-linearity Correction Engine
// Module: NLC.v
//
//////////////////////////////////////////////////////////////
`timescale 1ns/10ps

module NLC_1ch(
// Inputs
clk, reset,
x_adc, srdyi, 
section_limit,
coeff_1_0, coeff_1_1, coeff_1_2, coeff_1_3, coeff_1_4, coeff_1_5, coeff_1_6, coeff_1_7, coeff_1_8, coeff_1_9, coeff_1_10,
coeff_2_0, coeff_2_1, coeff_2_2, coeff_2_3, coeff_2_4, coeff_2_5, coeff_2_6, coeff_2_7, coeff_2_8, coeff_2_9, coeff_2_10,
coeff_3_0, coeff_3_1, coeff_3_2, coeff_3_3, coeff_3_4, coeff_3_5, coeff_3_6, coeff_3_7, coeff_3_8, coeff_3_9, coeff_3_10, 
coeff_4_0, coeff_4_1, coeff_4_2, coeff_4_3, coeff_4_4, coeff_4_5, coeff_4_6, coeff_4_7, coeff_4_8, coeff_4_9, coeff_4_10,
recip_stdev_4, 
recip_stdev_3, 
recip_stdev_2, 
recip_stdev_1, 
neg_mean_4, 
neg_mean_3, 
neg_mean_2, 
neg_mean_1,
// Outputs
x_lin, srdyo,
// Debugging Outputs
coeff_sel,
center_scale_state,
x_adc_float_x_recip_stddev,
fp2float_in_ready,
X_adc_after_center_scale,
multadd_out_1,

multadd_in1_0,
multadd_in2_0,
multadd_in3_0,
multadd_in_ready_0,
multadd_out_ready_0,
multadd_in1_1,
multadd_in2_1,
multadd_in3_1,
multadd_in_ready_1,
multadd_out_ready_1,

x_adc_smc_w,
x_adc_smc_out_ready
);

parameter WL1 = 31;
parameter WL2 = 20;	//Added by Carlos	
parameter WL3 = 19;	
parameter section_1 = 3'b001;
parameter section_2 = 3'b010;
parameter section_3 = 3'b011;
parameter section_4 = 3'b100;
parameter section_5 = 3'b101;
parameter section_6 = 3'b110;
parameter SMC_0 = 14536774;

// Mutiplyadder FSM //
parameter WAITING_FOR_SMC = 3'b000;
parameter WAITING_FOR_FIRST_MULTIPLYADD = 3'b001;
parameter WAITING_FOR_SECOND_MULTIPLYADD = 3'b010;
/*
parameter PREPARING_MULTIADDER0_INPUTS = 3'b001;
parameter WAITING_FOR_FIRST_MULTIPLYADD = 3'b010;
parameter PREPARING_MULTIADDER1_INPUTS = 3'b011;
parameter WAITING_FOR_SECOND_MULTIPLYADD = 3'b100;
*/
////////////////////////		Inputs      ///////////////////////
//System clock and reset
input         	 clk;
input         	 reset;
//ADC output
input         	srdyi;
input	[WL2:0] x_adc;
//X-value that separates the sections
input	[WL3:0] section_limit;//20-bit number
//Section 4 coefficients (x > 0, |x| > section_limit)
input	[WL1:0]  coeff_4_0, coeff_4_1, coeff_4_2, coeff_4_3, coeff_4_4, coeff_4_5, coeff_4_6, coeff_4_7, coeff_4_8, coeff_4_9, coeff_4_10;
//Section 3 coefficients (x > 0, |x| <= section_limit)
input	[WL1:0]  coeff_3_0, coeff_3_1, coeff_3_2, coeff_3_3, coeff_3_4, coeff_3_5, coeff_3_6, coeff_3_7, coeff_3_8, coeff_3_9, coeff_3_10;
//Section 2 coefficients (x <= 0, |x| <= section_limit)
input	[WL1:0]  coeff_2_0, coeff_2_1, coeff_2_2, coeff_2_3, coeff_2_4, coeff_2_5, coeff_2_6, coeff_2_7, coeff_2_8, coeff_2_9, coeff_2_10;
//Section 1 coefficients (x <= 0, |x| > section_limit)
input	[WL1:0]  coeff_1_0, coeff_1_1, coeff_1_2, coeff_1_3, coeff_1_4, coeff_1_5, coeff_1_6, coeff_1_7, coeff_1_8, coeff_1_9, coeff_1_10;
//Reciprocal standard deviation for the centered and scaled fit
input 	[WL1:0]	recip_stdev_4;
input	[WL1:0] recip_stdev_3;
input	[WL1:0] recip_stdev_2;
input	[WL1:0] recip_stdev_1;
//Negative meand for the centered and scaled fit
input	[WL1:0] neg_mean_4;
input	[WL1:0] neg_mean_3;
input	[WL1:0] neg_mean_2;
input	[WL1:0] neg_mean_1;

////////////////////////       Outputs    ////////////////////////
output  [WL2:0]  		x_lin;
output         	 		srdyo;

////////////////////////       Debugging Outputs    ////////////////////////

output  [WL1:0]	   		x_adc_float_x_recip_stddev;
output  [2:0]   	  	center_scale_state;
output          		fp2float_in_ready;

reg  	[WL1:0]  		x_lin_float;
wire  	[WL2:0]  		NLC_out_w;
reg     [2:0]    		state;
reg     [2:0]    		next_state;

//////////  Register and Wire Declarations /////////
wire 			 		x_adc_fp_in_rdy;
wire			 		x_lin_float_in_rdy;
output reg		[  2:0] coeff_sel;
reg		[WL1:0]  		recip_stdev_r;
reg		[WL1:0]  		neg_mean_r;
wire    [WL1:0]			x_i_porty;
wire	[WL1:0]			mult_out_0;	
wire	[WL1:0]	 		mult_out_1;	
output reg 	[WL1:0] 		X_adc_after_center_scale;
reg   	[WL1:0] 		multiplication_result;	

reg    	[WL2:0] 		x_i_r;

//Multiply_Adder Block0 inputs
output reg    [WL1:0]  		multadd_in1_0;
output reg    [WL1:0]  		multadd_in2_0;
output reg    [WL1:0]  		multadd_in3_0;
output reg 				multadd_in_ready_0;

//Multiply_Adder Block0 outputs
wire 	[WL1:0]		 	multadd_out_0;
output wire 			multadd_out_ready_0;
wire 	[7:0]			multadd_state_0;	
wire 					mult_out_rdy_0;
wire 					add_out_rdy_0;
wire 	[31:0]			add_out_0;

//Multiply_Adder Block1 inputs
output reg    [WL1:0]  		multadd_in1_1;
output reg    [WL1:0]  		multadd_in2_1;
output reg    [WL1:0]  		multadd_in3_1;
output reg				multadd_in_ready_1;

//Multiply_Adder Block1 outputs
output wire 	[WL1:0] 		multadd_out_1;
output wire 			multadd_out_ready_1;
wire 	[7:0]			multadd_state_1;	
wire 					mult_out_rdy_1;
wire 					add_out_rdy_1;
wire 	[31:0]			add_out_1;


//fp_to_smc_float inputs/outputs
output wire    [WL1:0]	x_adc_smc_w;
output wire 			x_adc_smc_out_ready;
wire					x_lin_fp_ready;

////////// Instantiate Modules ///////////////////////////////
Multiply_Adder Multiply_Adder_0(
// Inputs
.clk						(clk							), 
.reset						(reset							), 
.data_in_1					(multadd_in1_0					), 
.data_in_2					(multadd_in2_0					), 
.data_in_3					(multadd_in3_0					), 
.data_in_ready				(multadd_in_ready_0				),
// Outputs
.data_out					(multadd_out_0					), 
.data_out_ready				(multadd_out_ready_0			),
// Debugging Outputs 
.state						(multadd_state_0				),
.multiplier_data_out_ready	(mult_out_rdy_0					), 
.adder_data_out_ready		(add_out_rdy_0					), 
.adder_data_out				(add_out_0  					), 
.multiplier_data_out		(mult_out_0						)
);

Multiply_Adder Multiply_Adder_1(
// Inputs
.clk						(clk							), 
.reset						(reset							), 
.data_in_1					(multadd_in1_1					), 
.data_in_2					(multadd_in2_1					), 
.data_in_3					(multadd_in3_1					), 
.data_in_ready				(multadd_in_ready_1				),
// Outputs
.data_out					(multadd_out_1					), 
.data_out_ready				(multadd_out_ready_1			),
// Debugging Outputs 
.state						(multadd_state_1				),
.multiplier_data_out_ready	(mult_out_rdy_1					), 
.adder_data_out_ready		(add_out_rdy_1					), 
.adder_data_out				(add_out_1  					), 
.multiplier_data_out		(mult_out_1						)
);


fp_to_smc_float	fp_to_smc_float_0(
.clk		(   	clk	         ), 
.GlobalReset(  		reset        ), 
.x_i		(   	x_i_r        ), 
.y_o_portx	(  		x_adc_smc_w ), 
.srdyi_i	(   x_adc_fp_in_rdy  ),
.srdyo_o	(  	x_adc_smc_out_ready )
);

smc_float_to_fp	smc_float_to_fp_0(
.clk		(   	clk	         ), 
.GlobalReset(  		reset        ), 
.x_i_porty	(  	  x_i_porty	     ), 
.y_o		(      NLC_out_w     ), //This block would convert NLC floating number to fp representration.
.srdyi_i	( x_lin_float_in_rdy ),
.srdyo_o	(  x_lin_fp_ready    ) 
);



wire 				myProcessor_input_ready;
wire 	[WL1:0]		myProcessor_input_value;

wire 				myProcessor_output_ready;
wire 	[WL1:0] 	myProcessor_output_value;

reg 	[WL1:0] 	myProcessor_coeff_0;
reg 	[WL1:0] 	myProcessor_coeff_1;
reg 	[WL1:0] 	myProcessor_coeff_2;
reg 	[WL1:0] 	myProcessor_coeff_3;
reg 	[WL1:0] 	myProcessor_coeff_4;
reg 	[WL1:0] 	myProcessor_coeff_5;
reg 	[WL1:0] 	myProcessor_coeff_6;
reg 	[WL1:0] 	myProcessor_coeff_7;
reg 	[WL1:0] 	myProcessor_coeff_8;
reg 	[WL1:0] 	myProcessor_coeff_9;
reg 	[WL1:0] 	myProcessor_coeff_10;

NLC_Processor myProcessor(
.clk(clk),
.reset(reset),
.coeff_0(myProcessor_coeff_0),
.coeff_1(myProcessor_coeff_1),
.coeff_2(myProcessor_coeff_2),
.coeff_3(myProcessor_coeff_3),
.coeff_4(myProcessor_coeff_4),
.coeff_5(myProcessor_coeff_5),
.coeff_6(myProcessor_coeff_6),
.coeff_7(myProcessor_coeff_7),
.coeff_8(myProcessor_coeff_8),
.coeff_9(myProcessor_coeff_9),
.coeff_10(myProcessor_coeff_10),
.x_centered_scaled(myProcessor_input_value),
.x_output(myProcessor_output_value),
.x_centered_scaled_in_ready(myProcessor_input_ready),
.x_output_ready(myProcessor_output_ready)
);

//////////////////////////////////////////////////////////////////////////////////////////////

assign x_adc_fp_in_rdy = srdyi;
assign fp2float_in_ready = x_adc_fp_in_rdy;
//assign multadd_in_ready_0 = x_adc_smc_out_ready;
//assign multadd_in_ready_1 = multadd_out_ready_0;/////////THIS WAS THE BUG
assign myProcessor_input_value = multadd_out_1;
assign myProcessor_input_ready = multadd_out_ready_1;
assign x_lin_float_in_rdy = myProcessor_output_ready;
assign x_i_porty = myProcessor_output_value;
assign x_adc_float_x_recip_stddev = multiplication_result;
assign x_lin = NLC_out_w;
assign srdyo = x_lin_fp_ready;
assign center_scale_state = state;

////////////////////////  Behavioral Model  //////////////////////////////////////////////////

reg delay0_1_reg;
reg delay0_2_reg;
reg delay0_3_reg;

reg delay1_1_reg;
reg delay1_2_reg;
reg delay1_3_reg;

always @(*)
begin
////////////////////////// Identifying sections for coefficient selection //////////////////////////////////////////////
//21-bit 2's comp.    
//if (SECTION_NUMBER == 4) begin
//                      (x<=0)                    && (    |x|     > section_limit)
	if(((x_adc[WL2:19] == 1)||(x_adc[19:0] == 0)) && (x_adc[19:0] > section_limit)) begin
		coeff_sel = section_1;
//                                 (x<=0)                  && (    |x|     <= section_limit)
	end else if(((x_adc[WL2:19] == 1)||(x_adc[19:0] == 0)) && (x_adc[19:0] <= section_limit)) begin
		coeff_sel = section_2;
//                                  (x>0)                 && (     |x|    <= section_limit)	
	end else if(((x_adc[WL2:19] == 0)&&(x_adc[19:0] > 0)) && (x_adc[19:0] <= section_limit)) begin
		coeff_sel = section_3;
//                                 (x>0)                  && (    |x|     > section_limit)
	end else if(((x_adc[WL2:19] == 0)&&(x_adc[19:0] > 0)) && (x_adc[19:0] > section_limit)) begin
		coeff_sel = section_4;
		
	end else begin
		coeff_sel = 3'b000;
	end

end


////////////////////////////////////////////////////////////////
//                   Registers
////////////////////////////////////////////////////////////////
always@(posedge clk or posedge reset)
begin
    if (reset) begin
		delay0_1_reg = 0;
		delay0_2_reg = 0;
		delay1_1_reg = 0;
		delay1_2_reg = 0;
		multadd_in_ready_0 = 0;
		multadd_in_ready_1 = 0;
		
		multadd_in1_0 = 0;
		multadd_in2_0 = 0;
		multadd_in3_0 = 0;

		multadd_in1_1 = 0;
		multadd_in2_1 = 0;
		multadd_in3_1 = 0;

		multiplication_result = 0;
		X_adc_after_center_scale = 0;
		
		myProcessor_coeff_0					= 32'b0;
		myProcessor_coeff_1 				= 32'b0;
		myProcessor_coeff_2 				= 32'b0;
		myProcessor_coeff_3 				= 32'b0;
		myProcessor_coeff_4 				= 32'b0;
		myProcessor_coeff_5 				= 32'b0;
		myProcessor_coeff_6 				= 32'b0;
		myProcessor_coeff_7 				= 32'b0;
		myProcessor_coeff_8 				= 32'b0;
		myProcessor_coeff_9 				= 32'b0;
		myProcessor_coeff_10				= 32'b0;
		neg_mean_r 							= 32'b0;
		recip_stdev_r 						= 32'b0;
    end
	else begin
	
		// 2 Cycle Delay for 1st Multiply_Adder Block
		if (x_adc_smc_out_ready == 1) begin
			delay0_1_reg = 1;
		end
		else begin
			delay0_1_reg = 0;
		end		
		
		if (delay0_1_reg == 1) begin
			delay0_2_reg = 1;
			delay0_1_reg = 0;
		end
		else begin
			delay0_2_reg = 0;
		end
		
		if (delay0_2_reg == 1) begin
			delay0_3_reg = 1;
			delay0_2_reg = 0;
		end
		else begin
			delay0_3_reg = 0;
		end
		
		if (delay0_3_reg == 1) begin
			multadd_in_ready_0 = delay0_3_reg;
			delay0_3_reg = 0;
		end
		else begin
			multadd_in_ready_0 = delay0_3_reg;
		end
		
		
		
		// 2 Cycle Delay for 2nd Multiply_Adder Block
		if (multadd_out_ready_0 == 1) begin
			delay1_1_reg = 1;
		end
		else begin
			delay1_1_reg = 0;
		end
		
		if (delay1_1_reg == 1) begin
			delay1_2_reg = 1;
			delay1_1_reg = 0;
		end
		else begin
			delay1_2_reg = 0;
		end
		
		if (delay1_2_reg == 1) begin
			delay1_3_reg = 1;
			delay1_2_reg = 0;
		end
		else begin
			delay1_3_reg = 0;
		end
		
		if (delay1_3_reg == 1) begin
			multadd_in_ready_1 = delay1_3_reg;
			delay1_3_reg = 0;
		end
		else begin
			multadd_in_ready_1 = delay1_3_reg;
		end
		
		
		
		// whatever is coming in fron the x_adc input, leave it at the register
		// to get converted to SMC. when input is ready, then SMC starts working
		x_i_r  = x_adc;
		
//////////////////////////////////  Assigning parameters by section    ///////////////////////////////////////////////////

		case (coeff_sel)
			section_1:
			begin
				myProcessor_coeff_0 		= coeff_1_0;
				myProcessor_coeff_1 		= coeff_1_1;
				myProcessor_coeff_2 		= coeff_1_2;
				myProcessor_coeff_3 		= coeff_1_3;
				myProcessor_coeff_4 		= coeff_1_4;
				myProcessor_coeff_5 		= coeff_1_5;
				myProcessor_coeff_6 		= coeff_1_6;
				myProcessor_coeff_7 		= coeff_1_7;
				myProcessor_coeff_8 		= coeff_1_8;
				myProcessor_coeff_9			= coeff_1_9;
				myProcessor_coeff_10 	= coeff_1_10;
				
				neg_mean_r		= neg_mean_1;
				recip_stdev_r 	= recip_stdev_1;
			end
			
			section_2:
			begin
				myProcessor_coeff_0			= coeff_2_0;
				myProcessor_coeff_1 		= coeff_2_1;
				myProcessor_coeff_2 		= coeff_2_2;
				myProcessor_coeff_3 		= coeff_2_3;
				myProcessor_coeff_4 		= coeff_2_4;
				myProcessor_coeff_5 		= coeff_2_5;
				myProcessor_coeff_6 		= coeff_2_6;
				myProcessor_coeff_7 		= coeff_2_7;
				myProcessor_coeff_8			= coeff_2_8;
				myProcessor_coeff_9 		= coeff_2_9;
				myProcessor_coeff_10	 	= coeff_2_10;
				neg_mean_r 		= neg_mean_2;
				recip_stdev_r 	= recip_stdev_2;
			end
			
			section_3:
			begin
				myProcessor_coeff_0 		= coeff_3_0;
				myProcessor_coeff_1 		= coeff_3_1;
				myProcessor_coeff_2			= coeff_3_2;
				myProcessor_coeff_3 		= coeff_3_3;
				myProcessor_coeff_4 		= coeff_3_4;
				myProcessor_coeff_5 		= coeff_3_5;
				myProcessor_coeff_6 		= coeff_3_6;
				myProcessor_coeff_7 		= coeff_3_7;
				myProcessor_coeff_8 		= coeff_3_8;
				myProcessor_coeff_9 		= coeff_3_9;
				myProcessor_coeff_10 	= coeff_3_10;
				neg_mean_r 		= neg_mean_3;
				recip_stdev_r 	= recip_stdev_3;
			end
			
			section_4:
			begin
				myProcessor_coeff_0 		= coeff_4_0;
				myProcessor_coeff_1 		= coeff_4_1;
				myProcessor_coeff_2 		= coeff_4_2;
				myProcessor_coeff_3 		= coeff_4_3;
				myProcessor_coeff_4			= coeff_4_4;
				myProcessor_coeff_5 		= coeff_4_5;
				myProcessor_coeff_6 		= coeff_4_6;
				myProcessor_coeff_7			= coeff_4_7;
				myProcessor_coeff_8 		= coeff_4_8;
				myProcessor_coeff_9			= coeff_4_9;
				myProcessor_coeff_10 		= coeff_4_10;
				neg_mean_r 		= neg_mean_4;
				recip_stdev_r 	= recip_stdev_4;
			end
			
			default:
			begin
				myProcessor_coeff_0 		= 0;
				myProcessor_coeff_1 		= 0;
				myProcessor_coeff_2			= 0;
				myProcessor_coeff_3			= 0;
				myProcessor_coeff_4			= 0;
				myProcessor_coeff_5			= 0;
				myProcessor_coeff_6			= 0;
				myProcessor_coeff_7			= 0;
				myProcessor_coeff_8			= 0;
				myProcessor_coeff_9			= 0;
				myProcessor_coeff_10 		= 0;
				
				neg_mean_r 		= 32'b0;
				recip_stdev_r 	= 32'b0;
			end
		endcase

		// FSM for center and scale function
		case (state)
			WAITING_FOR_SMC:
			begin		
				// do X_ADC * (1/STD) + 0
				multadd_in1_0 = x_adc_smc_w;
				multadd_in2_0 = recip_stdev_r;
				multadd_in3_0 = SMC_0;

				if(x_adc_smc_out_ready == 1'b1) begin
					next_state = WAITING_FOR_FIRST_MULTIPLYADD;
				end
				else begin
					//multadd_in1_0 = multadd_in1_0;
					//multadd_in2_0 = multadd_in2_0;
					//multadd_in3_0 = 14536774;					
					next_state = WAITING_FOR_SMC;
				end
			end
			/*
			PREPARING_MULTIADDER0_INPUTS:
			begin
				next_state = WAITING_FOR_FIRST_MULTIPLYADD;
			end
			*/
			WAITING_FOR_FIRST_MULTIPLYADD:
			begin
				// do [ (-MEAN) * (1/STD) ] + X_ADC * (1/STD)
				multadd_in1_1 = neg_mean_r;
				multadd_in2_1 = recip_stdev_r;
				multadd_in3_1 = multadd_out_0;
				multiplication_result = multadd_out_0;
				if(multadd_out_ready_0 == 1'b1) begin				
					next_state = WAITING_FOR_SECOND_MULTIPLYADD;
				end
				else begin
					//multadd_in1_1 = neg_mean_r;
					//multadd_in2_1 = recip_stdev_r;
					//multadd_in3_1 = multadd_out_0;
					//multiplication_result = multadd_out_0;
					next_state = WAITING_FOR_FIRST_MULTIPLYADD;
				end
			end
			/*
			PREPARING_MULTIADDER1_INPUTS:
			begin
				next_state = WAITING_FOR_SECOND_MULTIPLYADD;
			end
			*/
			WAITING_FOR_SECOND_MULTIPLYADD:
			begin
				
				if(multadd_out_ready_1 == 1'b1) begin
					X_adc_after_center_scale = multadd_out_1;
					next_state = WAITING_FOR_SMC;
				end
				else begin
					next_state = WAITING_FOR_SECOND_MULTIPLYADD;
				end
			end
			default:
			begin
				next_state = WAITING_FOR_SMC;
			end
		endcase	
		
		
		
		
		
		
		state = next_state;
  end
end

endmodule