module Control_FSM(
// Inputs
clk, reset, adc_input_ready, multiplyadder_out_ready,
// Output
multiplyadder_in_ready, coefficent_select, x_output_ready,
// Debugging Outputs
state, state_next
);

// Inputs
input clk, reset, adc_input_ready, multiplyadder_out_ready;
// Output
output reg 		 	multiplyadder_in_ready;
output reg [3:0] 	coefficent_select;
output reg 			x_output_ready;
// Debugging Outputs
output reg [4:0] 	state, state_next;

localparam STATE_DEFAULT = 0;
localparam STATE_INPUT_ACCEPTED = 1;
localparam STATE_ITER_1 = 2;
localparam STATE_ITER_2 = 3;
localparam STATE_ITER_3 = 4;
localparam STATE_ITER_4 = 5;
localparam STATE_ITER_5 = 6;
localparam STATE_ITER_6 = 7;
localparam STATE_ITER_7 = 8;
localparam STATE_ITER_8 = 9;
localparam STATE_ITER_9 = 10;
localparam STATE_ITER_10 = 11;
localparam STATE_OUTPUT_READY = 12;

always @(posedge clk)
begin
	if (reset) begin
		coefficent_select = 10;
		multiplyadder_in_ready = 0;
		x_output_ready = 0;
		state = STATE_DEFAULT;
		state_next = STATE_DEFAULT;
	end	
	else begin
		
		// Determining the STATE_NEXT
		case (state)
			STATE_DEFAULT :
			begin
				if (adc_input_ready == 1) begin
					$display ("Control_FSM RECIVED A CENTERED+SCALED INPUT FROM THE ADC AT TIME %d", $time);
					//$display ("TRANSITION TO STATE_INPUT_ACCEPTED");
					state_next = STATE_INPUT_ACCEPTED;
				end
			end
			STATE_INPUT_ACCEPTED :
			begin
				//$display ("AM IN STATE_INPUT_ACCEPTED, COEFFICENT SELECT IS BEING HELD AT %d, should be 10", coefficent_select);
				//$display ("WAIT FOR MULTIPLYADDER TO DO THE COMPUTATION ITER1 = {X[N]*0 + a10}");
				if (multiplyadder_out_ready == 1) begin
					state_next = STATE_ITER_1;
				end
			end
			STATE_ITER_1 :
			begin
				//$display ("AM IN STATE_ITER_1, COEFFICENT SELECT IS BEING HELD AT %d, should be 9", coefficent_select);
				//$display ("WAIT FOR MULTIPLYADDER TO DO THE COMPUTATION {X[N]*ITER1 + a9}");
				if (multiplyadder_out_ready == 1) begin
					state_next = STATE_ITER_2;
				end		
			end
			STATE_ITER_2 :
			begin
				//$display ("AM IN STATE_ITER_2, COEFFICENT SELECT IS BEING HELD AT %d, should be 8", coefficent_select);
				//$display ("WAIT FOR MULTIPLYADDER TO DO THE COMPUTATION {X[N]*ITER2 + a8}");
				if (multiplyadder_out_ready == 1) begin
					state_next = STATE_ITER_3;
				end
			end
			STATE_ITER_3 :
			begin
				//$display ("AM IN STATE_ITER_3, COEFFICENT SELECT IS BEING HELD AT %d, should be 7", coefficent_select);
				//$display ("WAIT FOR MULTIPLYADDER TO DO THE COMPUTATION {X[N]*ITER3 + a7}");
				if (multiplyadder_out_ready == 1) begin
					state_next = STATE_ITER_4;
				end
			end
			STATE_ITER_4 :
			begin
				//$display ("AM IN STATE_ITER_4, COEFFICENT SELECT IS BEING HELD AT %d, should be 6", coefficent_select);
				//$display ("WAIT FOR MULTIPLYADDER TO DO THE COMPUTATION {X[N]*ITER4 + a6}");
				if (multiplyadder_out_ready == 1) begin
					state_next = STATE_ITER_5;
				end
			end
			STATE_ITER_5 :
			begin
				//$display ("AM IN STATE_ITER_5, COEFFICENT SELECT IS BEING HELD AT %d, should be 5", coefficent_select);
				//$display ("WAIT FOR MULTIPLYADDER TO DO THE COMPUTATION {X[N]*ITER5 + a5}");
				if (multiplyadder_out_ready == 1) begin
					state_next = STATE_ITER_6;
				end
			end
			STATE_ITER_6 :
			begin
				//$display ("AM IN STATE_ITER_6, COEFFICENT SELECT IS BEING HELD AT %d, should be 4", coefficent_select);
				//$display ("WAIT FOR MULTIPLYADDER TO DO THE COMPUTATION {X[N]*ITER6 + a4}");
				if (multiplyadder_out_ready == 1) begin
					state_next = STATE_ITER_7;
				end
			end
			STATE_ITER_7 :
			begin
				//$display ("AM IN STATE_ITER_7, COEFFICENT SELECT IS BEING HELD AT %d, should be 3", coefficent_select);
				//$display ("WAIT FOR MULTIPLYADDER TO DO THE COMPUTATION {X[N]*ITER7 + a3}");
				if (multiplyadder_out_ready == 1) begin
					state_next = STATE_ITER_8;
				end
			end
			STATE_ITER_8 :
			begin
				//$display ("AM IN STATE_ITER_8, COEFFICENT SELECT IS BEING HELD AT %d, should be 2", coefficent_select);
				//$display ("WAIT FOR MULTIPLYADDER TO DO THE COMPUTATION {X[N]*ITER8 + a2}");
				if (multiplyadder_out_ready == 1) begin
					state_next = STATE_ITER_9;
				end
			end
			STATE_ITER_9 :
			begin
				//$display ("AM IN STATE_ITER_9, COEFFICENT SELECT IS BEING HELD AT %d, should be 1", coefficent_select);
				//$display ("WAIT FOR MULTIPLYADDER TO DO THE COMPUTATION {X[N]*ITER9 + a1}");
				if (multiplyadder_out_ready == 1) begin
					state_next = STATE_ITER_10;
				end
			end
			STATE_ITER_10 :
			begin
				//$display ("AM IN STATE_ITER_10, COEFFICENT SELECT IS BEING HELD AT %d, should be 0", coefficent_select);
				//$display ("WAIT FOR MULTIPLYADDER TO DO THE COMPUTATION {X[N]*ITER10 + a0}");
				if (multiplyadder_out_ready == 1) begin
					state_next = STATE_OUTPUT_READY;
				end		
			end
			STATE_OUTPUT_READY :
			begin
				$display ("Control_FSM THINKS WE ARE DONE AT TIME %d", $time);
				state_next = STATE_DEFAULT;
			end
			
			default : state_next = 2'h00; // this should never happen!
		endcase
		
		// Determining the Output Ports
		if ( (state > 0) &&  (state < 12) ) begin
			coefficent_select = 11 - state;
		end
		else begin
			coefficent_select = 10;
		end
		if ( (state_next != STATE_DEFAULT) && (state_next != STATE_OUTPUT_READY)) begin
			if (state_next != state) begin// && state_next != (0 || 12)) begin
				multiplyadder_in_ready = 1;
			end
			else begin
				multiplyadder_in_ready = 0;
			end
		end
		else begin
			multiplyadder_in_ready = 0;
		end
		x_output_ready = (state == STATE_OUTPUT_READY);
		
		state = state_next;
	end
end
endmodule