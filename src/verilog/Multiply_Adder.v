module Multiply_Adder(
// Inputs
clk, reset, data_in_1, data_in_2, data_in_3, data_in_ready,
// Outputs
data_out, data_out_ready,
// Debugging Outputs
state, multiplier_data_out_ready, adder_data_out_ready, adder_data_out, multiplier_data_out
);

input clk, reset, data_in_ready;
input [31:0] data_in_1, data_in_2, data_in_3;
output reg [31:0] data_out;
output reg data_out_ready;
output wire multiplier_data_out_ready, adder_data_out_ready;

output wire [31:0] adder_data_out, multiplier_data_out;
output wire [7:0] state;

localparam STATE_DATA_IN_WAITING = 0;
localparam STATE_MULTIPLY_DATA_READY = 1;
localparam STATE_DATA_READY_ADDER = 2;
localparam STATE_DATA_OUT_READY = 3;

/////
reg [31:0] data_in_1_reg;
reg [31:0] data_in_2_reg;
reg [31:0] data_in_3_reg;

reg multiplier_data_in_ready;
reg adder_data_in_ready;

reg [31:0] multiplier_data_in_1, multiplier_data_in_2;
reg [31:0] adder_data_in_1, adder_data_in_2;

/////
reg [10:0] counter1;


////////// Instantiate Modules ////////////
smc_float_multiplier mult0(
.clk		(		clk		 					),
.GlobalReset(		reset		 				),
.x_i_porty	(		multiplier_data_in_1		),
.y_i_porty	(		multiplier_data_in_2		),
.z_o_portx	(	  	multiplier_data_out			),
.srdyi_i	(		multiplier_data_in_ready	),
.srdyo_o	(		multiplier_data_out_ready	)
);

smc_float_adder adder0(
.clk		(		clk		 					),
.GlobalReset(		reset		 				),
.x_i_porty	(		adder_data_in_1				),
.y_i_porty	(		adder_data_in_2				),
.z_o_portx	(	  	adder_data_out 				),
.srdyi_i	(		adder_data_in_ready			),
.srdyo_o	(		adder_data_out_ready		)
);

///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
///////////////													///////////////////
///////////////				Counter Based Solution				///////////////////
///////////////													///////////////////
///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////

assign state = counter1;

always @(posedge clk)
begin
	//$display ("Begin posedge clk");
	//$display ("counter1 = %d", counter1);
	//$display ("reset = %d", reset);
	//$display ("data_in_ready = %d", data_in_ready);
	if (reset) begin
		counter1 = 0;
		data_out = 0;
		data_out_ready = 0;
	end
	else begin
		// After all other processing on that clock cycle, increment counter
		// if the counter is being used. Other processing will set counter
		// to 0 if the counter is off, or when it's too high.
		if (counter1 > 0) begin
			counter1 = counter1 + 1;
		end
		
		// this section makes the signals into burst signals only high for one clock cycle
		if (multiplier_data_in_ready == 1) begin
			multiplier_data_in_ready = 0;
		end
		if (adder_data_in_ready == 1) begin
			adder_data_in_ready = 0;
		end
		if (data_out_ready == 1) begin
			//data_out_ready should only be high for one clock period, unless we're using in pipelined fashion
			data_out_ready = 0;
		end
		
		if (data_in_ready == 1) begin
			//$display ("At time %d, we store the value from the wires into the registers", $time);
			data_in_1_reg = data_in_1;
			data_in_2_reg = data_in_2;
			data_in_3_reg = data_in_3;
			// connect data_in to the multiplier
			multiplier_data_in_1 = data_in_1;
			multiplier_data_in_2 = data_in_2;
			// $display ("multiplier_data_in_1 = %d", multiplier_data_in_1);
			// $display ("multiplier_data_in_2 = %d", multiplier_data_in_2);
			// set multiplier_data_in_ready = 1
			multiplier_data_in_ready = 1;		

			if (counter1 == 0) begin
				counter1 = 1;
			end		
		end
		
		if (counter1 == 1) begin
			$display ("At time %d, Multiply_Adder will compute with:", $time);			
			$display ("data_in_1_reg = %d", data_in_1_reg);
			$display ("*");
			$display ("data_in_2_reg = %d", data_in_2_reg);
			$display ("+");
			$display ("data_in_3_reg = %d", data_in_3_reg);
			
		end
		
		if (multiplier_data_out_ready == 1) begin
			// connect multiplier output to adder input
			adder_data_in_1 = multiplier_data_out;
			adder_data_in_2 = data_in_3_reg;
			// $display ("adder_data_in_1 = %d", adder_data_in_1);
			// $display ("adder_data_in_2 = %d", adder_data_in_2);
			// set adder_data_ready = 1
			adder_data_in_ready = 1;
		end
		if (adder_data_out_ready == 1) begin
			// connect adder output to the module output
			data_out = adder_data_out;
			// set data_out_ready = 1
			data_out_ready = 1;
			// reset counter1 for next batch of data
			counter1 = 0;
			$display ("At time %d, Multiply_Adder result: %d", $time, adder_data_out);			
		end
	end
	

end
endmodule