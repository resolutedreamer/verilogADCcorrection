
`timescale 1ns/1ns
module clock_gen(clk, rst); 
  parameter cperiod = 20;
  parameter rperiod = 100;
  parameter cperiodDiv = cperiod;
  output reg clk;
  output reg rst;

  wire [63 : 0] clockDivCounter;
  assign clockDivCounter = cperiod * cperiodDiv / 2;
  initial begin
    clk = 0;
    rst = 1;
    # (cperiod/2);  
    clk= 1;
    # (cperiod/2);  
    clk= 0;
    # (cperiod/2);  
    clk= 1;
    #(rperiod-(3*cperiod/2));  
    rst = 0;
    forever begin
    # clockDivCounter; clk = ~clk;
    end
  end
endmodule
//------------------------------------------
module clocks(clk,rst);
  parameter cperiod = 20;
  parameter rperiod = 100;
  output clk;
  output rst;
wire clk_loc, rst_loc;
  assign rst = rst_loc;
  clock_gen #(.cperiod(cperiod), .rperiod(rperiod), .cperiodDiv(1))
  cgen (.clk(clk), .rst(rst_loc)); 
endmodule
//------------------------------------------------------
module test_NLC_4sec_10th_order_32ch_v0;
integer logFile;
 integer select_section_coefficients_stdev_4_portyFile; 
 integer select_section_coefficients_stdev_3_portyFile; 
 integer select_section_coefficients_stdev_2_portyFile; 
 integer select_section_coefficients_stdev_1_portyFile; 
 integer select_section_coefficients_mean_4_portyFile; 
 integer select_section_coefficients_mean_3_portyFile; 
 integer select_section_coefficients_mean_2_portyFile; 
 integer select_section_coefficients_mean_1_portyFile; 
 integer select_section_coefficients_coeff_4_9_portyFile; 
 integer select_section_coefficients_coeff_4_8_portyFile; 
 integer select_section_coefficients_coeff_4_7_portyFile; 
 integer select_section_coefficients_coeff_4_6_portyFile; 
 integer select_section_coefficients_coeff_4_5_portyFile; 
 integer select_section_coefficients_coeff_4_4_portyFile; 
 integer select_section_coefficients_coeff_4_3_portyFile; 
 integer select_section_coefficients_coeff_4_2_portyFile; 
 integer select_section_coefficients_coeff_4_10_portyFile; 
 integer select_section_coefficients_coeff_4_1_portyFile; 
 integer select_section_coefficients_coeff_4_0_portyFile; 
 integer select_section_coefficients_coeff_3_9_portyFile; 
 integer select_section_coefficients_coeff_3_8_portyFile; 
 integer select_section_coefficients_coeff_3_7_portyFile; 
 integer select_section_coefficients_coeff_3_6_portyFile; 
 integer select_section_coefficients_coeff_3_5_portyFile; 
 integer select_section_coefficients_coeff_3_4_portyFile; 
 integer select_section_coefficients_coeff_3_3_portyFile; 
 integer select_section_coefficients_coeff_3_2_portyFile; 
 integer select_section_coefficients_coeff_3_10_portyFile; 
 integer select_section_coefficients_coeff_3_1_portyFile; 
 integer select_section_coefficients_coeff_3_0_portyFile; 
 integer select_section_coefficients_coeff_2_9_portyFile; 
 integer select_section_coefficients_coeff_2_8_portyFile; 
 integer select_section_coefficients_coeff_2_7_portyFile; 
 integer select_section_coefficients_coeff_2_6_portyFile; 
 integer select_section_coefficients_coeff_2_5_portyFile; 
 integer select_section_coefficients_coeff_2_4_portyFile; 
 integer select_section_coefficients_coeff_2_3_portyFile; 
 integer select_section_coefficients_coeff_2_2_portyFile; 
 integer select_section_coefficients_coeff_2_10_portyFile; 
 integer select_section_coefficients_coeff_2_1_portyFile; 
 integer select_section_coefficients_coeff_2_0_portyFile; 
 integer select_section_coefficients_coeff_1_9_portyFile; 
 integer select_section_coefficients_coeff_1_8_portyFile; 
 integer select_section_coefficients_coeff_1_7_portyFile; 
 integer select_section_coefficients_coeff_1_6_portyFile; 
 integer select_section_coefficients_coeff_1_5_portyFile; 
 integer select_section_coefficients_coeff_1_4_portyFile; 
 integer select_section_coefficients_coeff_1_3_portyFile; 
 integer select_section_coefficients_coeff_1_2_portyFile; 
 integer select_section_coefficients_coeff_1_10_portyFile; 
 integer select_section_coefficients_coeff_1_1_portyFile; 
 integer select_section_coefficients_coeff_1_0_portyFile; 
 integer x_linRefFile;
 
 integer ch31_x_linOutFile; 
 integer ch30_x_linOutFile; 
 integer ch29_x_linOutFile; 
 integer ch28_x_linOutFile; 
 integer ch27_x_linOutFile; 
 integer ch26_x_linOutFile; 
 integer ch25_x_linOutFile; 
 integer ch24_x_linOutFile; 
 integer ch23_x_linOutFile; 
 integer ch22_x_linOutFile; 
 integer ch21_x_linOutFile; 
 integer ch20_x_linOutFile; 
 integer ch19_x_linOutFile; 
 integer ch18_x_linOutFile; 
 integer ch17_x_linOutFile; 
 integer ch16_x_linOutFile; 
 integer ch15_x_linOutFile; 
 integer ch14_x_linOutFile; 
 integer ch13_x_linOutFile; 
 integer ch12_x_linOutFile; 
 integer ch11_x_linOutFile; 
 integer ch10_x_linOutFile; 
 integer ch9_x_linOutFile; 
 integer ch8_x_linOutFile; 
 integer ch7_x_linOutFile; 
 integer ch6_x_linOutFile; 
 integer ch5_x_linOutFile; 
 integer ch4_x_linOutFile; 
 integer ch3_x_linOutFile; 
 integer ch2_x_linOutFile; 
 integer ch1_x_linOutFile; 
 integer ch0_x_linOutFile; 

 integer srdyoOutFile; 

 integer x_adcFile; 
 integer srdyoRefFile;
 integer srdyiFile; 
 integer section_limitFile; 

 initial begin
  logFile = $fopen("simlog.txt","wb");
  if (logFile ==0)
  begin
      $display("Error at creating log file");
      $finish;
    end
  select_section_coefficients_stdev_4_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_stdev_4_porty.dat","rb");
  if (select_section_coefficients_stdev_4_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_stdev_4_porty.dat");
      $finish;
    end
  select_section_coefficients_stdev_3_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_stdev_3_porty.dat","rb");
  if (select_section_coefficients_stdev_3_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_stdev_3_porty.dat");
      $finish;
    end
  select_section_coefficients_stdev_2_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_stdev_2_porty.dat","rb");
  if (select_section_coefficients_stdev_2_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_stdev_2_porty.dat");
      $finish;
    end
  select_section_coefficients_stdev_1_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_stdev_1_porty.dat","rb");
  if (select_section_coefficients_stdev_1_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_stdev_1_porty.dat");
      $finish;
    end
  select_section_coefficients_mean_4_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_mean_4_porty.dat","rb");
  if (select_section_coefficients_mean_4_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_mean_4_porty.dat");
      $finish;
    end
  select_section_coefficients_mean_3_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_mean_3_porty.dat","rb");
  if (select_section_coefficients_mean_3_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_mean_3_porty.dat");
      $finish;
    end
  select_section_coefficients_mean_2_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_mean_2_porty.dat","rb");
  if (select_section_coefficients_mean_2_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_mean_2_porty.dat");
      $finish;
    end
  select_section_coefficients_mean_1_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_mean_1_porty.dat","rb");
  if (select_section_coefficients_mean_1_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_mean_1_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_4_9_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_9_porty.dat","rb");
  if (select_section_coefficients_coeff_4_9_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_9_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_4_8_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_8_porty.dat","rb");
  if (select_section_coefficients_coeff_4_8_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_8_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_4_7_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_7_porty.dat","rb");
  if (select_section_coefficients_coeff_4_7_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_7_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_4_6_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_6_porty.dat","rb");
  if (select_section_coefficients_coeff_4_6_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_6_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_4_5_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_5_porty.dat","rb");
  if (select_section_coefficients_coeff_4_5_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_5_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_4_4_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_4_porty.dat","rb");
  if (select_section_coefficients_coeff_4_4_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_4_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_4_3_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_3_porty.dat","rb");
  if (select_section_coefficients_coeff_4_3_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_3_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_4_2_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_2_porty.dat","rb");
  if (select_section_coefficients_coeff_4_2_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_2_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_4_10_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_10_porty.dat","rb");
  if (select_section_coefficients_coeff_4_10_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_10_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_4_1_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_1_porty.dat","rb");
  if (select_section_coefficients_coeff_4_1_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_1_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_4_0_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_0_porty.dat","rb");
  if (select_section_coefficients_coeff_4_0_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_4_0_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_3_9_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_9_porty.dat","rb");
  if (select_section_coefficients_coeff_3_9_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_9_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_3_8_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_8_porty.dat","rb");
  if (select_section_coefficients_coeff_3_8_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_8_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_3_7_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_7_porty.dat","rb");
  if (select_section_coefficients_coeff_3_7_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_7_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_3_6_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_6_porty.dat","rb");
  if (select_section_coefficients_coeff_3_6_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_6_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_3_5_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_5_porty.dat","rb");
  if (select_section_coefficients_coeff_3_5_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_5_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_3_4_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_4_porty.dat","rb");
  if (select_section_coefficients_coeff_3_4_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_4_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_3_3_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_3_porty.dat","rb");
  if (select_section_coefficients_coeff_3_3_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_3_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_3_2_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_2_porty.dat","rb");
  if (select_section_coefficients_coeff_3_2_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_2_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_3_10_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_10_porty.dat","rb");
  if (select_section_coefficients_coeff_3_10_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_10_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_3_1_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_1_porty.dat","rb");
  if (select_section_coefficients_coeff_3_1_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_1_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_3_0_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_0_porty.dat","rb");
  if (select_section_coefficients_coeff_3_0_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_3_0_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_2_9_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_9_porty.dat","rb");
  if (select_section_coefficients_coeff_2_9_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_9_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_2_8_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_8_porty.dat","rb");
  if (select_section_coefficients_coeff_2_8_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_8_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_2_7_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_7_porty.dat","rb");
  if (select_section_coefficients_coeff_2_7_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_7_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_2_6_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_6_porty.dat","rb");
  if (select_section_coefficients_coeff_2_6_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_6_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_2_5_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_5_porty.dat","rb");
  if (select_section_coefficients_coeff_2_5_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_5_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_2_4_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_4_porty.dat","rb");
  if (select_section_coefficients_coeff_2_4_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_4_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_2_3_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_3_porty.dat","rb");
  if (select_section_coefficients_coeff_2_3_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_3_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_2_2_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_2_porty.dat","rb");
  if (select_section_coefficients_coeff_2_2_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_2_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_2_10_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_10_porty.dat","rb");
  if (select_section_coefficients_coeff_2_10_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_10_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_2_1_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_1_porty.dat","rb");
  if (select_section_coefficients_coeff_2_1_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_1_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_2_0_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_0_porty.dat","rb");
  if (select_section_coefficients_coeff_2_0_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_2_0_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_1_9_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_9_porty.dat","rb");
  if (select_section_coefficients_coeff_1_9_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_9_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_1_8_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_8_porty.dat","rb");
  if (select_section_coefficients_coeff_1_8_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_8_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_1_7_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_7_porty.dat","rb");
  if (select_section_coefficients_coeff_1_7_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_7_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_1_6_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_6_porty.dat","rb");
  if (select_section_coefficients_coeff_1_6_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_6_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_1_5_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_5_porty.dat","rb");
  if (select_section_coefficients_coeff_1_5_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_5_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_1_4_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_4_porty.dat","rb");
  if (select_section_coefficients_coeff_1_4_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_4_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_1_3_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_3_porty.dat","rb");
  if (select_section_coefficients_coeff_1_3_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_3_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_1_2_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_2_porty.dat","rb");
  if (select_section_coefficients_coeff_1_2_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_2_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_1_10_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_10_porty.dat","rb");
  if (select_section_coefficients_coeff_1_10_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_10_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_1_1_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_1_porty.dat","rb");
  if (select_section_coefficients_coeff_1_1_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_1_porty.dat");
      $finish;
    end
  select_section_coefficients_coeff_1_0_portyFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_0_porty.dat","rb");
  if (select_section_coefficients_coeff_1_0_portyFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_select_section_coefficients_coeff_1_0_porty.dat");
      $finish;
    end
  x_linRefFile = $fopen("Outport_NLC_4sec_10th_order_1ch_v0_x_lin.dat","rb");
  if (x_linRefFile ==0)
    begin
      $display("Error at opening file: Outport_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  x_adcFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_x_adc.dat","rb");
  if (x_adcFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_x_adc.dat");
      $finish;
    end
  srdyoRefFile = $fopen("Outport_NLC_4sec_10th_order_1ch_v0_srdyo.dat","rb");
  if (srdyoRefFile ==0)
    begin
      $display("Error at opening file: Outport_NLC_4sec_10th_order_1ch_v0_srdyo.dat");
      $finish;
    end
  srdyiFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_srdyi.dat","rb");
  if (srdyiFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_srdyi.dat");
      $finish;
    end
  section_limitFile = $fopen("Inport_NLC_4sec_10th_order_1ch_v0_section_limit.dat","rb");
  if (section_limitFile ==0)
    begin
      $display("Error at opening file: Inport_NLC_4sec_10th_order_1ch_v0_section_limit.dat");
      $finish;
    end

  srdyoOutFile = $fopen("Simout_NLC_4sec_10th_order_1ch_v0_srdyo.dat","wb"); 
  if (srdyoOutFile ==0)
    begin
      $display("Error at opening file: Simout_NLC_4sec_10th_order_1ch_v0_srdyo.dat");
      $finish;
    end
  
  ch31_x_linOutFile = $fopen("ch31_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch31_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch31_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch30_x_linOutFile = $fopen("ch30_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch30_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch30_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch29_x_linOutFile = $fopen("ch29_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch29_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch29_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch28_x_linOutFile = $fopen("ch28_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch28_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch28_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch27_x_linOutFile = $fopen("ch27_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch27_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch27_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch26_x_linOutFile = $fopen("ch26_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch26_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch26_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch25_x_linOutFile = $fopen("ch25_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch25_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch25_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch24_x_linOutFile = $fopen("ch24_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch24_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch24_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch23_x_linOutFile = $fopen("ch23_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch23_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch23_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch22_x_linOutFile = $fopen("ch22_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch22_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch22_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch21_x_linOutFile = $fopen("ch21_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch21_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch21_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch20_x_linOutFile = $fopen("ch20_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch20_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch20_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch19_x_linOutFile = $fopen("ch19_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch19_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch19_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch18_x_linOutFile = $fopen("ch18_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch18_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch18_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch17_x_linOutFile = $fopen("ch17_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch17_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch17_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch16_x_linOutFile = $fopen("ch16_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch16_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch16_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch15_x_linOutFile = $fopen("ch15_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch15_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch15_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch14_x_linOutFile = $fopen("ch14_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch14_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch14_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch13_x_linOutFile = $fopen("ch13_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch13_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch13_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch12_x_linOutFile = $fopen("ch12_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch12_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch12_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch11_x_linOutFile = $fopen("ch11_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch11_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch11_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch10_x_linOutFile = $fopen("ch10_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch10_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch10_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch9_x_linOutFile = $fopen("ch9_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch9_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch9_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch8_x_linOutFile = $fopen("ch8_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch8_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch8_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch7_x_linOutFile = $fopen("ch7_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch7_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch7_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch6_x_linOutFile = $fopen("ch6_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch6_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch6_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch5_x_linOutFile = $fopen("ch5_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch5_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch5_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch4_x_linOutFile = $fopen("ch4_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch4_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch4_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch3_x_linOutFile = $fopen("ch3_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch3_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch3_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch2_x_linOutFile = $fopen("ch2_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch2_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch2_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch1_x_linOutFile = $fopen("ch1_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch1_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch1_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  ch0_x_linOutFile = $fopen("ch0_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat","wb"); 
  if (ch0_x_linOutFile ==0)
    begin
      $display("Error at opening file: ch0_Simout_NLC_4sec_10th_order_1ch_v0_x_lin.dat");
      $finish;
    end
  end

reg isNotFirstRise1 = 0;

wire isSimulationEnd;
reg isSimulationEnd1;

wire [31:0] mismatch;
wire [31:0] matches;
integer matches1=0; 
integer mismatch1=0;
integer loop_cnt1=0;

wire clk_int;
wire GlobalReset_int;
wire GlobalResetDsgn;
wire [0:0] GlobalEnable1_int;
reg [31:0] select_section_coefficients_stdev_4_porty_int;
reg [31:0] select_section_coefficients_stdev_3_porty_int;
reg [31:0] select_section_coefficients_stdev_2_porty_int;
reg [31:0] select_section_coefficients_stdev_1_porty_int;
reg [31:0] select_section_coefficients_mean_4_porty_int;
reg [31:0] select_section_coefficients_mean_3_porty_int;
reg [31:0] select_section_coefficients_mean_2_porty_int;
reg [31:0] select_section_coefficients_mean_1_porty_int;
reg [31:0] select_section_coefficients_coeff_4_9_porty_int;
reg [31:0] select_section_coefficients_coeff_4_8_porty_int;
reg [31:0] select_section_coefficients_coeff_4_7_porty_int;
reg [31:0] select_section_coefficients_coeff_4_6_porty_int;
reg [31:0] select_section_coefficients_coeff_4_5_porty_int;
reg [31:0] select_section_coefficients_coeff_4_4_porty_int;
reg [31:0] select_section_coefficients_coeff_4_3_porty_int;
reg [31:0] select_section_coefficients_coeff_4_2_porty_int;
reg [31:0] select_section_coefficients_coeff_4_10_porty_int;
reg [31:0] select_section_coefficients_coeff_4_1_porty_int;
reg [31:0] select_section_coefficients_coeff_4_0_porty_int;
reg [31:0] select_section_coefficients_coeff_3_9_porty_int;
reg [31:0] select_section_coefficients_coeff_3_8_porty_int;
reg [31:0] select_section_coefficients_coeff_3_7_porty_int;
reg [31:0] select_section_coefficients_coeff_3_6_porty_int;
reg [31:0] select_section_coefficients_coeff_3_5_porty_int;
reg [31:0] select_section_coefficients_coeff_3_4_porty_int;
reg [31:0] select_section_coefficients_coeff_3_3_porty_int;
reg [31:0] select_section_coefficients_coeff_3_2_porty_int;
reg [31:0] select_section_coefficients_coeff_3_10_porty_int;
reg [31:0] select_section_coefficients_coeff_3_1_porty_int;
reg [31:0] select_section_coefficients_coeff_3_0_porty_int;
reg [31:0] select_section_coefficients_coeff_2_9_porty_int;
reg [31:0] select_section_coefficients_coeff_2_8_porty_int;
reg [31:0] select_section_coefficients_coeff_2_7_porty_int;
reg [31:0] select_section_coefficients_coeff_2_6_porty_int;
reg [31:0] select_section_coefficients_coeff_2_5_porty_int;
reg [31:0] select_section_coefficients_coeff_2_4_porty_int;
reg [31:0] select_section_coefficients_coeff_2_3_porty_int;
reg [31:0] select_section_coefficients_coeff_2_2_porty_int;
reg [31:0] select_section_coefficients_coeff_2_10_porty_int;
reg [31:0] select_section_coefficients_coeff_2_1_porty_int;
reg [31:0] select_section_coefficients_coeff_2_0_porty_int;
reg [31:0] select_section_coefficients_coeff_1_9_porty_int;
reg [31:0] select_section_coefficients_coeff_1_8_porty_int;
reg [31:0] select_section_coefficients_coeff_1_7_porty_int;
reg [31:0] select_section_coefficients_coeff_1_6_porty_int;
reg [31:0] select_section_coefficients_coeff_1_5_porty_int;
reg [31:0] select_section_coefficients_coeff_1_4_porty_int;
reg [31:0] select_section_coefficients_coeff_1_3_porty_int;
reg [31:0] select_section_coefficients_coeff_1_2_porty_int;
reg [31:0] select_section_coefficients_coeff_1_10_porty_int;
reg [31:0] select_section_coefficients_coeff_1_1_porty_int;
reg [31:0] select_section_coefficients_coeff_1_0_porty_int;
wire [20:0] ch31_x_lin_int;
wire [20:0] ch30_x_lin_int;
wire [20:0] ch29_x_lin_int;
wire [20:0] ch28_x_lin_int;
wire [20:0] ch27_x_lin_int;
wire [20:0] ch26_x_lin_int;
wire [20:0] ch25_x_lin_int;
wire [20:0] ch24_x_lin_int;
wire [20:0] ch23_x_lin_int;
wire [20:0] ch22_x_lin_int;
wire [20:0] ch21_x_lin_int;
wire [20:0] ch20_x_lin_int;
wire [20:0] ch19_x_lin_int;
wire [20:0] ch18_x_lin_int;
wire [20:0] ch17_x_lin_int;
wire [20:0] ch16_x_lin_int;
wire [20:0] ch15_x_lin_int;
wire [20:0] ch14_x_lin_int;
wire [20:0] ch13_x_lin_int;
wire [20:0] ch12_x_lin_int;
wire [20:0] ch11_x_lin_int;
wire [20:0] ch10_x_lin_int;
wire [20:0] ch9_x_lin_int;
wire [20:0] ch8_x_lin_int;
wire [20:0] ch7_x_lin_int;
wire [20:0] ch6_x_lin_int;
wire [20:0] ch5_x_lin_int;
wire [20:0] ch4_x_lin_int;
wire [20:0] ch3_x_lin_int;
wire [20:0] ch2_x_lin_int;
wire [20:0] ch1_x_lin_int;
wire [20:0] ch0_x_lin_int;
wire [0:0] srdyo_int;
reg [20:0] x_adc_int;
reg [0:0] srdyi_int;
reg [19:0] section_limit_int;
//--Instantiate design under test
NLC_4sec_10th_order_32ch_v0 i_NLC(
    .clk(clk_int),
    .GlobalReset(GlobalResetDsgn),

    //there is only one input_valid and output ready signal for all 32 channels
    .srdyi(srdyi_int),
    .srdyo(srdyo_int),

    //NLC for Channel 31
    .ch31_x_lin(ch31_x_lin_int),
    .ch31_section_limit(section_limit_int),
    .ch31_x_adc(x_adc_int),
    .ch31_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch31_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch31_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch31_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch31_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch31_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch31_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch31_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch31_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch31_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch31_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch31_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch31_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch31_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch31_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch31_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch31_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch31_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch31_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch31_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch31_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch31_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch31_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch31_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch31_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch31_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch31_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch31_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch31_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch31_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch31_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch31_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch31_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch31_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch31_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch31_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch31_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch31_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch31_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch31_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch31_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch31_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch31_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch31_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch31_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch31_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch31_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch31_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch31_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch31_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch31_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch31_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 30
    .ch30_x_lin(ch30_x_lin_int),
    .ch30_section_limit(section_limit_int),
    .ch30_x_adc(x_adc_int),
    .ch30_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch30_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch30_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch30_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch30_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch30_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch30_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch30_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch30_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch30_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch30_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch30_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch30_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch30_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch30_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch30_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch30_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch30_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch30_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch30_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch30_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch30_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch30_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch30_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch30_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch30_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch30_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch30_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch30_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch30_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch30_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch30_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch30_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch30_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch30_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch30_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch30_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch30_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch30_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch30_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch30_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch30_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch30_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch30_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch30_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch30_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch30_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch30_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch30_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch30_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch30_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch30_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 29
    .ch29_x_lin(ch29_x_lin_int),
    .ch29_section_limit(section_limit_int),
    .ch29_x_adc(x_adc_int),
    .ch29_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch29_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch29_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch29_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch29_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch29_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch29_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch29_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch29_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch29_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch29_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch29_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch29_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch29_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch29_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch29_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch29_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch29_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch29_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch29_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch29_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch29_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch29_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch29_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch29_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch29_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch29_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch29_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch29_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch29_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch29_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch29_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch29_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch29_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch29_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch29_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch29_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch29_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch29_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch29_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch29_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch29_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch29_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch29_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch29_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch29_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch29_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch29_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch29_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch29_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch29_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch29_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 28
    .ch28_x_lin(ch28_x_lin_int),
    .ch28_section_limit(section_limit_int),
    .ch28_x_adc(x_adc_int),
    .ch28_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch28_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch28_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch28_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch28_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch28_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch28_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch28_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch28_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch28_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch28_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch28_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch28_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch28_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch28_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch28_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch28_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch28_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch28_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch28_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch28_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch28_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch28_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch28_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch28_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch28_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch28_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch28_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch28_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch28_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch28_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch28_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch28_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch28_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch28_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch28_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch28_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch28_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch28_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch28_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch28_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch28_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch28_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch28_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch28_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch28_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch28_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch28_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch28_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch28_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch28_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch28_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 27
    .ch27_x_lin(ch27_x_lin_int),
    .ch27_section_limit(section_limit_int),
    .ch27_x_adc(x_adc_int),
    .ch27_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch27_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch27_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch27_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch27_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch27_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch27_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch27_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch27_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch27_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch27_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch27_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch27_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch27_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch27_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch27_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch27_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch27_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch27_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch27_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch27_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch27_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch27_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch27_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch27_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch27_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch27_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch27_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch27_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch27_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch27_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch27_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch27_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch27_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch27_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch27_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch27_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch27_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch27_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch27_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch27_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch27_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch27_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch27_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch27_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch27_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch27_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch27_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch27_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch27_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch27_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch27_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 26
    .ch26_x_lin(ch26_x_lin_int),
    .ch26_section_limit(section_limit_int),
    .ch26_x_adc(x_adc_int),
    .ch26_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch26_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch26_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch26_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch26_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch26_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch26_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch26_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch26_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch26_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch26_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch26_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch26_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch26_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch26_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch26_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch26_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch26_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch26_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch26_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch26_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch26_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch26_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch26_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch26_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch26_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch26_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch26_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch26_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch26_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch26_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch26_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch26_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch26_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch26_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch26_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch26_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch26_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch26_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch26_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch26_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch26_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch26_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch26_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch26_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch26_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch26_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch26_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch26_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch26_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch26_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch26_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 25
    .ch25_x_lin(ch25_x_lin_int),
    .ch25_section_limit(section_limit_int),
    .ch25_x_adc(x_adc_int),
    .ch25_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch25_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch25_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch25_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch25_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch25_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch25_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch25_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch25_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch25_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch25_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch25_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch25_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch25_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch25_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch25_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch25_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch25_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch25_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch25_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch25_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch25_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch25_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch25_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch25_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch25_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch25_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch25_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch25_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch25_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch25_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch25_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch25_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch25_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch25_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch25_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch25_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch25_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch25_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch25_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch25_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch25_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch25_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch25_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch25_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch25_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch25_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch25_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch25_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch25_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch25_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch25_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 24
    .ch24_x_lin(ch24_x_lin_int),
    .ch24_section_limit(section_limit_int),
    .ch24_x_adc(x_adc_int),
    .ch24_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch24_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch24_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch24_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch24_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch24_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch24_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch24_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch24_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch24_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch24_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch24_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch24_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch24_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch24_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch24_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch24_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch24_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch24_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch24_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch24_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch24_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch24_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch24_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch24_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch24_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch24_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch24_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch24_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch24_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch24_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch24_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch24_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch24_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch24_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch24_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch24_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch24_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch24_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch24_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch24_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch24_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch24_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch24_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch24_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch24_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch24_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch24_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch24_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch24_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch24_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch24_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 23
    .ch23_x_lin(ch23_x_lin_int),
    .ch23_section_limit(section_limit_int),
    .ch23_x_adc(x_adc_int),
    .ch23_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch23_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch23_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch23_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch23_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch23_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch23_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch23_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch23_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch23_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch23_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch23_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch23_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch23_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch23_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch23_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch23_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch23_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch23_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch23_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch23_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch23_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch23_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch23_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch23_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch23_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch23_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch23_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch23_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch23_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch23_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch23_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch23_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch23_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch23_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch23_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch23_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch23_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch23_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch23_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch23_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch23_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch23_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch23_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch23_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch23_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch23_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch23_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch23_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch23_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch23_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch23_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 22
    .ch22_x_lin(ch22_x_lin_int),
    .ch22_section_limit(section_limit_int),
    .ch22_x_adc(x_adc_int),
    .ch22_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch22_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch22_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch22_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch22_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch22_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch22_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch22_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch22_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch22_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch22_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch22_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch22_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch22_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch22_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch22_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch22_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch22_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch22_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch22_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch22_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch22_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch22_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch22_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch22_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch22_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch22_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch22_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch22_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch22_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch22_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch22_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch22_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch22_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch22_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch22_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch22_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch22_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch22_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch22_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch22_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch22_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch22_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch22_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch22_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch22_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch22_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch22_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch22_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch22_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch22_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch22_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 21
    .ch21_x_lin(ch21_x_lin_int),
    .ch21_section_limit(section_limit_int),
    .ch21_x_adc(x_adc_int),
    .ch21_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch21_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch21_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch21_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch21_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch21_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch21_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch21_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch21_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch21_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch21_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch21_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch21_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch21_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch21_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch21_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch21_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch21_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch21_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch21_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch21_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch21_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch21_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch21_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch21_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch21_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch21_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch21_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch21_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch21_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch21_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch21_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch21_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch21_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch21_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch21_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch21_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch21_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch21_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch21_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch21_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch21_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch21_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch21_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch21_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch21_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch21_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch21_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch21_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch21_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch21_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch21_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 20
    .ch20_x_lin(ch20_x_lin_int),
    .ch20_section_limit(section_limit_int),
    .ch20_x_adc(x_adc_int),
    .ch20_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch20_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch20_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch20_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch20_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch20_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch20_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch20_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch20_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch20_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch20_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch20_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch20_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch20_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch20_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch20_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch20_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch20_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch20_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch20_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch20_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch20_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch20_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch20_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch20_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch20_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch20_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch20_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch20_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch20_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch20_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch20_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch20_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch20_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch20_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch20_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch20_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch20_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch20_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch20_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch20_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch20_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch20_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch20_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch20_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch20_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch20_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch20_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch20_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch20_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch20_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch20_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 19
    .ch19_x_lin(ch19_x_lin_int),
    .ch19_section_limit(section_limit_int),
    .ch19_x_adc(x_adc_int),
    .ch19_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch19_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch19_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch19_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch19_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch19_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch19_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch19_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch19_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch19_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch19_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch19_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch19_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch19_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch19_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch19_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch19_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch19_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch19_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch19_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch19_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch19_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch19_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch19_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch19_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch19_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch19_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch19_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch19_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch19_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch19_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch19_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch19_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch19_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch19_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch19_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch19_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch19_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch19_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch19_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch19_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch19_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch19_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch19_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch19_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch19_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch19_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch19_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch19_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch19_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch19_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch19_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 18
    .ch18_x_lin(ch18_x_lin_int),
    .ch18_section_limit(section_limit_int),
    .ch18_x_adc(x_adc_int),
    .ch18_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch18_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch18_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch18_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch18_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch18_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch18_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch18_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch18_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch18_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch18_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch18_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch18_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch18_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch18_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch18_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch18_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch18_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch18_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch18_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch18_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch18_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch18_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch18_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch18_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch18_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch18_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch18_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch18_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch18_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch18_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch18_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch18_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch18_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch18_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch18_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch18_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch18_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch18_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch18_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch18_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch18_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch18_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch18_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch18_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch18_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch18_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch18_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch18_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch18_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch18_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch18_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 17
    .ch17_x_lin(ch17_x_lin_int),
    .ch17_section_limit(section_limit_int),
    .ch17_x_adc(x_adc_int),
    .ch17_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch17_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch17_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch17_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch17_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch17_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch17_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch17_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch17_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch17_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch17_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch17_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch17_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch17_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch17_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch17_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch17_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch17_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch17_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch17_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch17_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch17_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch17_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch17_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch17_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch17_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch17_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch17_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch17_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch17_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch17_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch17_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch17_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch17_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch17_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch17_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch17_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch17_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch17_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch17_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch17_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch17_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch17_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch17_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch17_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch17_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch17_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch17_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch17_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch17_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch17_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch17_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 16
    .ch16_x_lin(ch16_x_lin_int),
    .ch16_section_limit(section_limit_int),
    .ch16_x_adc(x_adc_int),
    .ch16_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch16_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch16_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch16_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch16_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch16_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch16_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch16_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch16_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch16_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch16_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch16_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch16_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch16_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch16_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch16_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch16_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch16_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch16_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch16_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch16_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch16_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch16_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch16_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch16_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch16_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch16_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch16_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch16_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch16_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch16_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch16_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch16_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch16_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch16_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch16_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch16_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch16_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch16_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch16_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch16_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch16_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch16_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch16_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch16_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch16_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch16_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch16_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch16_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch16_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch16_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch16_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 15
    .ch15_x_lin(ch15_x_lin_int),
    .ch15_section_limit(section_limit_int),
    .ch15_x_adc(x_adc_int),
    .ch15_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch15_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch15_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch15_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch15_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch15_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch15_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch15_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch15_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch15_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch15_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch15_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch15_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch15_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch15_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch15_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch15_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch15_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch15_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch15_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch15_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch15_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch15_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch15_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch15_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch15_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch15_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch15_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch15_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch15_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch15_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch15_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch15_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch15_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch15_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch15_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch15_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch15_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch15_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch15_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch15_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch15_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch15_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch15_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch15_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch15_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch15_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch15_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch15_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch15_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch15_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch15_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 14
    .ch14_x_lin(ch14_x_lin_int),
    .ch14_section_limit(section_limit_int),
    .ch14_x_adc(x_adc_int),
    .ch14_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch14_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch14_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch14_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch14_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch14_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch14_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch14_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch14_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch14_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch14_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch14_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch14_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch14_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch14_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch14_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch14_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch14_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch14_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch14_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch14_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch14_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch14_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch14_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch14_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch14_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch14_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch14_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch14_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch14_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch14_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch14_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch14_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch14_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch14_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch14_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch14_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch14_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch14_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch14_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch14_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch14_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch14_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch14_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch14_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch14_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch14_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch14_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch14_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch14_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch14_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch14_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 13
    .ch13_x_lin(ch13_x_lin_int),
    .ch13_section_limit(section_limit_int),
    .ch13_x_adc(x_adc_int),
    .ch13_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch13_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch13_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch13_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch13_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch13_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch13_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch13_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch13_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch13_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch13_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch13_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch13_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch13_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch13_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch13_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch13_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch13_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch13_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch13_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch13_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch13_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch13_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch13_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch13_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch13_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch13_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch13_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch13_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch13_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch13_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch13_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch13_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch13_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch13_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch13_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch13_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch13_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch13_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch13_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch13_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch13_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch13_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch13_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch13_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch13_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch13_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch13_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch13_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch13_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch13_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch13_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 12
    .ch12_x_lin(ch12_x_lin_int),
    .ch12_section_limit(section_limit_int),
    .ch12_x_adc(x_adc_int),
    .ch12_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch12_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch12_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch12_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch12_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch12_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch12_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch12_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch12_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch12_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch12_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch12_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch12_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch12_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch12_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch12_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch12_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch12_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch12_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch12_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch12_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch12_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch12_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch12_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch12_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch12_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch12_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch12_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch12_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch12_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch12_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch12_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch12_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch12_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch12_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch12_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch12_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch12_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch12_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch12_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch12_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch12_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch12_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch12_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch12_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch12_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch12_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch12_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch12_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch12_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch12_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch12_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 11
    .ch11_x_lin(ch11_x_lin_int),
    .ch11_section_limit(section_limit_int),
    .ch11_x_adc(x_adc_int),
    .ch11_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch11_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch11_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch11_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch11_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch11_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch11_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch11_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch11_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch11_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch11_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch11_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch11_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch11_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch11_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch11_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch11_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch11_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch11_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch11_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch11_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch11_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch11_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch11_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch11_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch11_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch11_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch11_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch11_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch11_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch11_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch11_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch11_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch11_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch11_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch11_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch11_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch11_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch11_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch11_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch11_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch11_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch11_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch11_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch11_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch11_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch11_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch11_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch11_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch11_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch11_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch11_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 10
    .ch10_x_lin(ch10_x_lin_int),
    .ch10_section_limit(section_limit_int),
    .ch10_x_adc(x_adc_int),
    .ch10_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch10_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch10_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch10_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch10_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch10_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch10_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch10_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch10_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch10_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch10_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch10_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch10_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch10_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch10_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch10_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch10_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch10_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch10_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch10_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch10_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch10_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch10_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch10_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch10_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch10_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch10_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch10_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch10_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch10_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch10_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch10_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch10_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch10_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch10_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch10_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch10_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch10_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch10_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch10_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch10_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch10_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch10_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch10_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch10_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch10_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch10_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch10_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch10_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch10_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch10_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch10_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 9
    .ch9_x_lin(ch9_x_lin_int),
    .ch9_section_limit(section_limit_int),
    .ch9_x_adc(x_adc_int),
    .ch9_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch9_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch9_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch9_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch9_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch9_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch9_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch9_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch9_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch9_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch9_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch9_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch9_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch9_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch9_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch9_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch9_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch9_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch9_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch9_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch9_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch9_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch9_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch9_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch9_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch9_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch9_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch9_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch9_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch9_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch9_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch9_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch9_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch9_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch9_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch9_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch9_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch9_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch9_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch9_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch9_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch9_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch9_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch9_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch9_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch9_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch9_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch9_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch9_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch9_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch9_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch9_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 8
    .ch8_x_lin(ch8_x_lin_int),
    .ch8_section_limit(section_limit_int),
    .ch8_x_adc(x_adc_int),
    .ch8_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch8_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch8_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch8_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch8_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch8_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch8_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch8_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch8_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch8_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch8_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch8_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch8_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch8_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch8_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch8_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch8_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch8_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch8_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch8_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch8_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch8_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch8_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch8_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch8_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch8_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch8_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch8_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch8_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch8_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch8_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch8_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch8_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch8_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch8_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch8_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch8_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch8_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch8_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch8_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch8_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch8_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch8_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch8_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch8_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch8_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch8_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch8_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch8_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch8_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch8_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch8_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 7
    .ch7_x_lin(ch7_x_lin_int),
    .ch7_section_limit(section_limit_int),
    .ch7_x_adc(x_adc_int),
    .ch7_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch7_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch7_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch7_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch7_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch7_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch7_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch7_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch7_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch7_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch7_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch7_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch7_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch7_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch7_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch7_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch7_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch7_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch7_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch7_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch7_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch7_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch7_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch7_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch7_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch7_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch7_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch7_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch7_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch7_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch7_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch7_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch7_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch7_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch7_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch7_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch7_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch7_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch7_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch7_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch7_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch7_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch7_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch7_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch7_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch7_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch7_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch7_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch7_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch7_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch7_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch7_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 6
    .ch6_x_lin(ch6_x_lin_int),
    .ch6_section_limit(section_limit_int),
    .ch6_x_adc(x_adc_int),
    .ch6_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch6_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch6_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch6_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch6_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch6_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch6_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch6_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch6_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch6_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch6_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch6_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch6_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch6_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch6_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch6_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch6_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch6_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch6_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch6_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch6_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch6_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch6_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch6_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch6_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch6_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch6_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch6_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch6_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch6_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch6_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch6_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch6_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch6_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch6_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch6_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch6_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch6_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch6_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch6_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch6_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch6_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch6_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch6_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch6_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch6_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch6_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch6_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch6_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch6_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch6_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch6_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 5
    .ch5_x_lin(ch5_x_lin_int),
    .ch5_section_limit(section_limit_int),
    .ch5_x_adc(x_adc_int),
    .ch5_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch5_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch5_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch5_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch5_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch5_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch5_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch5_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch5_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch5_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch5_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch5_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch5_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch5_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch5_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch5_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch5_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch5_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch5_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch5_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch5_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch5_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch5_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch5_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch5_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch5_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch5_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch5_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch5_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch5_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch5_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch5_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch5_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch5_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch5_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch5_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch5_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch5_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch5_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch5_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch5_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch5_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch5_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch5_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch5_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch5_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch5_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch5_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch5_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch5_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch5_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch5_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 4
    .ch4_x_lin(ch4_x_lin_int),
    .ch4_section_limit(section_limit_int),
    .ch4_x_adc(x_adc_int),
    .ch4_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch4_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch4_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch4_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch4_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch4_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch4_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch4_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch4_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch4_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch4_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch4_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch4_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch4_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch4_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch4_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch4_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch4_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch4_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch4_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch4_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch4_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch4_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch4_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch4_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch4_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch4_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch4_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch4_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch4_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch4_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch4_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch4_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch4_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch4_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch4_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch4_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch4_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch4_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch4_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch4_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch4_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch4_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch4_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch4_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch4_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch4_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch4_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch4_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch4_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch4_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch4_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 3
    .ch3_x_lin(ch3_x_lin_int),
    .ch3_section_limit(section_limit_int),
    .ch3_x_adc(x_adc_int),
    .ch3_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch3_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch3_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch3_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch3_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch3_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch3_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch3_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch3_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch3_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch3_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch3_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch3_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch3_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch3_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch3_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch3_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch3_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch3_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch3_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch3_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch3_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch3_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch3_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch3_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch3_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch3_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch3_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch3_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch3_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch3_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch3_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch3_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch3_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch3_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch3_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch3_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch3_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch3_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch3_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch3_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch3_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch3_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch3_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch3_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch3_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch3_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch3_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch3_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch3_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch3_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch3_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 2
    .ch2_x_lin(ch2_x_lin_int),
    .ch2_section_limit(section_limit_int),
    .ch2_x_adc(x_adc_int),
    .ch2_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch2_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch2_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch2_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch2_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch2_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch2_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch2_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch2_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch2_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch2_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch2_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch2_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch2_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch2_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch2_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch2_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch2_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch2_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch2_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch2_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch2_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch2_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch2_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch2_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch2_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch2_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch2_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch2_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch2_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch2_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch2_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch2_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch2_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch2_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch2_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch2_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch2_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch2_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch2_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch2_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch2_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch2_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch2_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch2_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch2_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch2_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch2_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch2_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch2_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch2_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch2_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 1
    .ch1_x_lin(ch1_x_lin_int),
    .ch1_section_limit(section_limit_int),
    .ch1_x_adc(x_adc_int),
    .ch1_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch1_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch1_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch1_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch1_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch1_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch1_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch1_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch1_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch1_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch1_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch1_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch1_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch1_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch1_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch1_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch1_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch1_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch1_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch1_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch1_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch1_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch1_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch1_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch1_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch1_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch1_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch1_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch1_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch1_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch1_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch1_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch1_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch1_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch1_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch1_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch1_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch1_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch1_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch1_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch1_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch1_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch1_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch1_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch1_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch1_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch1_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch1_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch1_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch1_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch1_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch1_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int),


    //NLC for Channel 0
    .ch0_x_lin(ch0_x_lin_int),
    .ch0_section_limit(section_limit_int),
    .ch0_x_adc(x_adc_int),
    .ch0_select_section_coefficients_stdev_4_porty(select_section_coefficients_stdev_4_porty_int),
    .ch0_select_section_coefficients_stdev_3_porty(select_section_coefficients_stdev_3_porty_int),
    .ch0_select_section_coefficients_stdev_2_porty(select_section_coefficients_stdev_2_porty_int),
    .ch0_select_section_coefficients_stdev_1_porty(select_section_coefficients_stdev_1_porty_int),
    .ch0_select_section_coefficients_mean_4_porty(select_section_coefficients_mean_4_porty_int),
    .ch0_select_section_coefficients_mean_3_porty(select_section_coefficients_mean_3_porty_int),
    .ch0_select_section_coefficients_mean_2_porty(select_section_coefficients_mean_2_porty_int),
    .ch0_select_section_coefficients_mean_1_porty(select_section_coefficients_mean_1_porty_int),
    .ch0_select_section_coefficients_coeff_4_9_porty(select_section_coefficients_coeff_4_9_porty_int),
    .ch0_select_section_coefficients_coeff_4_8_porty(select_section_coefficients_coeff_4_8_porty_int),
    .ch0_select_section_coefficients_coeff_4_7_porty(select_section_coefficients_coeff_4_7_porty_int),
    .ch0_select_section_coefficients_coeff_4_6_porty(select_section_coefficients_coeff_4_6_porty_int),
    .ch0_select_section_coefficients_coeff_4_5_porty(select_section_coefficients_coeff_4_5_porty_int),
    .ch0_select_section_coefficients_coeff_4_4_porty(select_section_coefficients_coeff_4_4_porty_int),
    .ch0_select_section_coefficients_coeff_4_3_porty(select_section_coefficients_coeff_4_3_porty_int),
    .ch0_select_section_coefficients_coeff_4_2_porty(select_section_coefficients_coeff_4_2_porty_int),
    .ch0_select_section_coefficients_coeff_4_10_porty(select_section_coefficients_coeff_4_10_porty_int),
    .ch0_select_section_coefficients_coeff_4_1_porty(select_section_coefficients_coeff_4_1_porty_int),
    .ch0_select_section_coefficients_coeff_4_0_porty(select_section_coefficients_coeff_4_0_porty_int),
    .ch0_select_section_coefficients_coeff_3_9_porty(select_section_coefficients_coeff_3_9_porty_int),
    .ch0_select_section_coefficients_coeff_3_8_porty(select_section_coefficients_coeff_3_8_porty_int),
    .ch0_select_section_coefficients_coeff_3_7_porty(select_section_coefficients_coeff_3_7_porty_int),
    .ch0_select_section_coefficients_coeff_3_6_porty(select_section_coefficients_coeff_3_6_porty_int),
    .ch0_select_section_coefficients_coeff_3_5_porty(select_section_coefficients_coeff_3_5_porty_int),
    .ch0_select_section_coefficients_coeff_3_4_porty(select_section_coefficients_coeff_3_4_porty_int),
    .ch0_select_section_coefficients_coeff_3_3_porty(select_section_coefficients_coeff_3_3_porty_int),
    .ch0_select_section_coefficients_coeff_3_2_porty(select_section_coefficients_coeff_3_2_porty_int),
    .ch0_select_section_coefficients_coeff_3_10_porty(select_section_coefficients_coeff_3_10_porty_int),
    .ch0_select_section_coefficients_coeff_3_1_porty(select_section_coefficients_coeff_3_1_porty_int),
    .ch0_select_section_coefficients_coeff_3_0_porty(select_section_coefficients_coeff_3_0_porty_int),
    .ch0_select_section_coefficients_coeff_2_9_porty(select_section_coefficients_coeff_2_9_porty_int),
    .ch0_select_section_coefficients_coeff_2_8_porty(select_section_coefficients_coeff_2_8_porty_int),
    .ch0_select_section_coefficients_coeff_2_7_porty(select_section_coefficients_coeff_2_7_porty_int),
    .ch0_select_section_coefficients_coeff_2_6_porty(select_section_coefficients_coeff_2_6_porty_int),
    .ch0_select_section_coefficients_coeff_2_5_porty(select_section_coefficients_coeff_2_5_porty_int),
    .ch0_select_section_coefficients_coeff_2_4_porty(select_section_coefficients_coeff_2_4_porty_int),
    .ch0_select_section_coefficients_coeff_2_3_porty(select_section_coefficients_coeff_2_3_porty_int),
    .ch0_select_section_coefficients_coeff_2_2_porty(select_section_coefficients_coeff_2_2_porty_int),
    .ch0_select_section_coefficients_coeff_2_10_porty(select_section_coefficients_coeff_2_10_porty_int),
    .ch0_select_section_coefficients_coeff_2_1_porty(select_section_coefficients_coeff_2_1_porty_int),
    .ch0_select_section_coefficients_coeff_2_0_porty(select_section_coefficients_coeff_2_0_porty_int),
    .ch0_select_section_coefficients_coeff_1_9_porty(select_section_coefficients_coeff_1_9_porty_int),
    .ch0_select_section_coefficients_coeff_1_8_porty(select_section_coefficients_coeff_1_8_porty_int),
    .ch0_select_section_coefficients_coeff_1_7_porty(select_section_coefficients_coeff_1_7_porty_int),
    .ch0_select_section_coefficients_coeff_1_6_porty(select_section_coefficients_coeff_1_6_porty_int),
    .ch0_select_section_coefficients_coeff_1_5_porty(select_section_coefficients_coeff_1_5_porty_int),
    .ch0_select_section_coefficients_coeff_1_4_porty(select_section_coefficients_coeff_1_4_porty_int),
    .ch0_select_section_coefficients_coeff_1_3_porty(select_section_coefficients_coeff_1_3_porty_int),
    .ch0_select_section_coefficients_coeff_1_2_porty(select_section_coefficients_coeff_1_2_porty_int),
    .ch0_select_section_coefficients_coeff_1_10_porty(select_section_coefficients_coeff_1_10_porty_int),
    .ch0_select_section_coefficients_coeff_1_1_porty(select_section_coefficients_coeff_1_1_porty_int),
    .ch0_select_section_coefficients_coeff_1_0_porty(select_section_coefficients_coeff_1_0_porty_int)


  );

clocks #(.cperiod(166666), .rperiod(1666660)) CL(
  .clk(clk_int),
  .rst(GlobalReset_int)
  );

  assign GlobalEnable1_int = ~GlobalReset_int;
  assign GlobalResetDsgn = GlobalReset_int;
  assign isSimulationEnd = isSimulationEnd1;

  assign mismatch = mismatch1;
  assign matches = matches1;
  always @(posedge clk_int) begin
    isNotFirstRise1 <= 1;
  end
  //------------------------------------------------------------
  //-- Process for Rate Domain of clk 
  //-- Inputs are applied on rising edge of clock, 
  //-- Outputs are tested on falling edges.
  //------------------------------------------------------------
    reg misFlg1;
      reg [31:0] tmp_select_section_coefficients_stdev_4_porty;
      reg [31:0] tmp_select_section_coefficients_stdev_3_porty;
      reg [31:0] tmp_select_section_coefficients_stdev_2_porty;
      reg [31:0] tmp_select_section_coefficients_stdev_1_porty;
      reg [31:0] tmp_select_section_coefficients_mean_4_porty;
      reg [31:0] tmp_select_section_coefficients_mean_3_porty;
      reg [31:0] tmp_select_section_coefficients_mean_2_porty;
      reg [31:0] tmp_select_section_coefficients_mean_1_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_4_9_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_4_8_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_4_7_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_4_6_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_4_5_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_4_4_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_4_3_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_4_2_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_4_10_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_4_1_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_4_0_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_3_9_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_3_8_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_3_7_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_3_6_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_3_5_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_3_4_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_3_3_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_3_2_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_3_10_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_3_1_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_3_0_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_2_9_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_2_8_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_2_7_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_2_6_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_2_5_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_2_4_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_2_3_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_2_2_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_2_10_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_2_1_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_2_0_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_1_9_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_1_8_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_1_7_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_1_6_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_1_5_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_1_4_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_1_3_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_1_2_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_1_10_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_1_1_porty;
      reg [31:0] tmp_select_section_coefficients_coeff_1_0_porty;
      reg [20:0] ch31_tmp_x_lin = 0;
      reg [20:0] ch30_tmp_x_lin = 0;
      reg [20:0] ch29_tmp_x_lin = 0;
      reg [20:0] ch28_tmp_x_lin = 0;
      reg [20:0] ch27_tmp_x_lin = 0;
      reg [20:0] ch26_tmp_x_lin = 0;
      reg [20:0] ch25_tmp_x_lin = 0;
      reg [20:0] ch24_tmp_x_lin = 0;
      reg [20:0] ch23_tmp_x_lin = 0;
      reg [20:0] ch22_tmp_x_lin = 0;
      reg [20:0] ch21_tmp_x_lin = 0;
      reg [20:0] ch20_tmp_x_lin = 0;
      reg [20:0] ch19_tmp_x_lin = 0;
      reg [20:0] ch18_tmp_x_lin = 0;
      reg [20:0] ch17_tmp_x_lin = 0;
      reg [20:0] ch16_tmp_x_lin = 0;
      reg [20:0] ch15_tmp_x_lin = 0;
      reg [20:0] ch14_tmp_x_lin = 0;
      reg [20:0] ch13_tmp_x_lin = 0;
      reg [20:0] ch12_tmp_x_lin = 0;
      reg [20:0] ch11_tmp_x_lin = 0;
      reg [20:0] ch10_tmp_x_lin = 0;
      reg [20:0] ch9_tmp_x_lin = 0;
      reg [20:0] ch8_tmp_x_lin = 0;
      reg [20:0] ch7_tmp_x_lin = 0;
      reg [20:0] ch6_tmp_x_lin = 0;
      reg [20:0] ch5_tmp_x_lin = 0;
      reg [20:0] ch4_tmp_x_lin = 0;
      reg [20:0] ch3_tmp_x_lin = 0;
      reg [20:0] ch2_tmp_x_lin = 0;
      reg [20:0] ch1_tmp_x_lin = 0;
      reg [20:0] ch0_tmp_x_lin = 0;
      reg [20:0] ref_x_lin = 0;
      reg [20:0] tmp_x_adc;
      reg [0:0] tmp_srdyo = 0;
      reg [0:0] ref_srdyo = 0;
      reg [0:0] tmp_srdyi;
      reg [19:0] tmp_section_limit;
//-- Apply Input Vectors -----
always @(posedge clk_int) 
  begin 
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_stdev_4_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_stdev_4_portyFile, "%b\n", tmp_select_section_coefficients_stdev_4_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_stdev_4_porty_int <= tmp_select_section_coefficients_stdev_4_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_stdev_3_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_stdev_3_portyFile, "%b\n", tmp_select_section_coefficients_stdev_3_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_stdev_3_porty_int <= tmp_select_section_coefficients_stdev_3_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_stdev_2_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_stdev_2_portyFile, "%b\n", tmp_select_section_coefficients_stdev_2_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_stdev_2_porty_int <= tmp_select_section_coefficients_stdev_2_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_stdev_1_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_stdev_1_portyFile, "%b\n", tmp_select_section_coefficients_stdev_1_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_stdev_1_porty_int <= tmp_select_section_coefficients_stdev_1_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_mean_4_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_mean_4_portyFile, "%b\n", tmp_select_section_coefficients_mean_4_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_mean_4_porty_int <= tmp_select_section_coefficients_mean_4_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_mean_3_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_mean_3_portyFile, "%b\n", tmp_select_section_coefficients_mean_3_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_mean_3_porty_int <= tmp_select_section_coefficients_mean_3_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_mean_2_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_mean_2_portyFile, "%b\n", tmp_select_section_coefficients_mean_2_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_mean_2_porty_int <= tmp_select_section_coefficients_mean_2_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_mean_1_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_mean_1_portyFile, "%b\n", tmp_select_section_coefficients_mean_1_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_mean_1_porty_int <= tmp_select_section_coefficients_mean_1_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_4_9_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_4_9_portyFile, "%b\n", tmp_select_section_coefficients_coeff_4_9_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_4_9_porty_int <= tmp_select_section_coefficients_coeff_4_9_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_4_8_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_4_8_portyFile, "%b\n", tmp_select_section_coefficients_coeff_4_8_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_4_8_porty_int <= tmp_select_section_coefficients_coeff_4_8_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_4_7_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_4_7_portyFile, "%b\n", tmp_select_section_coefficients_coeff_4_7_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_4_7_porty_int <= tmp_select_section_coefficients_coeff_4_7_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_4_6_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_4_6_portyFile, "%b\n", tmp_select_section_coefficients_coeff_4_6_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_4_6_porty_int <= tmp_select_section_coefficients_coeff_4_6_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_4_5_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_4_5_portyFile, "%b\n", tmp_select_section_coefficients_coeff_4_5_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_4_5_porty_int <= tmp_select_section_coefficients_coeff_4_5_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_4_4_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_4_4_portyFile, "%b\n", tmp_select_section_coefficients_coeff_4_4_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_4_4_porty_int <= tmp_select_section_coefficients_coeff_4_4_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_4_3_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_4_3_portyFile, "%b\n", tmp_select_section_coefficients_coeff_4_3_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_4_3_porty_int <= tmp_select_section_coefficients_coeff_4_3_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_4_2_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_4_2_portyFile, "%b\n", tmp_select_section_coefficients_coeff_4_2_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_4_2_porty_int <= tmp_select_section_coefficients_coeff_4_2_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_4_10_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_4_10_portyFile, "%b\n", tmp_select_section_coefficients_coeff_4_10_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_4_10_porty_int <= tmp_select_section_coefficients_coeff_4_10_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_4_1_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_4_1_portyFile, "%b\n", tmp_select_section_coefficients_coeff_4_1_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_4_1_porty_int <= tmp_select_section_coefficients_coeff_4_1_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_4_0_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_4_0_portyFile, "%b\n", tmp_select_section_coefficients_coeff_4_0_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_4_0_porty_int <= tmp_select_section_coefficients_coeff_4_0_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_3_9_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_3_9_portyFile, "%b\n", tmp_select_section_coefficients_coeff_3_9_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_3_9_porty_int <= tmp_select_section_coefficients_coeff_3_9_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_3_8_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_3_8_portyFile, "%b\n", tmp_select_section_coefficients_coeff_3_8_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_3_8_porty_int <= tmp_select_section_coefficients_coeff_3_8_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_3_7_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_3_7_portyFile, "%b\n", tmp_select_section_coefficients_coeff_3_7_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_3_7_porty_int <= tmp_select_section_coefficients_coeff_3_7_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_3_6_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_3_6_portyFile, "%b\n", tmp_select_section_coefficients_coeff_3_6_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_3_6_porty_int <= tmp_select_section_coefficients_coeff_3_6_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_3_5_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_3_5_portyFile, "%b\n", tmp_select_section_coefficients_coeff_3_5_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_3_5_porty_int <= tmp_select_section_coefficients_coeff_3_5_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_3_4_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_3_4_portyFile, "%b\n", tmp_select_section_coefficients_coeff_3_4_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_3_4_porty_int <= tmp_select_section_coefficients_coeff_3_4_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_3_3_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_3_3_portyFile, "%b\n", tmp_select_section_coefficients_coeff_3_3_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_3_3_porty_int <= tmp_select_section_coefficients_coeff_3_3_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_3_2_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_3_2_portyFile, "%b\n", tmp_select_section_coefficients_coeff_3_2_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_3_2_porty_int <= tmp_select_section_coefficients_coeff_3_2_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_3_10_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_3_10_portyFile, "%b\n", tmp_select_section_coefficients_coeff_3_10_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_3_10_porty_int <= tmp_select_section_coefficients_coeff_3_10_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_3_1_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_3_1_portyFile, "%b\n", tmp_select_section_coefficients_coeff_3_1_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_3_1_porty_int <= tmp_select_section_coefficients_coeff_3_1_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_3_0_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_3_0_portyFile, "%b\n", tmp_select_section_coefficients_coeff_3_0_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_3_0_porty_int <= tmp_select_section_coefficients_coeff_3_0_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_2_9_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_2_9_portyFile, "%b\n", tmp_select_section_coefficients_coeff_2_9_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_2_9_porty_int <= tmp_select_section_coefficients_coeff_2_9_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_2_8_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_2_8_portyFile, "%b\n", tmp_select_section_coefficients_coeff_2_8_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_2_8_porty_int <= tmp_select_section_coefficients_coeff_2_8_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_2_7_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_2_7_portyFile, "%b\n", tmp_select_section_coefficients_coeff_2_7_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_2_7_porty_int <= tmp_select_section_coefficients_coeff_2_7_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_2_6_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_2_6_portyFile, "%b\n", tmp_select_section_coefficients_coeff_2_6_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_2_6_porty_int <= tmp_select_section_coefficients_coeff_2_6_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_2_5_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_2_5_portyFile, "%b\n", tmp_select_section_coefficients_coeff_2_5_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_2_5_porty_int <= tmp_select_section_coefficients_coeff_2_5_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_2_4_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_2_4_portyFile, "%b\n", tmp_select_section_coefficients_coeff_2_4_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_2_4_porty_int <= tmp_select_section_coefficients_coeff_2_4_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_2_3_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_2_3_portyFile, "%b\n", tmp_select_section_coefficients_coeff_2_3_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_2_3_porty_int <= tmp_select_section_coefficients_coeff_2_3_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_2_2_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_2_2_portyFile, "%b\n", tmp_select_section_coefficients_coeff_2_2_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_2_2_porty_int <= tmp_select_section_coefficients_coeff_2_2_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_2_10_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_2_10_portyFile, "%b\n", tmp_select_section_coefficients_coeff_2_10_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_2_10_porty_int <= tmp_select_section_coefficients_coeff_2_10_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_2_1_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_2_1_portyFile, "%b\n", tmp_select_section_coefficients_coeff_2_1_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_2_1_porty_int <= tmp_select_section_coefficients_coeff_2_1_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_2_0_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_2_0_portyFile, "%b\n", tmp_select_section_coefficients_coeff_2_0_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_2_0_porty_int <= tmp_select_section_coefficients_coeff_2_0_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_1_9_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_1_9_portyFile, "%b\n", tmp_select_section_coefficients_coeff_1_9_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_1_9_porty_int <= tmp_select_section_coefficients_coeff_1_9_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_1_8_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_1_8_portyFile, "%b\n", tmp_select_section_coefficients_coeff_1_8_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_1_8_porty_int <= tmp_select_section_coefficients_coeff_1_8_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_1_7_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_1_7_portyFile, "%b\n", tmp_select_section_coefficients_coeff_1_7_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_1_7_porty_int <= tmp_select_section_coefficients_coeff_1_7_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_1_6_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_1_6_portyFile, "%b\n", tmp_select_section_coefficients_coeff_1_6_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_1_6_porty_int <= tmp_select_section_coefficients_coeff_1_6_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_1_5_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_1_5_portyFile, "%b\n", tmp_select_section_coefficients_coeff_1_5_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_1_5_porty_int <= tmp_select_section_coefficients_coeff_1_5_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_1_4_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_1_4_portyFile, "%b\n", tmp_select_section_coefficients_coeff_1_4_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_1_4_porty_int <= tmp_select_section_coefficients_coeff_1_4_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_1_3_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_1_3_portyFile, "%b\n", tmp_select_section_coefficients_coeff_1_3_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_1_3_porty_int <= tmp_select_section_coefficients_coeff_1_3_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_1_2_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_1_2_portyFile, "%b\n", tmp_select_section_coefficients_coeff_1_2_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_1_2_porty_int <= tmp_select_section_coefficients_coeff_1_2_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_1_10_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_1_10_portyFile, "%b\n", tmp_select_section_coefficients_coeff_1_10_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_1_10_porty_int <= tmp_select_section_coefficients_coeff_1_10_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_1_1_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_1_1_portyFile, "%b\n", tmp_select_section_coefficients_coeff_1_1_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_1_1_porty_int <= tmp_select_section_coefficients_coeff_1_1_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(select_section_coefficients_coeff_1_0_portyFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(select_section_coefficients_coeff_1_0_portyFile, "%b\n", tmp_select_section_coefficients_coeff_1_0_porty) < 1)
        isSimulationEnd1 = 1;  
      else
        select_section_coefficients_coeff_1_0_porty_int <= tmp_select_section_coefficients_coeff_1_0_porty;
    end
    if(isNotFirstRise1) begin
      if ($feof(x_adcFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(x_adcFile, "%b\n", tmp_x_adc) < 1)
        isSimulationEnd1 = 1;  
      else
        x_adc_int <= tmp_x_adc;
    end
    if(isNotFirstRise1) begin
      if ($feof(srdyiFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(srdyiFile, "%b\n", tmp_srdyi) < 1)
        isSimulationEnd1 = 1;  
      else
        srdyi_int <= tmp_srdyi;
    end
    if(isNotFirstRise1) begin
      if ($feof(section_limitFile) != 0)
        isSimulationEnd1 = 1;  
      else
      if ($fscanf(section_limitFile, "%b\n", tmp_section_limit) < 1)
        isSimulationEnd1 = 1;  
      else
        section_limit_int <= tmp_section_limit;
    end
  end
//-- Test Outputs-----
  always@(posedge clk_int)
    begin 
    misFlg1  = 0;
  if (GlobalReset_int==0)
    begin 
    if(loop_cnt1 >= 0) 
    begin
          tmp_srdyo = srdyo_int;

          ch31_tmp_x_lin = ch31_x_lin_int;
          ch30_tmp_x_lin = ch30_x_lin_int;
          ch29_tmp_x_lin = ch29_x_lin_int;
          ch28_tmp_x_lin = ch28_x_lin_int;
          ch27_tmp_x_lin = ch27_x_lin_int;
          ch26_tmp_x_lin = ch26_x_lin_int;
          ch25_tmp_x_lin = ch25_x_lin_int;
          ch24_tmp_x_lin = ch24_x_lin_int;
          ch23_tmp_x_lin = ch23_x_lin_int;
          ch22_tmp_x_lin = ch22_x_lin_int;
          ch21_tmp_x_lin = ch21_x_lin_int;
          ch20_tmp_x_lin = ch20_x_lin_int;
          ch19_tmp_x_lin = ch19_x_lin_int;
          ch18_tmp_x_lin = ch18_x_lin_int;
          ch17_tmp_x_lin = ch17_x_lin_int;
          ch16_tmp_x_lin = ch16_x_lin_int;
          ch15_tmp_x_lin = ch15_x_lin_int;
          ch14_tmp_x_lin = ch14_x_lin_int;
          ch13_tmp_x_lin = ch13_x_lin_int;
          ch12_tmp_x_lin = ch12_x_lin_int;
          ch11_tmp_x_lin = ch11_x_lin_int;
          ch10_tmp_x_lin = ch10_x_lin_int;
          ch9_tmp_x_lin = ch9_x_lin_int;
          ch8_tmp_x_lin = ch8_x_lin_int;
          ch7_tmp_x_lin = ch7_x_lin_int;
          ch6_tmp_x_lin = ch6_x_lin_int;
          ch5_tmp_x_lin = ch5_x_lin_int;
          ch4_tmp_x_lin = ch4_x_lin_int;
          ch3_tmp_x_lin = ch3_x_lin_int;
          ch2_tmp_x_lin = ch2_x_lin_int;
          ch1_tmp_x_lin = ch1_x_lin_int;
          ch0_tmp_x_lin = ch0_x_lin_int;

          //log the simulation outputs
          $fdisplay(srdyoOutFile, "%b",tmp_srdyo);

          $fdisplay(ch31_x_linOutFile, "%b",ch31_tmp_x_lin);
          $fdisplay(ch30_x_linOutFile, "%b",ch30_tmp_x_lin);
          $fdisplay(ch29_x_linOutFile, "%b",ch29_tmp_x_lin);
          $fdisplay(ch28_x_linOutFile, "%b",ch28_tmp_x_lin);
          $fdisplay(ch27_x_linOutFile, "%b",ch27_tmp_x_lin);
          $fdisplay(ch26_x_linOutFile, "%b",ch26_tmp_x_lin);
          $fdisplay(ch25_x_linOutFile, "%b",ch25_tmp_x_lin);
          $fdisplay(ch24_x_linOutFile, "%b",ch24_tmp_x_lin);
          $fdisplay(ch23_x_linOutFile, "%b",ch23_tmp_x_lin);
          $fdisplay(ch22_x_linOutFile, "%b",ch22_tmp_x_lin);
          $fdisplay(ch21_x_linOutFile, "%b",ch21_tmp_x_lin);
          $fdisplay(ch20_x_linOutFile, "%b",ch20_tmp_x_lin);
          $fdisplay(ch19_x_linOutFile, "%b",ch19_tmp_x_lin);
          $fdisplay(ch18_x_linOutFile, "%b",ch18_tmp_x_lin);
          $fdisplay(ch17_x_linOutFile, "%b",ch17_tmp_x_lin);
          $fdisplay(ch16_x_linOutFile, "%b",ch16_tmp_x_lin);
          $fdisplay(ch15_x_linOutFile, "%b",ch15_tmp_x_lin);
          $fdisplay(ch14_x_linOutFile, "%b",ch14_tmp_x_lin);
          $fdisplay(ch13_x_linOutFile, "%b",ch13_tmp_x_lin);
          $fdisplay(ch12_x_linOutFile, "%b",ch12_tmp_x_lin);
          $fdisplay(ch11_x_linOutFile, "%b",ch11_tmp_x_lin);
          $fdisplay(ch10_x_linOutFile, "%b",ch10_tmp_x_lin);
          $fdisplay(ch9_x_linOutFile, "%b",ch9_tmp_x_lin);
          $fdisplay(ch8_x_linOutFile, "%b",ch8_tmp_x_lin);
          $fdisplay(ch7_x_linOutFile, "%b",ch7_tmp_x_lin);
          $fdisplay(ch6_x_linOutFile, "%b",ch6_tmp_x_lin);
          $fdisplay(ch5_x_linOutFile, "%b",ch5_tmp_x_lin);
          $fdisplay(ch4_x_linOutFile, "%b",ch4_tmp_x_lin);
          $fdisplay(ch3_x_linOutFile, "%b",ch3_tmp_x_lin);
          $fdisplay(ch2_x_linOutFile, "%b",ch2_tmp_x_lin);
          $fdisplay(ch1_x_linOutFile, "%b",ch1_tmp_x_lin);
          $fdisplay(ch0_x_linOutFile, "%b",ch0_tmp_x_lin);



      if(tmp_srdyo == 1)  
        begin
          ref_srdyo = 0;

          while(ref_srdyo !== 1)
            begin
              if (($feof(x_linRefFile) != 0) || ($feof(srdyoRefFile) != 0))
                isSimulationEnd1 = 1;  
              else 
              if (($fscanf(x_linRefFile, "%b\n", ref_x_lin) < 1) || ($fscanf(srdyoRefFile, "%b\n", ref_srdyo) < 1 ) )
                isSimulationEnd1 = 1;  
              else 
                begin
        
                end
            end
          

          if(ch31_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $display("Vector failed for port: ch31_x_lin");
            $display("Expecting: %b",ref_x_lin);
            $display("Actual:    %b",ch31_tmp_x_lin);

            $fdisplay(logFile, "Vector failed for port: ch31_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch31_tmp_x_lin);
          end

          if(ch30_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch30_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch30_tmp_x_lin);
          end

          if(ch29_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch29_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch29_tmp_x_lin);
          end

          if(ch28_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch28_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch28_tmp_x_lin);
          end

          if(ch27_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch27_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch27_tmp_x_lin);
          end

          if(ch26_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch26_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch26_tmp_x_lin);
          end

          if(ch25_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch25_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch25_tmp_x_lin);
          end

          if(ch24_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch24_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch24_tmp_x_lin);
          end

          if(ch23_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch23_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch23_tmp_x_lin);
          end

          if(ch22_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch22_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch22_tmp_x_lin);
          end

          if(ch21_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch21_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch21_tmp_x_lin);
          end

          if(ch20_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch20_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch20_tmp_x_lin);
          end

          if(ch19_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch19_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch19_tmp_x_lin);
          end

          if(ch18_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch18_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch18_tmp_x_lin);
          end

          if(ch17_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch17_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch17_tmp_x_lin);
          end

          if(ch16_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch16_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch16_tmp_x_lin);
          end

          if(ch15_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch15_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch15_tmp_x_lin);
          end

          if(ch14_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch14_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch14_tmp_x_lin);
          end

          if(ch13_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch13_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch13_tmp_x_lin);
          end

          if(ch12_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch12_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch12_tmp_x_lin);
          end

          if(ch11_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch11_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch11_tmp_x_lin);
          end

          if(ch10_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch10_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch10_tmp_x_lin);
          end

          if(ch9_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch9_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch9_tmp_x_lin);
          end

          if(ch8_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch8_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch8_tmp_x_lin);
          end

          if(ch7_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch7_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch7_tmp_x_lin);
          end

          if(ch6_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch6_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch6_tmp_x_lin);
          end

          if(ch5_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch5_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch5_tmp_x_lin);
          end

          if(ch4_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch4_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch4_tmp_x_lin);
          end

          if(ch3_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch3_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch3_tmp_x_lin);
          end

          if(ch2_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch2_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch2_tmp_x_lin);
          end

          if(ch1_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch1_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch1_tmp_x_lin);
          end

          if(ch0_tmp_x_lin !== ref_x_lin) 
          begin
            misFlg1  = 1;
            $fdisplay(logFile, "Vector failed for port: ch0_x_lin");
            $fdisplay(logFile, "Expecting: %b",ref_x_lin);
            $fdisplay(logFile, "Actual:    %b",ch0_tmp_x_lin);
          end
        
          if(misFlg1==1)
          begin
            mismatch1 = mismatch1 + 1;
            $fdisplay(logFile, "Mismatch at clk cycle no: %d",loop_cnt1);
            $fdisplay(logFile, "--------------------------------------");
          end
          else begin
            matches1 = matches1 + 1;
          end

        end


    end//loop_cnt >= 1

    loop_cnt1 <= loop_cnt1 + 1;
  end //GlobalReset_int == 0 
end //always

//------------------------------------------------------------
//-- Print Final Simulation Summary --
//------------------------------------------------------------
  always@(isSimulationEnd)
  begin
    if (isSimulationEnd) 
    begin
      $display("End Simulation");
      if((mismatch == 0) && (matches == 41))
      begin
        $display("*******  Verilog Verification Successful! *******");
        $fdisplay(logFile, "*******  Verilog Verification Successful! *******");
        $display("No extra latency ");
        $fdisplay(logFile, "No extra latency ");
      end
      else
      begin
        $display("*******  Verilog Verification Failed! *******");
        $display("Failed with %d mismatches and %d matches", mismatch, matches);
        $fdisplay(logFile,"Failed with %d mismatches and %d matches", mismatch, matches);
      end 
    $finish;
    end 
  end //always
endmodule
