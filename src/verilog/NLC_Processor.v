////////////////////////////////////////////////////////////////
// EEM216A Final Project: ADC Non-linearity Correction Engine
// Module: NLC.v
//
//////////////////////////////////////////////////////////////
`timescale 1ns/10ps

module NLC_Processor(
// Inputs
clk, reset,
coeff_0,
coeff_1,
coeff_2,
coeff_3,
coeff_4,
coeff_5,
coeff_6,
coeff_7,
coeff_8,
coeff_9,
coeff_10,
x_centered_scaled, 
x_centered_scaled_in_ready,

// Outputs
x_output,
x_output_ready,
Multiply_Adder_data_out, coefficent_select,
Control_FSM_State, Control_FSM_State_Next,
Multiply_Adder_State, Multiply_Adder_out_ready,
multiplier_data_out_ready, adder_data_out_ready,
adder_data_out, multiplier_data_out
);

parameter WL = 32;
parameter WL1 = 31;

//////////		Inputs      ///////////////////////
//System clock and reset
input         	 			clk;
input         	 			reset;

//ADC output, centered and scaled
input         	 			x_centered_scaled_in_ready;
input			[WL1:0]		x_centered_scaled;

//Coefficients
input 			[WL1:0] 	coeff_0;
input 			[WL1:0] 	coeff_1;
input 			[WL1:0] 	coeff_2;
input 			[WL1:0] 	coeff_3;
input 			[WL1:0] 	coeff_4;
input 			[WL1:0] 	coeff_5;
input 			[WL1:0] 	coeff_6;
input 			[WL1:0] 	coeff_7;
input 			[WL1:0]		coeff_8;
input 			[WL1:0] 	coeff_9;
input 			[WL1:0] 	coeff_10;

///////////       Output    ////////////////////////
output wire	 	[WL1:0]  	x_output;
output wire        	 		x_output_ready;

/////
reg 			[WL1:0]	 	Multiply_Adder_data_in_1, Multiply_Adder_data_in_2, Multiply_Adder_data_in_3;
wire 						Multiply_Adder_in_ready;
output wire		[WL1:0]  	Multiply_Adder_data_out;
output wire 				Multiply_Adder_out_ready;
output wire 	[7:0]  		Multiply_Adder_State;
output wire 				multiplier_data_out_ready, adder_data_out_ready;
output wire 	[31:0] 		multiplier_data_out, adder_data_out;

Multiply_Adder	DUT(
				// Inputs
				.clk(clk), .reset(reset), .data_in_1(Multiply_Adder_data_in_1), .data_in_2(Multiply_Adder_data_in_2),
				.data_in_3(Multiply_Adder_data_in_3), .data_in_ready(Multiply_Adder_in_ready),
				// Outputs
				.data_out(Multiply_Adder_data_out), .data_out_ready(Multiply_Adder_out_ready),
				.state(Multiply_Adder_State), 
				.multiplier_data_out_ready(multiplier_data_out_ready), .multiplier_data_out(multiplier_data_out),
				.adder_data_out_ready(adder_data_out_ready), .adder_data_out(adder_data_out)
				);

/////
output wire 	[3:0]		coefficent_select;
output wire 	[4:0]  		Control_FSM_State, Control_FSM_State_Next;

Control_FSM		my_fsm(
.clk						(  	clk	  						), 
.reset						(	reset       				), 
.adc_input_ready			(	x_centered_scaled_in_ready	),
.Multiply_Adder_out_ready	(	Multiply_Adder_out_ready		),
.Multiply_Adder_in_ready		(	Multiply_Adder_in_ready 		),
.coefficent_select			(  	coefficent_select			), 
.x_output_ready				(  	x_output_ready        		),
.state						( 	Control_FSM_State			),
.state_next					( 	Control_FSM_State_Next		)
);

assign x_output = Multiply_Adder_data_out;

always @(posedge clk)
begin
	/*
	if (x_output_ready == 1) begin
		$display ("\nCompleted an output, value is: %d\n", x_output);
	end
	*/
	if (reset == 1 || x_centered_scaled_in_ready == 1) begin
		Multiply_Adder_data_in_1 = x_centered_scaled;
		Multiply_Adder_data_in_2 = 14536774;
		Multiply_Adder_data_in_3 = coeff_10;
	end
	else begin
		Multiply_Adder_data_in_1 = x_centered_scaled;
		if (Multiply_Adder_out_ready == 1) begin
			Multiply_Adder_data_in_2 = Multiply_Adder_data_out;
		end
		else begin
			case (coefficent_select)
				10 :
				begin
					Multiply_Adder_data_in_3 = coeff_10;
				end
				9 :
				begin
					Multiply_Adder_data_in_3 = coeff_9;
				end
				8 :
				begin
					Multiply_Adder_data_in_3 = coeff_8;
				end
				7 :
				begin
					Multiply_Adder_data_in_3 = coeff_7;
				end
				6 :
				begin
					Multiply_Adder_data_in_3 = coeff_6;
				end
				5 :
				begin
					Multiply_Adder_data_in_3 = coeff_5;
				end
				4 :
				begin
					Multiply_Adder_data_in_3 = coeff_4;
				end
				3 :
				begin
					Multiply_Adder_data_in_3 = coeff_3;
				end
				2 :
				begin
					Multiply_Adder_data_in_3 = coeff_2;
				end
				1 :
				begin
					Multiply_Adder_data_in_3 = coeff_1;
				end
				0 :
				begin
					Multiply_Adder_data_in_3 = coeff_0;
				end
				default :
				begin
					//$display ("SHOULD NOT BE IN DEFAULT CASE, SAME AS 10 THO");
					Multiply_Adder_data_in_2 = 14536774; // SMC 0
					Multiply_Adder_data_in_3 = coeff_10;
				end
			endcase
		
		end
	end
end

endmodule