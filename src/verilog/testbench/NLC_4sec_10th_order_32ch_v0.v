
module NLC_4sec_10th_order_32ch_v0 (
  input clk,
  input GlobalReset,

  output srdyo, // ufix1
  input srdyi, // ufix1


  //NLC ports for channel 31
  output [20:0] ch31_x_lin, // sfix21
  input  [20:0] ch31_x_adc, // sfix21
  input  [19:0] ch31_section_limit, // ufix20
  input  [31:0] ch31_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch31_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 30
  output [20:0] ch30_x_lin, // sfix21
  input  [20:0] ch30_x_adc, // sfix21
  input  [19:0] ch30_section_limit, // ufix20
  input  [31:0] ch30_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch30_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 29
  output [20:0] ch29_x_lin, // sfix21
  input  [20:0] ch29_x_adc, // sfix21
  input  [19:0] ch29_section_limit, // ufix20
  input  [31:0] ch29_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch29_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 28
  output [20:0] ch28_x_lin, // sfix21
  input  [20:0] ch28_x_adc, // sfix21
  input  [19:0] ch28_section_limit, // ufix20
  input  [31:0] ch28_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch28_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 27
  output [20:0] ch27_x_lin, // sfix21
  input  [20:0] ch27_x_adc, // sfix21
  input  [19:0] ch27_section_limit, // ufix20
  input  [31:0] ch27_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch27_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 26
  output [20:0] ch26_x_lin, // sfix21
  input  [20:0] ch26_x_adc, // sfix21
  input  [19:0] ch26_section_limit, // ufix20
  input  [31:0] ch26_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch26_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 25
  output [20:0] ch25_x_lin, // sfix21
  input  [20:0] ch25_x_adc, // sfix21
  input  [19:0] ch25_section_limit, // ufix20
  input  [31:0] ch25_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch25_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 24
  output [20:0] ch24_x_lin, // sfix21
  input  [20:0] ch24_x_adc, // sfix21
  input  [19:0] ch24_section_limit, // ufix20
  input  [31:0] ch24_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch24_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 23
  output [20:0] ch23_x_lin, // sfix21
  input  [20:0] ch23_x_adc, // sfix21
  input  [19:0] ch23_section_limit, // ufix20
  input  [31:0] ch23_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch23_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 22
  output [20:0] ch22_x_lin, // sfix21
  input  [20:0] ch22_x_adc, // sfix21
  input  [19:0] ch22_section_limit, // ufix20
  input  [31:0] ch22_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch22_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 21
  output [20:0] ch21_x_lin, // sfix21
  input  [20:0] ch21_x_adc, // sfix21
  input  [19:0] ch21_section_limit, // ufix20
  input  [31:0] ch21_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch21_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 20
  output [20:0] ch20_x_lin, // sfix21
  input  [20:0] ch20_x_adc, // sfix21
  input  [19:0] ch20_section_limit, // ufix20
  input  [31:0] ch20_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch20_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 19
  output [20:0] ch19_x_lin, // sfix21
  input  [20:0] ch19_x_adc, // sfix21
  input  [19:0] ch19_section_limit, // ufix20
  input  [31:0] ch19_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch19_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 18
  output [20:0] ch18_x_lin, // sfix21
  input  [20:0] ch18_x_adc, // sfix21
  input  [19:0] ch18_section_limit, // ufix20
  input  [31:0] ch18_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch18_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 17
  output [20:0] ch17_x_lin, // sfix21
  input  [20:0] ch17_x_adc, // sfix21
  input  [19:0] ch17_section_limit, // ufix20
  input  [31:0] ch17_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch17_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 16
  output [20:0] ch16_x_lin, // sfix21
  input  [20:0] ch16_x_adc, // sfix21
  input  [19:0] ch16_section_limit, // ufix20
  input  [31:0] ch16_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch16_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 15
  output [20:0] ch15_x_lin, // sfix21
  input  [20:0] ch15_x_adc, // sfix21
  input  [19:0] ch15_section_limit, // ufix20
  input  [31:0] ch15_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 14
  output [20:0] ch14_x_lin, // sfix21
  input  [20:0] ch14_x_adc, // sfix21
  input  [19:0] ch14_section_limit, // ufix20
  input  [31:0] ch14_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 13
  output [20:0] ch13_x_lin, // sfix21
  input  [20:0] ch13_x_adc, // sfix21
  input  [19:0] ch13_section_limit, // ufix20
  input  [31:0] ch13_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 12
  output [20:0] ch12_x_lin, // sfix21
  input  [20:0] ch12_x_adc, // sfix21
  input  [19:0] ch12_section_limit, // ufix20
  input  [31:0] ch12_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 11
  output [20:0] ch11_x_lin, // sfix21
  input  [20:0] ch11_x_adc, // sfix21
  input  [19:0] ch11_section_limit, // ufix20
  input  [31:0] ch11_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 10
  output [20:0] ch10_x_lin, // sfix21
  input  [20:0] ch10_x_adc, // sfix21
  input  [19:0] ch10_section_limit, // ufix20
  input  [31:0] ch10_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 9
  output [20:0] ch9_x_lin, // sfix21
  input  [20:0] ch9_x_adc, // sfix21
  input  [19:0] ch9_section_limit, // ufix20
  input  [31:0] ch9_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 8
  output [20:0] ch8_x_lin, // sfix21
  input  [20:0] ch8_x_adc, // sfix21
  input  [19:0] ch8_section_limit, // ufix20
  input  [31:0] ch8_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 7
  output [20:0] ch7_x_lin, // sfix21
  input  [20:0] ch7_x_adc, // sfix21
  input  [19:0] ch7_section_limit, // ufix20
  input  [31:0] ch7_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 6
  output [20:0] ch6_x_lin, // sfix21
  input  [20:0] ch6_x_adc, // sfix21
  input  [19:0] ch6_section_limit, // ufix20
  input  [31:0] ch6_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 5
  output [20:0] ch5_x_lin, // sfix21
  input  [20:0] ch5_x_adc, // sfix21
  input  [19:0] ch5_section_limit, // ufix20
  input  [31:0] ch5_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 4
  output [20:0] ch4_x_lin, // sfix21
  input  [20:0] ch4_x_adc, // sfix21
  input  [19:0] ch4_section_limit, // ufix20
  input  [31:0] ch4_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 3
  output [20:0] ch3_x_lin, // sfix21
  input  [20:0] ch3_x_adc, // sfix21
  input  [19:0] ch3_section_limit, // ufix20
  input  [31:0] ch3_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 2
  output [20:0] ch2_x_lin, // sfix21
  input  [20:0] ch2_x_adc, // sfix21
  input  [19:0] ch2_section_limit, // ufix20
  input  [31:0] ch2_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 1
  output [20:0] ch1_x_lin, // sfix21
  input  [20:0] ch1_x_adc, // sfix21
  input  [19:0] ch1_section_limit, // ufix20
  input  [31:0] ch1_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 0
  output [20:0] ch0_x_lin, // sfix21
  input  [20:0] ch0_x_adc, // sfix21
  input  [19:0] ch0_section_limit, // ufix20
  input  [31:0] ch0_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_9_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_10_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_9_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_10_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_9_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_10_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_9_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_10_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_0_porty // ufix32

);

NLC_1ch UUT(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),

  //Input valid and output ready signals (one for all 32ch)  
  .srdyi(srdyi), 
  .srdyo(srdyo), 

  .ch31_x_adc(ch31_x_adc),//NLC output 
  .ch31_x_lin(ch31_x_lin),//ADC output 
  .ch31_section_limit(ch31_section_limit),//X-value that separates the sections 
  .ch31_recip_stdev_4(ch31_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch31_recip_stdev_3(ch31_select_section_coefficients_stdev_3_porty), 
  .ch31_recip_stdev_2(ch31_select_section_coefficients_stdev_2_porty), 
  .ch31_recip_stdev_1(ch31_select_section_coefficients_stdev_1_porty), 
  .ch31_neg_mean_4(ch31_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch31_neg_mean_3(ch31_select_section_coefficients_mean_3_porty), 
  .ch31_neg_mean_2(ch31_select_section_coefficients_mean_2_porty), 
  .ch31_neg_mean_1(ch31_select_section_coefficients_mean_1_porty), 
  .ch31_coeff_4_10(ch31_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch31_coeff_4_9(ch31_select_section_coefficients_coeff_4_9_porty), 
  .ch31_coeff_4_8(ch31_select_section_coefficients_coeff_4_8_porty), 
  .ch31_coeff_4_7(ch31_select_section_coefficients_coeff_4_7_porty), 
  .ch31_coeff_4_6(ch31_select_section_coefficients_coeff_4_6_porty), 
  .ch31_coeff_4_5(ch31_select_section_coefficients_coeff_4_5_porty), 
  .ch31_coeff_4_4(ch31_select_section_coefficients_coeff_4_4_porty), 
  .ch31_coeff_4_3(ch31_select_section_coefficients_coeff_4_3_porty), 
  .ch31_coeff_4_2(ch31_select_section_coefficients_coeff_4_2_porty), 
  .ch31_coeff_4_1(ch31_select_section_coefficients_coeff_4_1_porty), 
  .ch31_coeff_4_0(ch31_select_section_coefficients_coeff_4_0_porty), 
  .ch31_coeff_3_10(ch31_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch31_coeff_3_9(ch31_select_section_coefficients_coeff_3_9_porty), 
  .ch31_coeff_3_8(ch31_select_section_coefficients_coeff_3_8_porty), 
  .ch31_coeff_3_7(ch31_select_section_coefficients_coeff_3_7_porty), 
  .ch31_coeff_3_6(ch31_select_section_coefficients_coeff_3_6_porty), 
  .ch31_coeff_3_5(ch31_select_section_coefficients_coeff_3_5_porty), 
  .ch31_coeff_3_4(ch31_select_section_coefficients_coeff_3_4_porty), 
  .ch31_coeff_3_3(ch31_select_section_coefficients_coeff_3_3_porty), 
  .ch31_coeff_3_2(ch31_select_section_coefficients_coeff_3_2_porty), 
  .ch31_coeff_3_1(ch31_select_section_coefficients_coeff_3_1_porty), 
  .ch31_coeff_3_0(ch31_select_section_coefficients_coeff_3_0_porty), 
  .ch31_coeff_2_10(ch31_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch31_coeff_2_9(ch31_select_section_coefficients_coeff_2_9_porty), 
  .ch31_coeff_2_8(ch31_select_section_coefficients_coeff_2_8_porty), 
  .ch31_coeff_2_7(ch31_select_section_coefficients_coeff_2_7_porty), 
  .ch31_coeff_2_6(ch31_select_section_coefficients_coeff_2_6_porty), 
  .ch31_coeff_2_5(ch31_select_section_coefficients_coeff_2_5_porty), 
  .ch31_coeff_2_4(ch31_select_section_coefficients_coeff_2_4_porty), 
  .ch31_coeff_2_3(ch31_select_section_coefficients_coeff_2_3_porty), 
  .ch31_coeff_2_2(ch31_select_section_coefficients_coeff_2_2_porty), 
  .ch31_coeff_2_1(ch31_select_section_coefficients_coeff_2_1_porty), 
  .ch31_coeff_2_0(ch31_select_section_coefficients_coeff_2_0_porty), 
  .ch31_coeff_1_10(ch31_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch31_coeff_1_9(ch31_select_section_coefficients_coeff_1_9_porty), 
  .ch31_coeff_1_8(ch31_select_section_coefficients_coeff_1_8_porty), 
  .ch31_coeff_1_7(ch31_select_section_coefficients_coeff_1_7_porty), 
  .ch31_coeff_1_6(ch31_select_section_coefficients_coeff_1_6_porty), 
  .ch31_coeff_1_5(ch31_select_section_coefficients_coeff_1_5_porty), 
  .ch31_coeff_1_4(ch31_select_section_coefficients_coeff_1_4_porty), 
  .ch31_coeff_1_3(ch31_select_section_coefficients_coeff_1_3_porty), 
  .ch31_coeff_1_2(ch31_select_section_coefficients_coeff_1_2_porty), 
  .ch31_coeff_1_1(ch31_select_section_coefficients_coeff_1_1_porty), 
  .ch31_coeff_1_0(ch31_select_section_coefficients_coeff_1_0_porty), 

  .ch30_x_adc(ch30_x_adc),//NLC output 
  .ch30_x_lin(ch30_x_lin),//ADC output 
  .ch30_section_limit(ch30_section_limit),//X-value that separates the sections 
  .ch30_recip_stdev_4(ch30_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch30_recip_stdev_3(ch30_select_section_coefficients_stdev_3_porty), 
  .ch30_recip_stdev_2(ch30_select_section_coefficients_stdev_2_porty), 
  .ch30_recip_stdev_1(ch30_select_section_coefficients_stdev_1_porty), 
  .ch30_neg_mean_4(ch30_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch30_neg_mean_3(ch30_select_section_coefficients_mean_3_porty), 
  .ch30_neg_mean_2(ch30_select_section_coefficients_mean_2_porty), 
  .ch30_neg_mean_1(ch30_select_section_coefficients_mean_1_porty), 
  .ch30_coeff_4_10(ch30_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch30_coeff_4_9(ch30_select_section_coefficients_coeff_4_9_porty), 
  .ch30_coeff_4_8(ch30_select_section_coefficients_coeff_4_8_porty), 
  .ch30_coeff_4_7(ch30_select_section_coefficients_coeff_4_7_porty), 
  .ch30_coeff_4_6(ch30_select_section_coefficients_coeff_4_6_porty), 
  .ch30_coeff_4_5(ch30_select_section_coefficients_coeff_4_5_porty), 
  .ch30_coeff_4_4(ch30_select_section_coefficients_coeff_4_4_porty), 
  .ch30_coeff_4_3(ch30_select_section_coefficients_coeff_4_3_porty), 
  .ch30_coeff_4_2(ch30_select_section_coefficients_coeff_4_2_porty), 
  .ch30_coeff_4_1(ch30_select_section_coefficients_coeff_4_1_porty), 
  .ch30_coeff_4_0(ch30_select_section_coefficients_coeff_4_0_porty), 
  .ch30_coeff_3_10(ch30_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch30_coeff_3_9(ch30_select_section_coefficients_coeff_3_9_porty), 
  .ch30_coeff_3_8(ch30_select_section_coefficients_coeff_3_8_porty), 
  .ch30_coeff_3_7(ch30_select_section_coefficients_coeff_3_7_porty), 
  .ch30_coeff_3_6(ch30_select_section_coefficients_coeff_3_6_porty), 
  .ch30_coeff_3_5(ch30_select_section_coefficients_coeff_3_5_porty), 
  .ch30_coeff_3_4(ch30_select_section_coefficients_coeff_3_4_porty), 
  .ch30_coeff_3_3(ch30_select_section_coefficients_coeff_3_3_porty), 
  .ch30_coeff_3_2(ch30_select_section_coefficients_coeff_3_2_porty), 
  .ch30_coeff_3_1(ch30_select_section_coefficients_coeff_3_1_porty), 
  .ch30_coeff_3_0(ch30_select_section_coefficients_coeff_3_0_porty), 
  .ch30_coeff_2_10(ch30_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch30_coeff_2_9(ch30_select_section_coefficients_coeff_2_9_porty), 
  .ch30_coeff_2_8(ch30_select_section_coefficients_coeff_2_8_porty), 
  .ch30_coeff_2_7(ch30_select_section_coefficients_coeff_2_7_porty), 
  .ch30_coeff_2_6(ch30_select_section_coefficients_coeff_2_6_porty), 
  .ch30_coeff_2_5(ch30_select_section_coefficients_coeff_2_5_porty), 
  .ch30_coeff_2_4(ch30_select_section_coefficients_coeff_2_4_porty), 
  .ch30_coeff_2_3(ch30_select_section_coefficients_coeff_2_3_porty), 
  .ch30_coeff_2_2(ch30_select_section_coefficients_coeff_2_2_porty), 
  .ch30_coeff_2_1(ch30_select_section_coefficients_coeff_2_1_porty), 
  .ch30_coeff_2_0(ch30_select_section_coefficients_coeff_2_0_porty), 
  .ch30_coeff_1_10(ch30_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch30_coeff_1_9(ch30_select_section_coefficients_coeff_1_9_porty), 
  .ch30_coeff_1_8(ch30_select_section_coefficients_coeff_1_8_porty), 
  .ch30_coeff_1_7(ch30_select_section_coefficients_coeff_1_7_porty), 
  .ch30_coeff_1_6(ch30_select_section_coefficients_coeff_1_6_porty), 
  .ch30_coeff_1_5(ch30_select_section_coefficients_coeff_1_5_porty), 
  .ch30_coeff_1_4(ch30_select_section_coefficients_coeff_1_4_porty), 
  .ch30_coeff_1_3(ch30_select_section_coefficients_coeff_1_3_porty), 
  .ch30_coeff_1_2(ch30_select_section_coefficients_coeff_1_2_porty), 
  .ch30_coeff_1_1(ch30_select_section_coefficients_coeff_1_1_porty), 
  .ch30_coeff_1_0(ch30_select_section_coefficients_coeff_1_0_porty), 

  .ch29_x_adc(ch29_x_adc),//NLC output 
  .ch29_x_lin(ch29_x_lin),//ADC output 
  .ch29_section_limit(ch29_section_limit),//X-value that separates the sections 
  .ch29_recip_stdev_4(ch29_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch29_recip_stdev_3(ch29_select_section_coefficients_stdev_3_porty), 
  .ch29_recip_stdev_2(ch29_select_section_coefficients_stdev_2_porty), 
  .ch29_recip_stdev_1(ch29_select_section_coefficients_stdev_1_porty), 
  .ch29_neg_mean_4(ch29_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch29_neg_mean_3(ch29_select_section_coefficients_mean_3_porty), 
  .ch29_neg_mean_2(ch29_select_section_coefficients_mean_2_porty), 
  .ch29_neg_mean_1(ch29_select_section_coefficients_mean_1_porty), 
  .ch29_coeff_4_10(ch29_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch29_coeff_4_9(ch29_select_section_coefficients_coeff_4_9_porty), 
  .ch29_coeff_4_8(ch29_select_section_coefficients_coeff_4_8_porty), 
  .ch29_coeff_4_7(ch29_select_section_coefficients_coeff_4_7_porty), 
  .ch29_coeff_4_6(ch29_select_section_coefficients_coeff_4_6_porty), 
  .ch29_coeff_4_5(ch29_select_section_coefficients_coeff_4_5_porty), 
  .ch29_coeff_4_4(ch29_select_section_coefficients_coeff_4_4_porty), 
  .ch29_coeff_4_3(ch29_select_section_coefficients_coeff_4_3_porty), 
  .ch29_coeff_4_2(ch29_select_section_coefficients_coeff_4_2_porty), 
  .ch29_coeff_4_1(ch29_select_section_coefficients_coeff_4_1_porty), 
  .ch29_coeff_4_0(ch29_select_section_coefficients_coeff_4_0_porty), 
  .ch29_coeff_3_10(ch29_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch29_coeff_3_9(ch29_select_section_coefficients_coeff_3_9_porty), 
  .ch29_coeff_3_8(ch29_select_section_coefficients_coeff_3_8_porty), 
  .ch29_coeff_3_7(ch29_select_section_coefficients_coeff_3_7_porty), 
  .ch29_coeff_3_6(ch29_select_section_coefficients_coeff_3_6_porty), 
  .ch29_coeff_3_5(ch29_select_section_coefficients_coeff_3_5_porty), 
  .ch29_coeff_3_4(ch29_select_section_coefficients_coeff_3_4_porty), 
  .ch29_coeff_3_3(ch29_select_section_coefficients_coeff_3_3_porty), 
  .ch29_coeff_3_2(ch29_select_section_coefficients_coeff_3_2_porty), 
  .ch29_coeff_3_1(ch29_select_section_coefficients_coeff_3_1_porty), 
  .ch29_coeff_3_0(ch29_select_section_coefficients_coeff_3_0_porty), 
  .ch29_coeff_2_10(ch29_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch29_coeff_2_9(ch29_select_section_coefficients_coeff_2_9_porty), 
  .ch29_coeff_2_8(ch29_select_section_coefficients_coeff_2_8_porty), 
  .ch29_coeff_2_7(ch29_select_section_coefficients_coeff_2_7_porty), 
  .ch29_coeff_2_6(ch29_select_section_coefficients_coeff_2_6_porty), 
  .ch29_coeff_2_5(ch29_select_section_coefficients_coeff_2_5_porty), 
  .ch29_coeff_2_4(ch29_select_section_coefficients_coeff_2_4_porty), 
  .ch29_coeff_2_3(ch29_select_section_coefficients_coeff_2_3_porty), 
  .ch29_coeff_2_2(ch29_select_section_coefficients_coeff_2_2_porty), 
  .ch29_coeff_2_1(ch29_select_section_coefficients_coeff_2_1_porty), 
  .ch29_coeff_2_0(ch29_select_section_coefficients_coeff_2_0_porty), 
  .ch29_coeff_1_10(ch29_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch29_coeff_1_9(ch29_select_section_coefficients_coeff_1_9_porty), 
  .ch29_coeff_1_8(ch29_select_section_coefficients_coeff_1_8_porty), 
  .ch29_coeff_1_7(ch29_select_section_coefficients_coeff_1_7_porty), 
  .ch29_coeff_1_6(ch29_select_section_coefficients_coeff_1_6_porty), 
  .ch29_coeff_1_5(ch29_select_section_coefficients_coeff_1_5_porty), 
  .ch29_coeff_1_4(ch29_select_section_coefficients_coeff_1_4_porty), 
  .ch29_coeff_1_3(ch29_select_section_coefficients_coeff_1_3_porty), 
  .ch29_coeff_1_2(ch29_select_section_coefficients_coeff_1_2_porty), 
  .ch29_coeff_1_1(ch29_select_section_coefficients_coeff_1_1_porty), 
  .ch29_coeff_1_0(ch29_select_section_coefficients_coeff_1_0_porty), 

  .ch28_x_adc(ch28_x_adc),//NLC output 
  .ch28_x_lin(ch28_x_lin),//ADC output 
  .ch28_section_limit(ch28_section_limit),//X-value that separates the sections 
  .ch28_recip_stdev_4(ch28_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch28_recip_stdev_3(ch28_select_section_coefficients_stdev_3_porty), 
  .ch28_recip_stdev_2(ch28_select_section_coefficients_stdev_2_porty), 
  .ch28_recip_stdev_1(ch28_select_section_coefficients_stdev_1_porty), 
  .ch28_neg_mean_4(ch28_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch28_neg_mean_3(ch28_select_section_coefficients_mean_3_porty), 
  .ch28_neg_mean_2(ch28_select_section_coefficients_mean_2_porty), 
  .ch28_neg_mean_1(ch28_select_section_coefficients_mean_1_porty), 
  .ch28_coeff_4_10(ch28_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch28_coeff_4_9(ch28_select_section_coefficients_coeff_4_9_porty), 
  .ch28_coeff_4_8(ch28_select_section_coefficients_coeff_4_8_porty), 
  .ch28_coeff_4_7(ch28_select_section_coefficients_coeff_4_7_porty), 
  .ch28_coeff_4_6(ch28_select_section_coefficients_coeff_4_6_porty), 
  .ch28_coeff_4_5(ch28_select_section_coefficients_coeff_4_5_porty), 
  .ch28_coeff_4_4(ch28_select_section_coefficients_coeff_4_4_porty), 
  .ch28_coeff_4_3(ch28_select_section_coefficients_coeff_4_3_porty), 
  .ch28_coeff_4_2(ch28_select_section_coefficients_coeff_4_2_porty), 
  .ch28_coeff_4_1(ch28_select_section_coefficients_coeff_4_1_porty), 
  .ch28_coeff_4_0(ch28_select_section_coefficients_coeff_4_0_porty), 
  .ch28_coeff_3_10(ch28_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch28_coeff_3_9(ch28_select_section_coefficients_coeff_3_9_porty), 
  .ch28_coeff_3_8(ch28_select_section_coefficients_coeff_3_8_porty), 
  .ch28_coeff_3_7(ch28_select_section_coefficients_coeff_3_7_porty), 
  .ch28_coeff_3_6(ch28_select_section_coefficients_coeff_3_6_porty), 
  .ch28_coeff_3_5(ch28_select_section_coefficients_coeff_3_5_porty), 
  .ch28_coeff_3_4(ch28_select_section_coefficients_coeff_3_4_porty), 
  .ch28_coeff_3_3(ch28_select_section_coefficients_coeff_3_3_porty), 
  .ch28_coeff_3_2(ch28_select_section_coefficients_coeff_3_2_porty), 
  .ch28_coeff_3_1(ch28_select_section_coefficients_coeff_3_1_porty), 
  .ch28_coeff_3_0(ch28_select_section_coefficients_coeff_3_0_porty), 
  .ch28_coeff_2_10(ch28_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch28_coeff_2_9(ch28_select_section_coefficients_coeff_2_9_porty), 
  .ch28_coeff_2_8(ch28_select_section_coefficients_coeff_2_8_porty), 
  .ch28_coeff_2_7(ch28_select_section_coefficients_coeff_2_7_porty), 
  .ch28_coeff_2_6(ch28_select_section_coefficients_coeff_2_6_porty), 
  .ch28_coeff_2_5(ch28_select_section_coefficients_coeff_2_5_porty), 
  .ch28_coeff_2_4(ch28_select_section_coefficients_coeff_2_4_porty), 
  .ch28_coeff_2_3(ch28_select_section_coefficients_coeff_2_3_porty), 
  .ch28_coeff_2_2(ch28_select_section_coefficients_coeff_2_2_porty), 
  .ch28_coeff_2_1(ch28_select_section_coefficients_coeff_2_1_porty), 
  .ch28_coeff_2_0(ch28_select_section_coefficients_coeff_2_0_porty), 
  .ch28_coeff_1_10(ch28_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch28_coeff_1_9(ch28_select_section_coefficients_coeff_1_9_porty), 
  .ch28_coeff_1_8(ch28_select_section_coefficients_coeff_1_8_porty), 
  .ch28_coeff_1_7(ch28_select_section_coefficients_coeff_1_7_porty), 
  .ch28_coeff_1_6(ch28_select_section_coefficients_coeff_1_6_porty), 
  .ch28_coeff_1_5(ch28_select_section_coefficients_coeff_1_5_porty), 
  .ch28_coeff_1_4(ch28_select_section_coefficients_coeff_1_4_porty), 
  .ch28_coeff_1_3(ch28_select_section_coefficients_coeff_1_3_porty), 
  .ch28_coeff_1_2(ch28_select_section_coefficients_coeff_1_2_porty), 
  .ch28_coeff_1_1(ch28_select_section_coefficients_coeff_1_1_porty), 
  .ch28_coeff_1_0(ch28_select_section_coefficients_coeff_1_0_porty), 

  .ch27_x_adc(ch27_x_adc),//NLC output 
  .ch27_x_lin(ch27_x_lin),//ADC output 
  .ch27_section_limit(ch27_section_limit),//X-value that separates the sections 
  .ch27_recip_stdev_4(ch27_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch27_recip_stdev_3(ch27_select_section_coefficients_stdev_3_porty), 
  .ch27_recip_stdev_2(ch27_select_section_coefficients_stdev_2_porty), 
  .ch27_recip_stdev_1(ch27_select_section_coefficients_stdev_1_porty), 
  .ch27_neg_mean_4(ch27_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch27_neg_mean_3(ch27_select_section_coefficients_mean_3_porty), 
  .ch27_neg_mean_2(ch27_select_section_coefficients_mean_2_porty), 
  .ch27_neg_mean_1(ch27_select_section_coefficients_mean_1_porty), 
  .ch27_coeff_4_10(ch27_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch27_coeff_4_9(ch27_select_section_coefficients_coeff_4_9_porty), 
  .ch27_coeff_4_8(ch27_select_section_coefficients_coeff_4_8_porty), 
  .ch27_coeff_4_7(ch27_select_section_coefficients_coeff_4_7_porty), 
  .ch27_coeff_4_6(ch27_select_section_coefficients_coeff_4_6_porty), 
  .ch27_coeff_4_5(ch27_select_section_coefficients_coeff_4_5_porty), 
  .ch27_coeff_4_4(ch27_select_section_coefficients_coeff_4_4_porty), 
  .ch27_coeff_4_3(ch27_select_section_coefficients_coeff_4_3_porty), 
  .ch27_coeff_4_2(ch27_select_section_coefficients_coeff_4_2_porty), 
  .ch27_coeff_4_1(ch27_select_section_coefficients_coeff_4_1_porty), 
  .ch27_coeff_4_0(ch27_select_section_coefficients_coeff_4_0_porty), 
  .ch27_coeff_3_10(ch27_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch27_coeff_3_9(ch27_select_section_coefficients_coeff_3_9_porty), 
  .ch27_coeff_3_8(ch27_select_section_coefficients_coeff_3_8_porty), 
  .ch27_coeff_3_7(ch27_select_section_coefficients_coeff_3_7_porty), 
  .ch27_coeff_3_6(ch27_select_section_coefficients_coeff_3_6_porty), 
  .ch27_coeff_3_5(ch27_select_section_coefficients_coeff_3_5_porty), 
  .ch27_coeff_3_4(ch27_select_section_coefficients_coeff_3_4_porty), 
  .ch27_coeff_3_3(ch27_select_section_coefficients_coeff_3_3_porty), 
  .ch27_coeff_3_2(ch27_select_section_coefficients_coeff_3_2_porty), 
  .ch27_coeff_3_1(ch27_select_section_coefficients_coeff_3_1_porty), 
  .ch27_coeff_3_0(ch27_select_section_coefficients_coeff_3_0_porty), 
  .ch27_coeff_2_10(ch27_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch27_coeff_2_9(ch27_select_section_coefficients_coeff_2_9_porty), 
  .ch27_coeff_2_8(ch27_select_section_coefficients_coeff_2_8_porty), 
  .ch27_coeff_2_7(ch27_select_section_coefficients_coeff_2_7_porty), 
  .ch27_coeff_2_6(ch27_select_section_coefficients_coeff_2_6_porty), 
  .ch27_coeff_2_5(ch27_select_section_coefficients_coeff_2_5_porty), 
  .ch27_coeff_2_4(ch27_select_section_coefficients_coeff_2_4_porty), 
  .ch27_coeff_2_3(ch27_select_section_coefficients_coeff_2_3_porty), 
  .ch27_coeff_2_2(ch27_select_section_coefficients_coeff_2_2_porty), 
  .ch27_coeff_2_1(ch27_select_section_coefficients_coeff_2_1_porty), 
  .ch27_coeff_2_0(ch27_select_section_coefficients_coeff_2_0_porty), 
  .ch27_coeff_1_10(ch27_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch27_coeff_1_9(ch27_select_section_coefficients_coeff_1_9_porty), 
  .ch27_coeff_1_8(ch27_select_section_coefficients_coeff_1_8_porty), 
  .ch27_coeff_1_7(ch27_select_section_coefficients_coeff_1_7_porty), 
  .ch27_coeff_1_6(ch27_select_section_coefficients_coeff_1_6_porty), 
  .ch27_coeff_1_5(ch27_select_section_coefficients_coeff_1_5_porty), 
  .ch27_coeff_1_4(ch27_select_section_coefficients_coeff_1_4_porty), 
  .ch27_coeff_1_3(ch27_select_section_coefficients_coeff_1_3_porty), 
  .ch27_coeff_1_2(ch27_select_section_coefficients_coeff_1_2_porty), 
  .ch27_coeff_1_1(ch27_select_section_coefficients_coeff_1_1_porty), 
  .ch27_coeff_1_0(ch27_select_section_coefficients_coeff_1_0_porty), 

  .ch26_x_adc(ch26_x_adc),//NLC output 
  .ch26_x_lin(ch26_x_lin),//ADC output 
  .ch26_section_limit(ch26_section_limit),//X-value that separates the sections 
  .ch26_recip_stdev_4(ch26_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch26_recip_stdev_3(ch26_select_section_coefficients_stdev_3_porty), 
  .ch26_recip_stdev_2(ch26_select_section_coefficients_stdev_2_porty), 
  .ch26_recip_stdev_1(ch26_select_section_coefficients_stdev_1_porty), 
  .ch26_neg_mean_4(ch26_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch26_neg_mean_3(ch26_select_section_coefficients_mean_3_porty), 
  .ch26_neg_mean_2(ch26_select_section_coefficients_mean_2_porty), 
  .ch26_neg_mean_1(ch26_select_section_coefficients_mean_1_porty), 
  .ch26_coeff_4_10(ch26_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch26_coeff_4_9(ch26_select_section_coefficients_coeff_4_9_porty), 
  .ch26_coeff_4_8(ch26_select_section_coefficients_coeff_4_8_porty), 
  .ch26_coeff_4_7(ch26_select_section_coefficients_coeff_4_7_porty), 
  .ch26_coeff_4_6(ch26_select_section_coefficients_coeff_4_6_porty), 
  .ch26_coeff_4_5(ch26_select_section_coefficients_coeff_4_5_porty), 
  .ch26_coeff_4_4(ch26_select_section_coefficients_coeff_4_4_porty), 
  .ch26_coeff_4_3(ch26_select_section_coefficients_coeff_4_3_porty), 
  .ch26_coeff_4_2(ch26_select_section_coefficients_coeff_4_2_porty), 
  .ch26_coeff_4_1(ch26_select_section_coefficients_coeff_4_1_porty), 
  .ch26_coeff_4_0(ch26_select_section_coefficients_coeff_4_0_porty), 
  .ch26_coeff_3_10(ch26_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch26_coeff_3_9(ch26_select_section_coefficients_coeff_3_9_porty), 
  .ch26_coeff_3_8(ch26_select_section_coefficients_coeff_3_8_porty), 
  .ch26_coeff_3_7(ch26_select_section_coefficients_coeff_3_7_porty), 
  .ch26_coeff_3_6(ch26_select_section_coefficients_coeff_3_6_porty), 
  .ch26_coeff_3_5(ch26_select_section_coefficients_coeff_3_5_porty), 
  .ch26_coeff_3_4(ch26_select_section_coefficients_coeff_3_4_porty), 
  .ch26_coeff_3_3(ch26_select_section_coefficients_coeff_3_3_porty), 
  .ch26_coeff_3_2(ch26_select_section_coefficients_coeff_3_2_porty), 
  .ch26_coeff_3_1(ch26_select_section_coefficients_coeff_3_1_porty), 
  .ch26_coeff_3_0(ch26_select_section_coefficients_coeff_3_0_porty), 
  .ch26_coeff_2_10(ch26_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch26_coeff_2_9(ch26_select_section_coefficients_coeff_2_9_porty), 
  .ch26_coeff_2_8(ch26_select_section_coefficients_coeff_2_8_porty), 
  .ch26_coeff_2_7(ch26_select_section_coefficients_coeff_2_7_porty), 
  .ch26_coeff_2_6(ch26_select_section_coefficients_coeff_2_6_porty), 
  .ch26_coeff_2_5(ch26_select_section_coefficients_coeff_2_5_porty), 
  .ch26_coeff_2_4(ch26_select_section_coefficients_coeff_2_4_porty), 
  .ch26_coeff_2_3(ch26_select_section_coefficients_coeff_2_3_porty), 
  .ch26_coeff_2_2(ch26_select_section_coefficients_coeff_2_2_porty), 
  .ch26_coeff_2_1(ch26_select_section_coefficients_coeff_2_1_porty), 
  .ch26_coeff_2_0(ch26_select_section_coefficients_coeff_2_0_porty), 
  .ch26_coeff_1_10(ch26_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch26_coeff_1_9(ch26_select_section_coefficients_coeff_1_9_porty), 
  .ch26_coeff_1_8(ch26_select_section_coefficients_coeff_1_8_porty), 
  .ch26_coeff_1_7(ch26_select_section_coefficients_coeff_1_7_porty), 
  .ch26_coeff_1_6(ch26_select_section_coefficients_coeff_1_6_porty), 
  .ch26_coeff_1_5(ch26_select_section_coefficients_coeff_1_5_porty), 
  .ch26_coeff_1_4(ch26_select_section_coefficients_coeff_1_4_porty), 
  .ch26_coeff_1_3(ch26_select_section_coefficients_coeff_1_3_porty), 
  .ch26_coeff_1_2(ch26_select_section_coefficients_coeff_1_2_porty), 
  .ch26_coeff_1_1(ch26_select_section_coefficients_coeff_1_1_porty), 
  .ch26_coeff_1_0(ch26_select_section_coefficients_coeff_1_0_porty), 

  .ch25_x_adc(ch25_x_adc),//NLC output 
  .ch25_x_lin(ch25_x_lin),//ADC output 
  .ch25_section_limit(ch25_section_limit),//X-value that separates the sections 
  .ch25_recip_stdev_4(ch25_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch25_recip_stdev_3(ch25_select_section_coefficients_stdev_3_porty), 
  .ch25_recip_stdev_2(ch25_select_section_coefficients_stdev_2_porty), 
  .ch25_recip_stdev_1(ch25_select_section_coefficients_stdev_1_porty), 
  .ch25_neg_mean_4(ch25_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch25_neg_mean_3(ch25_select_section_coefficients_mean_3_porty), 
  .ch25_neg_mean_2(ch25_select_section_coefficients_mean_2_porty), 
  .ch25_neg_mean_1(ch25_select_section_coefficients_mean_1_porty), 
  .ch25_coeff_4_10(ch25_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch25_coeff_4_9(ch25_select_section_coefficients_coeff_4_9_porty), 
  .ch25_coeff_4_8(ch25_select_section_coefficients_coeff_4_8_porty), 
  .ch25_coeff_4_7(ch25_select_section_coefficients_coeff_4_7_porty), 
  .ch25_coeff_4_6(ch25_select_section_coefficients_coeff_4_6_porty), 
  .ch25_coeff_4_5(ch25_select_section_coefficients_coeff_4_5_porty), 
  .ch25_coeff_4_4(ch25_select_section_coefficients_coeff_4_4_porty), 
  .ch25_coeff_4_3(ch25_select_section_coefficients_coeff_4_3_porty), 
  .ch25_coeff_4_2(ch25_select_section_coefficients_coeff_4_2_porty), 
  .ch25_coeff_4_1(ch25_select_section_coefficients_coeff_4_1_porty), 
  .ch25_coeff_4_0(ch25_select_section_coefficients_coeff_4_0_porty), 
  .ch25_coeff_3_10(ch25_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch25_coeff_3_9(ch25_select_section_coefficients_coeff_3_9_porty), 
  .ch25_coeff_3_8(ch25_select_section_coefficients_coeff_3_8_porty), 
  .ch25_coeff_3_7(ch25_select_section_coefficients_coeff_3_7_porty), 
  .ch25_coeff_3_6(ch25_select_section_coefficients_coeff_3_6_porty), 
  .ch25_coeff_3_5(ch25_select_section_coefficients_coeff_3_5_porty), 
  .ch25_coeff_3_4(ch25_select_section_coefficients_coeff_3_4_porty), 
  .ch25_coeff_3_3(ch25_select_section_coefficients_coeff_3_3_porty), 
  .ch25_coeff_3_2(ch25_select_section_coefficients_coeff_3_2_porty), 
  .ch25_coeff_3_1(ch25_select_section_coefficients_coeff_3_1_porty), 
  .ch25_coeff_3_0(ch25_select_section_coefficients_coeff_3_0_porty), 
  .ch25_coeff_2_10(ch25_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch25_coeff_2_9(ch25_select_section_coefficients_coeff_2_9_porty), 
  .ch25_coeff_2_8(ch25_select_section_coefficients_coeff_2_8_porty), 
  .ch25_coeff_2_7(ch25_select_section_coefficients_coeff_2_7_porty), 
  .ch25_coeff_2_6(ch25_select_section_coefficients_coeff_2_6_porty), 
  .ch25_coeff_2_5(ch25_select_section_coefficients_coeff_2_5_porty), 
  .ch25_coeff_2_4(ch25_select_section_coefficients_coeff_2_4_porty), 
  .ch25_coeff_2_3(ch25_select_section_coefficients_coeff_2_3_porty), 
  .ch25_coeff_2_2(ch25_select_section_coefficients_coeff_2_2_porty), 
  .ch25_coeff_2_1(ch25_select_section_coefficients_coeff_2_1_porty), 
  .ch25_coeff_2_0(ch25_select_section_coefficients_coeff_2_0_porty), 
  .ch25_coeff_1_10(ch25_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch25_coeff_1_9(ch25_select_section_coefficients_coeff_1_9_porty), 
  .ch25_coeff_1_8(ch25_select_section_coefficients_coeff_1_8_porty), 
  .ch25_coeff_1_7(ch25_select_section_coefficients_coeff_1_7_porty), 
  .ch25_coeff_1_6(ch25_select_section_coefficients_coeff_1_6_porty), 
  .ch25_coeff_1_5(ch25_select_section_coefficients_coeff_1_5_porty), 
  .ch25_coeff_1_4(ch25_select_section_coefficients_coeff_1_4_porty), 
  .ch25_coeff_1_3(ch25_select_section_coefficients_coeff_1_3_porty), 
  .ch25_coeff_1_2(ch25_select_section_coefficients_coeff_1_2_porty), 
  .ch25_coeff_1_1(ch25_select_section_coefficients_coeff_1_1_porty), 
  .ch25_coeff_1_0(ch25_select_section_coefficients_coeff_1_0_porty), 

  .ch24_x_adc(ch24_x_adc),//NLC output 
  .ch24_x_lin(ch24_x_lin),//ADC output 
  .ch24_section_limit(ch24_section_limit),//X-value that separates the sections 
  .ch24_recip_stdev_4(ch24_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch24_recip_stdev_3(ch24_select_section_coefficients_stdev_3_porty), 
  .ch24_recip_stdev_2(ch24_select_section_coefficients_stdev_2_porty), 
  .ch24_recip_stdev_1(ch24_select_section_coefficients_stdev_1_porty), 
  .ch24_neg_mean_4(ch24_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch24_neg_mean_3(ch24_select_section_coefficients_mean_3_porty), 
  .ch24_neg_mean_2(ch24_select_section_coefficients_mean_2_porty), 
  .ch24_neg_mean_1(ch24_select_section_coefficients_mean_1_porty), 
  .ch24_coeff_4_10(ch24_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch24_coeff_4_9(ch24_select_section_coefficients_coeff_4_9_porty), 
  .ch24_coeff_4_8(ch24_select_section_coefficients_coeff_4_8_porty), 
  .ch24_coeff_4_7(ch24_select_section_coefficients_coeff_4_7_porty), 
  .ch24_coeff_4_6(ch24_select_section_coefficients_coeff_4_6_porty), 
  .ch24_coeff_4_5(ch24_select_section_coefficients_coeff_4_5_porty), 
  .ch24_coeff_4_4(ch24_select_section_coefficients_coeff_4_4_porty), 
  .ch24_coeff_4_3(ch24_select_section_coefficients_coeff_4_3_porty), 
  .ch24_coeff_4_2(ch24_select_section_coefficients_coeff_4_2_porty), 
  .ch24_coeff_4_1(ch24_select_section_coefficients_coeff_4_1_porty), 
  .ch24_coeff_4_0(ch24_select_section_coefficients_coeff_4_0_porty), 
  .ch24_coeff_3_10(ch24_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch24_coeff_3_9(ch24_select_section_coefficients_coeff_3_9_porty), 
  .ch24_coeff_3_8(ch24_select_section_coefficients_coeff_3_8_porty), 
  .ch24_coeff_3_7(ch24_select_section_coefficients_coeff_3_7_porty), 
  .ch24_coeff_3_6(ch24_select_section_coefficients_coeff_3_6_porty), 
  .ch24_coeff_3_5(ch24_select_section_coefficients_coeff_3_5_porty), 
  .ch24_coeff_3_4(ch24_select_section_coefficients_coeff_3_4_porty), 
  .ch24_coeff_3_3(ch24_select_section_coefficients_coeff_3_3_porty), 
  .ch24_coeff_3_2(ch24_select_section_coefficients_coeff_3_2_porty), 
  .ch24_coeff_3_1(ch24_select_section_coefficients_coeff_3_1_porty), 
  .ch24_coeff_3_0(ch24_select_section_coefficients_coeff_3_0_porty), 
  .ch24_coeff_2_10(ch24_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch24_coeff_2_9(ch24_select_section_coefficients_coeff_2_9_porty), 
  .ch24_coeff_2_8(ch24_select_section_coefficients_coeff_2_8_porty), 
  .ch24_coeff_2_7(ch24_select_section_coefficients_coeff_2_7_porty), 
  .ch24_coeff_2_6(ch24_select_section_coefficients_coeff_2_6_porty), 
  .ch24_coeff_2_5(ch24_select_section_coefficients_coeff_2_5_porty), 
  .ch24_coeff_2_4(ch24_select_section_coefficients_coeff_2_4_porty), 
  .ch24_coeff_2_3(ch24_select_section_coefficients_coeff_2_3_porty), 
  .ch24_coeff_2_2(ch24_select_section_coefficients_coeff_2_2_porty), 
  .ch24_coeff_2_1(ch24_select_section_coefficients_coeff_2_1_porty), 
  .ch24_coeff_2_0(ch24_select_section_coefficients_coeff_2_0_porty), 
  .ch24_coeff_1_10(ch24_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch24_coeff_1_9(ch24_select_section_coefficients_coeff_1_9_porty), 
  .ch24_coeff_1_8(ch24_select_section_coefficients_coeff_1_8_porty), 
  .ch24_coeff_1_7(ch24_select_section_coefficients_coeff_1_7_porty), 
  .ch24_coeff_1_6(ch24_select_section_coefficients_coeff_1_6_porty), 
  .ch24_coeff_1_5(ch24_select_section_coefficients_coeff_1_5_porty), 
  .ch24_coeff_1_4(ch24_select_section_coefficients_coeff_1_4_porty), 
  .ch24_coeff_1_3(ch24_select_section_coefficients_coeff_1_3_porty), 
  .ch24_coeff_1_2(ch24_select_section_coefficients_coeff_1_2_porty), 
  .ch24_coeff_1_1(ch24_select_section_coefficients_coeff_1_1_porty), 
  .ch24_coeff_1_0(ch24_select_section_coefficients_coeff_1_0_porty), 

  .ch23_x_adc(ch23_x_adc),//NLC output 
  .ch23_x_lin(ch23_x_lin),//ADC output 
  .ch23_section_limit(ch23_section_limit),//X-value that separates the sections 
  .ch23_recip_stdev_4(ch23_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch23_recip_stdev_3(ch23_select_section_coefficients_stdev_3_porty), 
  .ch23_recip_stdev_2(ch23_select_section_coefficients_stdev_2_porty), 
  .ch23_recip_stdev_1(ch23_select_section_coefficients_stdev_1_porty), 
  .ch23_neg_mean_4(ch23_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch23_neg_mean_3(ch23_select_section_coefficients_mean_3_porty), 
  .ch23_neg_mean_2(ch23_select_section_coefficients_mean_2_porty), 
  .ch23_neg_mean_1(ch23_select_section_coefficients_mean_1_porty), 
  .ch23_coeff_4_10(ch23_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch23_coeff_4_9(ch23_select_section_coefficients_coeff_4_9_porty), 
  .ch23_coeff_4_8(ch23_select_section_coefficients_coeff_4_8_porty), 
  .ch23_coeff_4_7(ch23_select_section_coefficients_coeff_4_7_porty), 
  .ch23_coeff_4_6(ch23_select_section_coefficients_coeff_4_6_porty), 
  .ch23_coeff_4_5(ch23_select_section_coefficients_coeff_4_5_porty), 
  .ch23_coeff_4_4(ch23_select_section_coefficients_coeff_4_4_porty), 
  .ch23_coeff_4_3(ch23_select_section_coefficients_coeff_4_3_porty), 
  .ch23_coeff_4_2(ch23_select_section_coefficients_coeff_4_2_porty), 
  .ch23_coeff_4_1(ch23_select_section_coefficients_coeff_4_1_porty), 
  .ch23_coeff_4_0(ch23_select_section_coefficients_coeff_4_0_porty), 
  .ch23_coeff_3_10(ch23_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch23_coeff_3_9(ch23_select_section_coefficients_coeff_3_9_porty), 
  .ch23_coeff_3_8(ch23_select_section_coefficients_coeff_3_8_porty), 
  .ch23_coeff_3_7(ch23_select_section_coefficients_coeff_3_7_porty), 
  .ch23_coeff_3_6(ch23_select_section_coefficients_coeff_3_6_porty), 
  .ch23_coeff_3_5(ch23_select_section_coefficients_coeff_3_5_porty), 
  .ch23_coeff_3_4(ch23_select_section_coefficients_coeff_3_4_porty), 
  .ch23_coeff_3_3(ch23_select_section_coefficients_coeff_3_3_porty), 
  .ch23_coeff_3_2(ch23_select_section_coefficients_coeff_3_2_porty), 
  .ch23_coeff_3_1(ch23_select_section_coefficients_coeff_3_1_porty), 
  .ch23_coeff_3_0(ch23_select_section_coefficients_coeff_3_0_porty), 
  .ch23_coeff_2_10(ch23_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch23_coeff_2_9(ch23_select_section_coefficients_coeff_2_9_porty), 
  .ch23_coeff_2_8(ch23_select_section_coefficients_coeff_2_8_porty), 
  .ch23_coeff_2_7(ch23_select_section_coefficients_coeff_2_7_porty), 
  .ch23_coeff_2_6(ch23_select_section_coefficients_coeff_2_6_porty), 
  .ch23_coeff_2_5(ch23_select_section_coefficients_coeff_2_5_porty), 
  .ch23_coeff_2_4(ch23_select_section_coefficients_coeff_2_4_porty), 
  .ch23_coeff_2_3(ch23_select_section_coefficients_coeff_2_3_porty), 
  .ch23_coeff_2_2(ch23_select_section_coefficients_coeff_2_2_porty), 
  .ch23_coeff_2_1(ch23_select_section_coefficients_coeff_2_1_porty), 
  .ch23_coeff_2_0(ch23_select_section_coefficients_coeff_2_0_porty), 
  .ch23_coeff_1_10(ch23_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch23_coeff_1_9(ch23_select_section_coefficients_coeff_1_9_porty), 
  .ch23_coeff_1_8(ch23_select_section_coefficients_coeff_1_8_porty), 
  .ch23_coeff_1_7(ch23_select_section_coefficients_coeff_1_7_porty), 
  .ch23_coeff_1_6(ch23_select_section_coefficients_coeff_1_6_porty), 
  .ch23_coeff_1_5(ch23_select_section_coefficients_coeff_1_5_porty), 
  .ch23_coeff_1_4(ch23_select_section_coefficients_coeff_1_4_porty), 
  .ch23_coeff_1_3(ch23_select_section_coefficients_coeff_1_3_porty), 
  .ch23_coeff_1_2(ch23_select_section_coefficients_coeff_1_2_porty), 
  .ch23_coeff_1_1(ch23_select_section_coefficients_coeff_1_1_porty), 
  .ch23_coeff_1_0(ch23_select_section_coefficients_coeff_1_0_porty), 

  .ch22_x_adc(ch22_x_adc),//NLC output 
  .ch22_x_lin(ch22_x_lin),//ADC output 
  .ch22_section_limit(ch22_section_limit),//X-value that separates the sections 
  .ch22_recip_stdev_4(ch22_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch22_recip_stdev_3(ch22_select_section_coefficients_stdev_3_porty), 
  .ch22_recip_stdev_2(ch22_select_section_coefficients_stdev_2_porty), 
  .ch22_recip_stdev_1(ch22_select_section_coefficients_stdev_1_porty), 
  .ch22_neg_mean_4(ch22_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch22_neg_mean_3(ch22_select_section_coefficients_mean_3_porty), 
  .ch22_neg_mean_2(ch22_select_section_coefficients_mean_2_porty), 
  .ch22_neg_mean_1(ch22_select_section_coefficients_mean_1_porty), 
  .ch22_coeff_4_10(ch22_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch22_coeff_4_9(ch22_select_section_coefficients_coeff_4_9_porty), 
  .ch22_coeff_4_8(ch22_select_section_coefficients_coeff_4_8_porty), 
  .ch22_coeff_4_7(ch22_select_section_coefficients_coeff_4_7_porty), 
  .ch22_coeff_4_6(ch22_select_section_coefficients_coeff_4_6_porty), 
  .ch22_coeff_4_5(ch22_select_section_coefficients_coeff_4_5_porty), 
  .ch22_coeff_4_4(ch22_select_section_coefficients_coeff_4_4_porty), 
  .ch22_coeff_4_3(ch22_select_section_coefficients_coeff_4_3_porty), 
  .ch22_coeff_4_2(ch22_select_section_coefficients_coeff_4_2_porty), 
  .ch22_coeff_4_1(ch22_select_section_coefficients_coeff_4_1_porty), 
  .ch22_coeff_4_0(ch22_select_section_coefficients_coeff_4_0_porty), 
  .ch22_coeff_3_10(ch22_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch22_coeff_3_9(ch22_select_section_coefficients_coeff_3_9_porty), 
  .ch22_coeff_3_8(ch22_select_section_coefficients_coeff_3_8_porty), 
  .ch22_coeff_3_7(ch22_select_section_coefficients_coeff_3_7_porty), 
  .ch22_coeff_3_6(ch22_select_section_coefficients_coeff_3_6_porty), 
  .ch22_coeff_3_5(ch22_select_section_coefficients_coeff_3_5_porty), 
  .ch22_coeff_3_4(ch22_select_section_coefficients_coeff_3_4_porty), 
  .ch22_coeff_3_3(ch22_select_section_coefficients_coeff_3_3_porty), 
  .ch22_coeff_3_2(ch22_select_section_coefficients_coeff_3_2_porty), 
  .ch22_coeff_3_1(ch22_select_section_coefficients_coeff_3_1_porty), 
  .ch22_coeff_3_0(ch22_select_section_coefficients_coeff_3_0_porty), 
  .ch22_coeff_2_10(ch22_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch22_coeff_2_9(ch22_select_section_coefficients_coeff_2_9_porty), 
  .ch22_coeff_2_8(ch22_select_section_coefficients_coeff_2_8_porty), 
  .ch22_coeff_2_7(ch22_select_section_coefficients_coeff_2_7_porty), 
  .ch22_coeff_2_6(ch22_select_section_coefficients_coeff_2_6_porty), 
  .ch22_coeff_2_5(ch22_select_section_coefficients_coeff_2_5_porty), 
  .ch22_coeff_2_4(ch22_select_section_coefficients_coeff_2_4_porty), 
  .ch22_coeff_2_3(ch22_select_section_coefficients_coeff_2_3_porty), 
  .ch22_coeff_2_2(ch22_select_section_coefficients_coeff_2_2_porty), 
  .ch22_coeff_2_1(ch22_select_section_coefficients_coeff_2_1_porty), 
  .ch22_coeff_2_0(ch22_select_section_coefficients_coeff_2_0_porty), 
  .ch22_coeff_1_10(ch22_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch22_coeff_1_9(ch22_select_section_coefficients_coeff_1_9_porty), 
  .ch22_coeff_1_8(ch22_select_section_coefficients_coeff_1_8_porty), 
  .ch22_coeff_1_7(ch22_select_section_coefficients_coeff_1_7_porty), 
  .ch22_coeff_1_6(ch22_select_section_coefficients_coeff_1_6_porty), 
  .ch22_coeff_1_5(ch22_select_section_coefficients_coeff_1_5_porty), 
  .ch22_coeff_1_4(ch22_select_section_coefficients_coeff_1_4_porty), 
  .ch22_coeff_1_3(ch22_select_section_coefficients_coeff_1_3_porty), 
  .ch22_coeff_1_2(ch22_select_section_coefficients_coeff_1_2_porty), 
  .ch22_coeff_1_1(ch22_select_section_coefficients_coeff_1_1_porty), 
  .ch22_coeff_1_0(ch22_select_section_coefficients_coeff_1_0_porty), 

  .ch21_x_adc(ch21_x_adc),//NLC output 
  .ch21_x_lin(ch21_x_lin),//ADC output 
  .ch21_section_limit(ch21_section_limit),//X-value that separates the sections 
  .ch21_recip_stdev_4(ch21_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch21_recip_stdev_3(ch21_select_section_coefficients_stdev_3_porty), 
  .ch21_recip_stdev_2(ch21_select_section_coefficients_stdev_2_porty), 
  .ch21_recip_stdev_1(ch21_select_section_coefficients_stdev_1_porty), 
  .ch21_neg_mean_4(ch21_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch21_neg_mean_3(ch21_select_section_coefficients_mean_3_porty), 
  .ch21_neg_mean_2(ch21_select_section_coefficients_mean_2_porty), 
  .ch21_neg_mean_1(ch21_select_section_coefficients_mean_1_porty), 
  .ch21_coeff_4_10(ch21_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch21_coeff_4_9(ch21_select_section_coefficients_coeff_4_9_porty), 
  .ch21_coeff_4_8(ch21_select_section_coefficients_coeff_4_8_porty), 
  .ch21_coeff_4_7(ch21_select_section_coefficients_coeff_4_7_porty), 
  .ch21_coeff_4_6(ch21_select_section_coefficients_coeff_4_6_porty), 
  .ch21_coeff_4_5(ch21_select_section_coefficients_coeff_4_5_porty), 
  .ch21_coeff_4_4(ch21_select_section_coefficients_coeff_4_4_porty), 
  .ch21_coeff_4_3(ch21_select_section_coefficients_coeff_4_3_porty), 
  .ch21_coeff_4_2(ch21_select_section_coefficients_coeff_4_2_porty), 
  .ch21_coeff_4_1(ch21_select_section_coefficients_coeff_4_1_porty), 
  .ch21_coeff_4_0(ch21_select_section_coefficients_coeff_4_0_porty), 
  .ch21_coeff_3_10(ch21_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch21_coeff_3_9(ch21_select_section_coefficients_coeff_3_9_porty), 
  .ch21_coeff_3_8(ch21_select_section_coefficients_coeff_3_8_porty), 
  .ch21_coeff_3_7(ch21_select_section_coefficients_coeff_3_7_porty), 
  .ch21_coeff_3_6(ch21_select_section_coefficients_coeff_3_6_porty), 
  .ch21_coeff_3_5(ch21_select_section_coefficients_coeff_3_5_porty), 
  .ch21_coeff_3_4(ch21_select_section_coefficients_coeff_3_4_porty), 
  .ch21_coeff_3_3(ch21_select_section_coefficients_coeff_3_3_porty), 
  .ch21_coeff_3_2(ch21_select_section_coefficients_coeff_3_2_porty), 
  .ch21_coeff_3_1(ch21_select_section_coefficients_coeff_3_1_porty), 
  .ch21_coeff_3_0(ch21_select_section_coefficients_coeff_3_0_porty), 
  .ch21_coeff_2_10(ch21_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch21_coeff_2_9(ch21_select_section_coefficients_coeff_2_9_porty), 
  .ch21_coeff_2_8(ch21_select_section_coefficients_coeff_2_8_porty), 
  .ch21_coeff_2_7(ch21_select_section_coefficients_coeff_2_7_porty), 
  .ch21_coeff_2_6(ch21_select_section_coefficients_coeff_2_6_porty), 
  .ch21_coeff_2_5(ch21_select_section_coefficients_coeff_2_5_porty), 
  .ch21_coeff_2_4(ch21_select_section_coefficients_coeff_2_4_porty), 
  .ch21_coeff_2_3(ch21_select_section_coefficients_coeff_2_3_porty), 
  .ch21_coeff_2_2(ch21_select_section_coefficients_coeff_2_2_porty), 
  .ch21_coeff_2_1(ch21_select_section_coefficients_coeff_2_1_porty), 
  .ch21_coeff_2_0(ch21_select_section_coefficients_coeff_2_0_porty), 
  .ch21_coeff_1_10(ch21_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch21_coeff_1_9(ch21_select_section_coefficients_coeff_1_9_porty), 
  .ch21_coeff_1_8(ch21_select_section_coefficients_coeff_1_8_porty), 
  .ch21_coeff_1_7(ch21_select_section_coefficients_coeff_1_7_porty), 
  .ch21_coeff_1_6(ch21_select_section_coefficients_coeff_1_6_porty), 
  .ch21_coeff_1_5(ch21_select_section_coefficients_coeff_1_5_porty), 
  .ch21_coeff_1_4(ch21_select_section_coefficients_coeff_1_4_porty), 
  .ch21_coeff_1_3(ch21_select_section_coefficients_coeff_1_3_porty), 
  .ch21_coeff_1_2(ch21_select_section_coefficients_coeff_1_2_porty), 
  .ch21_coeff_1_1(ch21_select_section_coefficients_coeff_1_1_porty), 
  .ch21_coeff_1_0(ch21_select_section_coefficients_coeff_1_0_porty), 

  .ch20_x_adc(ch20_x_adc),//NLC output 
  .ch20_x_lin(ch20_x_lin),//ADC output 
  .ch20_section_limit(ch20_section_limit),//X-value that separates the sections 
  .ch20_recip_stdev_4(ch20_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch20_recip_stdev_3(ch20_select_section_coefficients_stdev_3_porty), 
  .ch20_recip_stdev_2(ch20_select_section_coefficients_stdev_2_porty), 
  .ch20_recip_stdev_1(ch20_select_section_coefficients_stdev_1_porty), 
  .ch20_neg_mean_4(ch20_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch20_neg_mean_3(ch20_select_section_coefficients_mean_3_porty), 
  .ch20_neg_mean_2(ch20_select_section_coefficients_mean_2_porty), 
  .ch20_neg_mean_1(ch20_select_section_coefficients_mean_1_porty), 
  .ch20_coeff_4_10(ch20_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch20_coeff_4_9(ch20_select_section_coefficients_coeff_4_9_porty), 
  .ch20_coeff_4_8(ch20_select_section_coefficients_coeff_4_8_porty), 
  .ch20_coeff_4_7(ch20_select_section_coefficients_coeff_4_7_porty), 
  .ch20_coeff_4_6(ch20_select_section_coefficients_coeff_4_6_porty), 
  .ch20_coeff_4_5(ch20_select_section_coefficients_coeff_4_5_porty), 
  .ch20_coeff_4_4(ch20_select_section_coefficients_coeff_4_4_porty), 
  .ch20_coeff_4_3(ch20_select_section_coefficients_coeff_4_3_porty), 
  .ch20_coeff_4_2(ch20_select_section_coefficients_coeff_4_2_porty), 
  .ch20_coeff_4_1(ch20_select_section_coefficients_coeff_4_1_porty), 
  .ch20_coeff_4_0(ch20_select_section_coefficients_coeff_4_0_porty), 
  .ch20_coeff_3_10(ch20_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch20_coeff_3_9(ch20_select_section_coefficients_coeff_3_9_porty), 
  .ch20_coeff_3_8(ch20_select_section_coefficients_coeff_3_8_porty), 
  .ch20_coeff_3_7(ch20_select_section_coefficients_coeff_3_7_porty), 
  .ch20_coeff_3_6(ch20_select_section_coefficients_coeff_3_6_porty), 
  .ch20_coeff_3_5(ch20_select_section_coefficients_coeff_3_5_porty), 
  .ch20_coeff_3_4(ch20_select_section_coefficients_coeff_3_4_porty), 
  .ch20_coeff_3_3(ch20_select_section_coefficients_coeff_3_3_porty), 
  .ch20_coeff_3_2(ch20_select_section_coefficients_coeff_3_2_porty), 
  .ch20_coeff_3_1(ch20_select_section_coefficients_coeff_3_1_porty), 
  .ch20_coeff_3_0(ch20_select_section_coefficients_coeff_3_0_porty), 
  .ch20_coeff_2_10(ch20_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch20_coeff_2_9(ch20_select_section_coefficients_coeff_2_9_porty), 
  .ch20_coeff_2_8(ch20_select_section_coefficients_coeff_2_8_porty), 
  .ch20_coeff_2_7(ch20_select_section_coefficients_coeff_2_7_porty), 
  .ch20_coeff_2_6(ch20_select_section_coefficients_coeff_2_6_porty), 
  .ch20_coeff_2_5(ch20_select_section_coefficients_coeff_2_5_porty), 
  .ch20_coeff_2_4(ch20_select_section_coefficients_coeff_2_4_porty), 
  .ch20_coeff_2_3(ch20_select_section_coefficients_coeff_2_3_porty), 
  .ch20_coeff_2_2(ch20_select_section_coefficients_coeff_2_2_porty), 
  .ch20_coeff_2_1(ch20_select_section_coefficients_coeff_2_1_porty), 
  .ch20_coeff_2_0(ch20_select_section_coefficients_coeff_2_0_porty), 
  .ch20_coeff_1_10(ch20_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch20_coeff_1_9(ch20_select_section_coefficients_coeff_1_9_porty), 
  .ch20_coeff_1_8(ch20_select_section_coefficients_coeff_1_8_porty), 
  .ch20_coeff_1_7(ch20_select_section_coefficients_coeff_1_7_porty), 
  .ch20_coeff_1_6(ch20_select_section_coefficients_coeff_1_6_porty), 
  .ch20_coeff_1_5(ch20_select_section_coefficients_coeff_1_5_porty), 
  .ch20_coeff_1_4(ch20_select_section_coefficients_coeff_1_4_porty), 
  .ch20_coeff_1_3(ch20_select_section_coefficients_coeff_1_3_porty), 
  .ch20_coeff_1_2(ch20_select_section_coefficients_coeff_1_2_porty), 
  .ch20_coeff_1_1(ch20_select_section_coefficients_coeff_1_1_porty), 
  .ch20_coeff_1_0(ch20_select_section_coefficients_coeff_1_0_porty), 

  .ch19_x_adc(ch19_x_adc),//NLC output 
  .ch19_x_lin(ch19_x_lin),//ADC output 
  .ch19_section_limit(ch19_section_limit),//X-value that separates the sections 
  .ch19_recip_stdev_4(ch19_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch19_recip_stdev_3(ch19_select_section_coefficients_stdev_3_porty), 
  .ch19_recip_stdev_2(ch19_select_section_coefficients_stdev_2_porty), 
  .ch19_recip_stdev_1(ch19_select_section_coefficients_stdev_1_porty), 
  .ch19_neg_mean_4(ch19_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch19_neg_mean_3(ch19_select_section_coefficients_mean_3_porty), 
  .ch19_neg_mean_2(ch19_select_section_coefficients_mean_2_porty), 
  .ch19_neg_mean_1(ch19_select_section_coefficients_mean_1_porty), 
  .ch19_coeff_4_10(ch19_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch19_coeff_4_9(ch19_select_section_coefficients_coeff_4_9_porty), 
  .ch19_coeff_4_8(ch19_select_section_coefficients_coeff_4_8_porty), 
  .ch19_coeff_4_7(ch19_select_section_coefficients_coeff_4_7_porty), 
  .ch19_coeff_4_6(ch19_select_section_coefficients_coeff_4_6_porty), 
  .ch19_coeff_4_5(ch19_select_section_coefficients_coeff_4_5_porty), 
  .ch19_coeff_4_4(ch19_select_section_coefficients_coeff_4_4_porty), 
  .ch19_coeff_4_3(ch19_select_section_coefficients_coeff_4_3_porty), 
  .ch19_coeff_4_2(ch19_select_section_coefficients_coeff_4_2_porty), 
  .ch19_coeff_4_1(ch19_select_section_coefficients_coeff_4_1_porty), 
  .ch19_coeff_4_0(ch19_select_section_coefficients_coeff_4_0_porty), 
  .ch19_coeff_3_10(ch19_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch19_coeff_3_9(ch19_select_section_coefficients_coeff_3_9_porty), 
  .ch19_coeff_3_8(ch19_select_section_coefficients_coeff_3_8_porty), 
  .ch19_coeff_3_7(ch19_select_section_coefficients_coeff_3_7_porty), 
  .ch19_coeff_3_6(ch19_select_section_coefficients_coeff_3_6_porty), 
  .ch19_coeff_3_5(ch19_select_section_coefficients_coeff_3_5_porty), 
  .ch19_coeff_3_4(ch19_select_section_coefficients_coeff_3_4_porty), 
  .ch19_coeff_3_3(ch19_select_section_coefficients_coeff_3_3_porty), 
  .ch19_coeff_3_2(ch19_select_section_coefficients_coeff_3_2_porty), 
  .ch19_coeff_3_1(ch19_select_section_coefficients_coeff_3_1_porty), 
  .ch19_coeff_3_0(ch19_select_section_coefficients_coeff_3_0_porty), 
  .ch19_coeff_2_10(ch19_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch19_coeff_2_9(ch19_select_section_coefficients_coeff_2_9_porty), 
  .ch19_coeff_2_8(ch19_select_section_coefficients_coeff_2_8_porty), 
  .ch19_coeff_2_7(ch19_select_section_coefficients_coeff_2_7_porty), 
  .ch19_coeff_2_6(ch19_select_section_coefficients_coeff_2_6_porty), 
  .ch19_coeff_2_5(ch19_select_section_coefficients_coeff_2_5_porty), 
  .ch19_coeff_2_4(ch19_select_section_coefficients_coeff_2_4_porty), 
  .ch19_coeff_2_3(ch19_select_section_coefficients_coeff_2_3_porty), 
  .ch19_coeff_2_2(ch19_select_section_coefficients_coeff_2_2_porty), 
  .ch19_coeff_2_1(ch19_select_section_coefficients_coeff_2_1_porty), 
  .ch19_coeff_2_0(ch19_select_section_coefficients_coeff_2_0_porty), 
  .ch19_coeff_1_10(ch19_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch19_coeff_1_9(ch19_select_section_coefficients_coeff_1_9_porty), 
  .ch19_coeff_1_8(ch19_select_section_coefficients_coeff_1_8_porty), 
  .ch19_coeff_1_7(ch19_select_section_coefficients_coeff_1_7_porty), 
  .ch19_coeff_1_6(ch19_select_section_coefficients_coeff_1_6_porty), 
  .ch19_coeff_1_5(ch19_select_section_coefficients_coeff_1_5_porty), 
  .ch19_coeff_1_4(ch19_select_section_coefficients_coeff_1_4_porty), 
  .ch19_coeff_1_3(ch19_select_section_coefficients_coeff_1_3_porty), 
  .ch19_coeff_1_2(ch19_select_section_coefficients_coeff_1_2_porty), 
  .ch19_coeff_1_1(ch19_select_section_coefficients_coeff_1_1_porty), 
  .ch19_coeff_1_0(ch19_select_section_coefficients_coeff_1_0_porty), 

  .ch18_x_adc(ch18_x_adc),//NLC output 
  .ch18_x_lin(ch18_x_lin),//ADC output 
  .ch18_section_limit(ch18_section_limit),//X-value that separates the sections 
  .ch18_recip_stdev_4(ch18_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch18_recip_stdev_3(ch18_select_section_coefficients_stdev_3_porty), 
  .ch18_recip_stdev_2(ch18_select_section_coefficients_stdev_2_porty), 
  .ch18_recip_stdev_1(ch18_select_section_coefficients_stdev_1_porty), 
  .ch18_neg_mean_4(ch18_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch18_neg_mean_3(ch18_select_section_coefficients_mean_3_porty), 
  .ch18_neg_mean_2(ch18_select_section_coefficients_mean_2_porty), 
  .ch18_neg_mean_1(ch18_select_section_coefficients_mean_1_porty), 
  .ch18_coeff_4_10(ch18_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch18_coeff_4_9(ch18_select_section_coefficients_coeff_4_9_porty), 
  .ch18_coeff_4_8(ch18_select_section_coefficients_coeff_4_8_porty), 
  .ch18_coeff_4_7(ch18_select_section_coefficients_coeff_4_7_porty), 
  .ch18_coeff_4_6(ch18_select_section_coefficients_coeff_4_6_porty), 
  .ch18_coeff_4_5(ch18_select_section_coefficients_coeff_4_5_porty), 
  .ch18_coeff_4_4(ch18_select_section_coefficients_coeff_4_4_porty), 
  .ch18_coeff_4_3(ch18_select_section_coefficients_coeff_4_3_porty), 
  .ch18_coeff_4_2(ch18_select_section_coefficients_coeff_4_2_porty), 
  .ch18_coeff_4_1(ch18_select_section_coefficients_coeff_4_1_porty), 
  .ch18_coeff_4_0(ch18_select_section_coefficients_coeff_4_0_porty), 
  .ch18_coeff_3_10(ch18_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch18_coeff_3_9(ch18_select_section_coefficients_coeff_3_9_porty), 
  .ch18_coeff_3_8(ch18_select_section_coefficients_coeff_3_8_porty), 
  .ch18_coeff_3_7(ch18_select_section_coefficients_coeff_3_7_porty), 
  .ch18_coeff_3_6(ch18_select_section_coefficients_coeff_3_6_porty), 
  .ch18_coeff_3_5(ch18_select_section_coefficients_coeff_3_5_porty), 
  .ch18_coeff_3_4(ch18_select_section_coefficients_coeff_3_4_porty), 
  .ch18_coeff_3_3(ch18_select_section_coefficients_coeff_3_3_porty), 
  .ch18_coeff_3_2(ch18_select_section_coefficients_coeff_3_2_porty), 
  .ch18_coeff_3_1(ch18_select_section_coefficients_coeff_3_1_porty), 
  .ch18_coeff_3_0(ch18_select_section_coefficients_coeff_3_0_porty), 
  .ch18_coeff_2_10(ch18_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch18_coeff_2_9(ch18_select_section_coefficients_coeff_2_9_porty), 
  .ch18_coeff_2_8(ch18_select_section_coefficients_coeff_2_8_porty), 
  .ch18_coeff_2_7(ch18_select_section_coefficients_coeff_2_7_porty), 
  .ch18_coeff_2_6(ch18_select_section_coefficients_coeff_2_6_porty), 
  .ch18_coeff_2_5(ch18_select_section_coefficients_coeff_2_5_porty), 
  .ch18_coeff_2_4(ch18_select_section_coefficients_coeff_2_4_porty), 
  .ch18_coeff_2_3(ch18_select_section_coefficients_coeff_2_3_porty), 
  .ch18_coeff_2_2(ch18_select_section_coefficients_coeff_2_2_porty), 
  .ch18_coeff_2_1(ch18_select_section_coefficients_coeff_2_1_porty), 
  .ch18_coeff_2_0(ch18_select_section_coefficients_coeff_2_0_porty), 
  .ch18_coeff_1_10(ch18_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch18_coeff_1_9(ch18_select_section_coefficients_coeff_1_9_porty), 
  .ch18_coeff_1_8(ch18_select_section_coefficients_coeff_1_8_porty), 
  .ch18_coeff_1_7(ch18_select_section_coefficients_coeff_1_7_porty), 
  .ch18_coeff_1_6(ch18_select_section_coefficients_coeff_1_6_porty), 
  .ch18_coeff_1_5(ch18_select_section_coefficients_coeff_1_5_porty), 
  .ch18_coeff_1_4(ch18_select_section_coefficients_coeff_1_4_porty), 
  .ch18_coeff_1_3(ch18_select_section_coefficients_coeff_1_3_porty), 
  .ch18_coeff_1_2(ch18_select_section_coefficients_coeff_1_2_porty), 
  .ch18_coeff_1_1(ch18_select_section_coefficients_coeff_1_1_porty), 
  .ch18_coeff_1_0(ch18_select_section_coefficients_coeff_1_0_porty), 

  .ch17_x_adc(ch17_x_adc),//NLC output 
  .ch17_x_lin(ch17_x_lin),//ADC output 
  .ch17_section_limit(ch17_section_limit),//X-value that separates the sections 
  .ch17_recip_stdev_4(ch17_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch17_recip_stdev_3(ch17_select_section_coefficients_stdev_3_porty), 
  .ch17_recip_stdev_2(ch17_select_section_coefficients_stdev_2_porty), 
  .ch17_recip_stdev_1(ch17_select_section_coefficients_stdev_1_porty), 
  .ch17_neg_mean_4(ch17_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch17_neg_mean_3(ch17_select_section_coefficients_mean_3_porty), 
  .ch17_neg_mean_2(ch17_select_section_coefficients_mean_2_porty), 
  .ch17_neg_mean_1(ch17_select_section_coefficients_mean_1_porty), 
  .ch17_coeff_4_10(ch17_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch17_coeff_4_9(ch17_select_section_coefficients_coeff_4_9_porty), 
  .ch17_coeff_4_8(ch17_select_section_coefficients_coeff_4_8_porty), 
  .ch17_coeff_4_7(ch17_select_section_coefficients_coeff_4_7_porty), 
  .ch17_coeff_4_6(ch17_select_section_coefficients_coeff_4_6_porty), 
  .ch17_coeff_4_5(ch17_select_section_coefficients_coeff_4_5_porty), 
  .ch17_coeff_4_4(ch17_select_section_coefficients_coeff_4_4_porty), 
  .ch17_coeff_4_3(ch17_select_section_coefficients_coeff_4_3_porty), 
  .ch17_coeff_4_2(ch17_select_section_coefficients_coeff_4_2_porty), 
  .ch17_coeff_4_1(ch17_select_section_coefficients_coeff_4_1_porty), 
  .ch17_coeff_4_0(ch17_select_section_coefficients_coeff_4_0_porty), 
  .ch17_coeff_3_10(ch17_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch17_coeff_3_9(ch17_select_section_coefficients_coeff_3_9_porty), 
  .ch17_coeff_3_8(ch17_select_section_coefficients_coeff_3_8_porty), 
  .ch17_coeff_3_7(ch17_select_section_coefficients_coeff_3_7_porty), 
  .ch17_coeff_3_6(ch17_select_section_coefficients_coeff_3_6_porty), 
  .ch17_coeff_3_5(ch17_select_section_coefficients_coeff_3_5_porty), 
  .ch17_coeff_3_4(ch17_select_section_coefficients_coeff_3_4_porty), 
  .ch17_coeff_3_3(ch17_select_section_coefficients_coeff_3_3_porty), 
  .ch17_coeff_3_2(ch17_select_section_coefficients_coeff_3_2_porty), 
  .ch17_coeff_3_1(ch17_select_section_coefficients_coeff_3_1_porty), 
  .ch17_coeff_3_0(ch17_select_section_coefficients_coeff_3_0_porty), 
  .ch17_coeff_2_10(ch17_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch17_coeff_2_9(ch17_select_section_coefficients_coeff_2_9_porty), 
  .ch17_coeff_2_8(ch17_select_section_coefficients_coeff_2_8_porty), 
  .ch17_coeff_2_7(ch17_select_section_coefficients_coeff_2_7_porty), 
  .ch17_coeff_2_6(ch17_select_section_coefficients_coeff_2_6_porty), 
  .ch17_coeff_2_5(ch17_select_section_coefficients_coeff_2_5_porty), 
  .ch17_coeff_2_4(ch17_select_section_coefficients_coeff_2_4_porty), 
  .ch17_coeff_2_3(ch17_select_section_coefficients_coeff_2_3_porty), 
  .ch17_coeff_2_2(ch17_select_section_coefficients_coeff_2_2_porty), 
  .ch17_coeff_2_1(ch17_select_section_coefficients_coeff_2_1_porty), 
  .ch17_coeff_2_0(ch17_select_section_coefficients_coeff_2_0_porty), 
  .ch17_coeff_1_10(ch17_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch17_coeff_1_9(ch17_select_section_coefficients_coeff_1_9_porty), 
  .ch17_coeff_1_8(ch17_select_section_coefficients_coeff_1_8_porty), 
  .ch17_coeff_1_7(ch17_select_section_coefficients_coeff_1_7_porty), 
  .ch17_coeff_1_6(ch17_select_section_coefficients_coeff_1_6_porty), 
  .ch17_coeff_1_5(ch17_select_section_coefficients_coeff_1_5_porty), 
  .ch17_coeff_1_4(ch17_select_section_coefficients_coeff_1_4_porty), 
  .ch17_coeff_1_3(ch17_select_section_coefficients_coeff_1_3_porty), 
  .ch17_coeff_1_2(ch17_select_section_coefficients_coeff_1_2_porty), 
  .ch17_coeff_1_1(ch17_select_section_coefficients_coeff_1_1_porty), 
  .ch17_coeff_1_0(ch17_select_section_coefficients_coeff_1_0_porty), 

  .ch16_x_adc(ch16_x_adc),//NLC output 
  .ch16_x_lin(ch16_x_lin),//ADC output 
  .ch16_section_limit(ch16_section_limit),//X-value that separates the sections 
  .ch16_recip_stdev_4(ch16_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch16_recip_stdev_3(ch16_select_section_coefficients_stdev_3_porty), 
  .ch16_recip_stdev_2(ch16_select_section_coefficients_stdev_2_porty), 
  .ch16_recip_stdev_1(ch16_select_section_coefficients_stdev_1_porty), 
  .ch16_neg_mean_4(ch16_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch16_neg_mean_3(ch16_select_section_coefficients_mean_3_porty), 
  .ch16_neg_mean_2(ch16_select_section_coefficients_mean_2_porty), 
  .ch16_neg_mean_1(ch16_select_section_coefficients_mean_1_porty), 
  .ch16_coeff_4_10(ch16_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch16_coeff_4_9(ch16_select_section_coefficients_coeff_4_9_porty), 
  .ch16_coeff_4_8(ch16_select_section_coefficients_coeff_4_8_porty), 
  .ch16_coeff_4_7(ch16_select_section_coefficients_coeff_4_7_porty), 
  .ch16_coeff_4_6(ch16_select_section_coefficients_coeff_4_6_porty), 
  .ch16_coeff_4_5(ch16_select_section_coefficients_coeff_4_5_porty), 
  .ch16_coeff_4_4(ch16_select_section_coefficients_coeff_4_4_porty), 
  .ch16_coeff_4_3(ch16_select_section_coefficients_coeff_4_3_porty), 
  .ch16_coeff_4_2(ch16_select_section_coefficients_coeff_4_2_porty), 
  .ch16_coeff_4_1(ch16_select_section_coefficients_coeff_4_1_porty), 
  .ch16_coeff_4_0(ch16_select_section_coefficients_coeff_4_0_porty), 
  .ch16_coeff_3_10(ch16_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch16_coeff_3_9(ch16_select_section_coefficients_coeff_3_9_porty), 
  .ch16_coeff_3_8(ch16_select_section_coefficients_coeff_3_8_porty), 
  .ch16_coeff_3_7(ch16_select_section_coefficients_coeff_3_7_porty), 
  .ch16_coeff_3_6(ch16_select_section_coefficients_coeff_3_6_porty), 
  .ch16_coeff_3_5(ch16_select_section_coefficients_coeff_3_5_porty), 
  .ch16_coeff_3_4(ch16_select_section_coefficients_coeff_3_4_porty), 
  .ch16_coeff_3_3(ch16_select_section_coefficients_coeff_3_3_porty), 
  .ch16_coeff_3_2(ch16_select_section_coefficients_coeff_3_2_porty), 
  .ch16_coeff_3_1(ch16_select_section_coefficients_coeff_3_1_porty), 
  .ch16_coeff_3_0(ch16_select_section_coefficients_coeff_3_0_porty), 
  .ch16_coeff_2_10(ch16_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch16_coeff_2_9(ch16_select_section_coefficients_coeff_2_9_porty), 
  .ch16_coeff_2_8(ch16_select_section_coefficients_coeff_2_8_porty), 
  .ch16_coeff_2_7(ch16_select_section_coefficients_coeff_2_7_porty), 
  .ch16_coeff_2_6(ch16_select_section_coefficients_coeff_2_6_porty), 
  .ch16_coeff_2_5(ch16_select_section_coefficients_coeff_2_5_porty), 
  .ch16_coeff_2_4(ch16_select_section_coefficients_coeff_2_4_porty), 
  .ch16_coeff_2_3(ch16_select_section_coefficients_coeff_2_3_porty), 
  .ch16_coeff_2_2(ch16_select_section_coefficients_coeff_2_2_porty), 
  .ch16_coeff_2_1(ch16_select_section_coefficients_coeff_2_1_porty), 
  .ch16_coeff_2_0(ch16_select_section_coefficients_coeff_2_0_porty), 
  .ch16_coeff_1_10(ch16_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch16_coeff_1_9(ch16_select_section_coefficients_coeff_1_9_porty), 
  .ch16_coeff_1_8(ch16_select_section_coefficients_coeff_1_8_porty), 
  .ch16_coeff_1_7(ch16_select_section_coefficients_coeff_1_7_porty), 
  .ch16_coeff_1_6(ch16_select_section_coefficients_coeff_1_6_porty), 
  .ch16_coeff_1_5(ch16_select_section_coefficients_coeff_1_5_porty), 
  .ch16_coeff_1_4(ch16_select_section_coefficients_coeff_1_4_porty), 
  .ch16_coeff_1_3(ch16_select_section_coefficients_coeff_1_3_porty), 
  .ch16_coeff_1_2(ch16_select_section_coefficients_coeff_1_2_porty), 
  .ch16_coeff_1_1(ch16_select_section_coefficients_coeff_1_1_porty), 
  .ch16_coeff_1_0(ch16_select_section_coefficients_coeff_1_0_porty), 

  .ch15_x_adc(ch15_x_adc),//NLC output 
  .ch15_x_lin(ch15_x_lin),//ADC output 
  .ch15_section_limit(ch15_section_limit),//X-value that separates the sections 
  .ch15_recip_stdev_4(ch15_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch15_recip_stdev_3(ch15_select_section_coefficients_stdev_3_porty), 
  .ch15_recip_stdev_2(ch15_select_section_coefficients_stdev_2_porty), 
  .ch15_recip_stdev_1(ch15_select_section_coefficients_stdev_1_porty), 
  .ch15_neg_mean_4(ch15_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch15_neg_mean_3(ch15_select_section_coefficients_mean_3_porty), 
  .ch15_neg_mean_2(ch15_select_section_coefficients_mean_2_porty), 
  .ch15_neg_mean_1(ch15_select_section_coefficients_mean_1_porty), 
  .ch15_coeff_4_10(ch15_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch15_coeff_4_9(ch15_select_section_coefficients_coeff_4_9_porty), 
  .ch15_coeff_4_8(ch15_select_section_coefficients_coeff_4_8_porty), 
  .ch15_coeff_4_7(ch15_select_section_coefficients_coeff_4_7_porty), 
  .ch15_coeff_4_6(ch15_select_section_coefficients_coeff_4_6_porty), 
  .ch15_coeff_4_5(ch15_select_section_coefficients_coeff_4_5_porty), 
  .ch15_coeff_4_4(ch15_select_section_coefficients_coeff_4_4_porty), 
  .ch15_coeff_4_3(ch15_select_section_coefficients_coeff_4_3_porty), 
  .ch15_coeff_4_2(ch15_select_section_coefficients_coeff_4_2_porty), 
  .ch15_coeff_4_1(ch15_select_section_coefficients_coeff_4_1_porty), 
  .ch15_coeff_4_0(ch15_select_section_coefficients_coeff_4_0_porty), 
  .ch15_coeff_3_10(ch15_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch15_coeff_3_9(ch15_select_section_coefficients_coeff_3_9_porty), 
  .ch15_coeff_3_8(ch15_select_section_coefficients_coeff_3_8_porty), 
  .ch15_coeff_3_7(ch15_select_section_coefficients_coeff_3_7_porty), 
  .ch15_coeff_3_6(ch15_select_section_coefficients_coeff_3_6_porty), 
  .ch15_coeff_3_5(ch15_select_section_coefficients_coeff_3_5_porty), 
  .ch15_coeff_3_4(ch15_select_section_coefficients_coeff_3_4_porty), 
  .ch15_coeff_3_3(ch15_select_section_coefficients_coeff_3_3_porty), 
  .ch15_coeff_3_2(ch15_select_section_coefficients_coeff_3_2_porty), 
  .ch15_coeff_3_1(ch15_select_section_coefficients_coeff_3_1_porty), 
  .ch15_coeff_3_0(ch15_select_section_coefficients_coeff_3_0_porty), 
  .ch15_coeff_2_10(ch15_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch15_coeff_2_9(ch15_select_section_coefficients_coeff_2_9_porty), 
  .ch15_coeff_2_8(ch15_select_section_coefficients_coeff_2_8_porty), 
  .ch15_coeff_2_7(ch15_select_section_coefficients_coeff_2_7_porty), 
  .ch15_coeff_2_6(ch15_select_section_coefficients_coeff_2_6_porty), 
  .ch15_coeff_2_5(ch15_select_section_coefficients_coeff_2_5_porty), 
  .ch15_coeff_2_4(ch15_select_section_coefficients_coeff_2_4_porty), 
  .ch15_coeff_2_3(ch15_select_section_coefficients_coeff_2_3_porty), 
  .ch15_coeff_2_2(ch15_select_section_coefficients_coeff_2_2_porty), 
  .ch15_coeff_2_1(ch15_select_section_coefficients_coeff_2_1_porty), 
  .ch15_coeff_2_0(ch15_select_section_coefficients_coeff_2_0_porty), 
  .ch15_coeff_1_10(ch15_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch15_coeff_1_9(ch15_select_section_coefficients_coeff_1_9_porty), 
  .ch15_coeff_1_8(ch15_select_section_coefficients_coeff_1_8_porty), 
  .ch15_coeff_1_7(ch15_select_section_coefficients_coeff_1_7_porty), 
  .ch15_coeff_1_6(ch15_select_section_coefficients_coeff_1_6_porty), 
  .ch15_coeff_1_5(ch15_select_section_coefficients_coeff_1_5_porty), 
  .ch15_coeff_1_4(ch15_select_section_coefficients_coeff_1_4_porty), 
  .ch15_coeff_1_3(ch15_select_section_coefficients_coeff_1_3_porty), 
  .ch15_coeff_1_2(ch15_select_section_coefficients_coeff_1_2_porty), 
  .ch15_coeff_1_1(ch15_select_section_coefficients_coeff_1_1_porty), 
  .ch15_coeff_1_0(ch15_select_section_coefficients_coeff_1_0_porty), 

  .ch14_x_adc(ch14_x_adc),//NLC output 
  .ch14_x_lin(ch14_x_lin),//ADC output 
  .ch14_section_limit(ch14_section_limit),//X-value that separates the sections 
  .ch14_recip_stdev_4(ch14_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch14_recip_stdev_3(ch14_select_section_coefficients_stdev_3_porty), 
  .ch14_recip_stdev_2(ch14_select_section_coefficients_stdev_2_porty), 
  .ch14_recip_stdev_1(ch14_select_section_coefficients_stdev_1_porty), 
  .ch14_neg_mean_4(ch14_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch14_neg_mean_3(ch14_select_section_coefficients_mean_3_porty), 
  .ch14_neg_mean_2(ch14_select_section_coefficients_mean_2_porty), 
  .ch14_neg_mean_1(ch14_select_section_coefficients_mean_1_porty), 
  .ch14_coeff_4_10(ch14_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch14_coeff_4_9(ch14_select_section_coefficients_coeff_4_9_porty), 
  .ch14_coeff_4_8(ch14_select_section_coefficients_coeff_4_8_porty), 
  .ch14_coeff_4_7(ch14_select_section_coefficients_coeff_4_7_porty), 
  .ch14_coeff_4_6(ch14_select_section_coefficients_coeff_4_6_porty), 
  .ch14_coeff_4_5(ch14_select_section_coefficients_coeff_4_5_porty), 
  .ch14_coeff_4_4(ch14_select_section_coefficients_coeff_4_4_porty), 
  .ch14_coeff_4_3(ch14_select_section_coefficients_coeff_4_3_porty), 
  .ch14_coeff_4_2(ch14_select_section_coefficients_coeff_4_2_porty), 
  .ch14_coeff_4_1(ch14_select_section_coefficients_coeff_4_1_porty), 
  .ch14_coeff_4_0(ch14_select_section_coefficients_coeff_4_0_porty), 
  .ch14_coeff_3_10(ch14_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch14_coeff_3_9(ch14_select_section_coefficients_coeff_3_9_porty), 
  .ch14_coeff_3_8(ch14_select_section_coefficients_coeff_3_8_porty), 
  .ch14_coeff_3_7(ch14_select_section_coefficients_coeff_3_7_porty), 
  .ch14_coeff_3_6(ch14_select_section_coefficients_coeff_3_6_porty), 
  .ch14_coeff_3_5(ch14_select_section_coefficients_coeff_3_5_porty), 
  .ch14_coeff_3_4(ch14_select_section_coefficients_coeff_3_4_porty), 
  .ch14_coeff_3_3(ch14_select_section_coefficients_coeff_3_3_porty), 
  .ch14_coeff_3_2(ch14_select_section_coefficients_coeff_3_2_porty), 
  .ch14_coeff_3_1(ch14_select_section_coefficients_coeff_3_1_porty), 
  .ch14_coeff_3_0(ch14_select_section_coefficients_coeff_3_0_porty), 
  .ch14_coeff_2_10(ch14_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch14_coeff_2_9(ch14_select_section_coefficients_coeff_2_9_porty), 
  .ch14_coeff_2_8(ch14_select_section_coefficients_coeff_2_8_porty), 
  .ch14_coeff_2_7(ch14_select_section_coefficients_coeff_2_7_porty), 
  .ch14_coeff_2_6(ch14_select_section_coefficients_coeff_2_6_porty), 
  .ch14_coeff_2_5(ch14_select_section_coefficients_coeff_2_5_porty), 
  .ch14_coeff_2_4(ch14_select_section_coefficients_coeff_2_4_porty), 
  .ch14_coeff_2_3(ch14_select_section_coefficients_coeff_2_3_porty), 
  .ch14_coeff_2_2(ch14_select_section_coefficients_coeff_2_2_porty), 
  .ch14_coeff_2_1(ch14_select_section_coefficients_coeff_2_1_porty), 
  .ch14_coeff_2_0(ch14_select_section_coefficients_coeff_2_0_porty), 
  .ch14_coeff_1_10(ch14_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch14_coeff_1_9(ch14_select_section_coefficients_coeff_1_9_porty), 
  .ch14_coeff_1_8(ch14_select_section_coefficients_coeff_1_8_porty), 
  .ch14_coeff_1_7(ch14_select_section_coefficients_coeff_1_7_porty), 
  .ch14_coeff_1_6(ch14_select_section_coefficients_coeff_1_6_porty), 
  .ch14_coeff_1_5(ch14_select_section_coefficients_coeff_1_5_porty), 
  .ch14_coeff_1_4(ch14_select_section_coefficients_coeff_1_4_porty), 
  .ch14_coeff_1_3(ch14_select_section_coefficients_coeff_1_3_porty), 
  .ch14_coeff_1_2(ch14_select_section_coefficients_coeff_1_2_porty), 
  .ch14_coeff_1_1(ch14_select_section_coefficients_coeff_1_1_porty), 
  .ch14_coeff_1_0(ch14_select_section_coefficients_coeff_1_0_porty), 

  .ch13_x_adc(ch13_x_adc),//NLC output 
  .ch13_x_lin(ch13_x_lin),//ADC output 
  .ch13_section_limit(ch13_section_limit),//X-value that separates the sections 
  .ch13_recip_stdev_4(ch13_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch13_recip_stdev_3(ch13_select_section_coefficients_stdev_3_porty), 
  .ch13_recip_stdev_2(ch13_select_section_coefficients_stdev_2_porty), 
  .ch13_recip_stdev_1(ch13_select_section_coefficients_stdev_1_porty), 
  .ch13_neg_mean_4(ch13_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch13_neg_mean_3(ch13_select_section_coefficients_mean_3_porty), 
  .ch13_neg_mean_2(ch13_select_section_coefficients_mean_2_porty), 
  .ch13_neg_mean_1(ch13_select_section_coefficients_mean_1_porty), 
  .ch13_coeff_4_10(ch13_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch13_coeff_4_9(ch13_select_section_coefficients_coeff_4_9_porty), 
  .ch13_coeff_4_8(ch13_select_section_coefficients_coeff_4_8_porty), 
  .ch13_coeff_4_7(ch13_select_section_coefficients_coeff_4_7_porty), 
  .ch13_coeff_4_6(ch13_select_section_coefficients_coeff_4_6_porty), 
  .ch13_coeff_4_5(ch13_select_section_coefficients_coeff_4_5_porty), 
  .ch13_coeff_4_4(ch13_select_section_coefficients_coeff_4_4_porty), 
  .ch13_coeff_4_3(ch13_select_section_coefficients_coeff_4_3_porty), 
  .ch13_coeff_4_2(ch13_select_section_coefficients_coeff_4_2_porty), 
  .ch13_coeff_4_1(ch13_select_section_coefficients_coeff_4_1_porty), 
  .ch13_coeff_4_0(ch13_select_section_coefficients_coeff_4_0_porty), 
  .ch13_coeff_3_10(ch13_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch13_coeff_3_9(ch13_select_section_coefficients_coeff_3_9_porty), 
  .ch13_coeff_3_8(ch13_select_section_coefficients_coeff_3_8_porty), 
  .ch13_coeff_3_7(ch13_select_section_coefficients_coeff_3_7_porty), 
  .ch13_coeff_3_6(ch13_select_section_coefficients_coeff_3_6_porty), 
  .ch13_coeff_3_5(ch13_select_section_coefficients_coeff_3_5_porty), 
  .ch13_coeff_3_4(ch13_select_section_coefficients_coeff_3_4_porty), 
  .ch13_coeff_3_3(ch13_select_section_coefficients_coeff_3_3_porty), 
  .ch13_coeff_3_2(ch13_select_section_coefficients_coeff_3_2_porty), 
  .ch13_coeff_3_1(ch13_select_section_coefficients_coeff_3_1_porty), 
  .ch13_coeff_3_0(ch13_select_section_coefficients_coeff_3_0_porty), 
  .ch13_coeff_2_10(ch13_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch13_coeff_2_9(ch13_select_section_coefficients_coeff_2_9_porty), 
  .ch13_coeff_2_8(ch13_select_section_coefficients_coeff_2_8_porty), 
  .ch13_coeff_2_7(ch13_select_section_coefficients_coeff_2_7_porty), 
  .ch13_coeff_2_6(ch13_select_section_coefficients_coeff_2_6_porty), 
  .ch13_coeff_2_5(ch13_select_section_coefficients_coeff_2_5_porty), 
  .ch13_coeff_2_4(ch13_select_section_coefficients_coeff_2_4_porty), 
  .ch13_coeff_2_3(ch13_select_section_coefficients_coeff_2_3_porty), 
  .ch13_coeff_2_2(ch13_select_section_coefficients_coeff_2_2_porty), 
  .ch13_coeff_2_1(ch13_select_section_coefficients_coeff_2_1_porty), 
  .ch13_coeff_2_0(ch13_select_section_coefficients_coeff_2_0_porty), 
  .ch13_coeff_1_10(ch13_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch13_coeff_1_9(ch13_select_section_coefficients_coeff_1_9_porty), 
  .ch13_coeff_1_8(ch13_select_section_coefficients_coeff_1_8_porty), 
  .ch13_coeff_1_7(ch13_select_section_coefficients_coeff_1_7_porty), 
  .ch13_coeff_1_6(ch13_select_section_coefficients_coeff_1_6_porty), 
  .ch13_coeff_1_5(ch13_select_section_coefficients_coeff_1_5_porty), 
  .ch13_coeff_1_4(ch13_select_section_coefficients_coeff_1_4_porty), 
  .ch13_coeff_1_3(ch13_select_section_coefficients_coeff_1_3_porty), 
  .ch13_coeff_1_2(ch13_select_section_coefficients_coeff_1_2_porty), 
  .ch13_coeff_1_1(ch13_select_section_coefficients_coeff_1_1_porty), 
  .ch13_coeff_1_0(ch13_select_section_coefficients_coeff_1_0_porty), 

  .ch12_x_adc(ch12_x_adc),//NLC output 
  .ch12_x_lin(ch12_x_lin),//ADC output 
  .ch12_section_limit(ch12_section_limit),//X-value that separates the sections 
  .ch12_recip_stdev_4(ch12_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch12_recip_stdev_3(ch12_select_section_coefficients_stdev_3_porty), 
  .ch12_recip_stdev_2(ch12_select_section_coefficients_stdev_2_porty), 
  .ch12_recip_stdev_1(ch12_select_section_coefficients_stdev_1_porty), 
  .ch12_neg_mean_4(ch12_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch12_neg_mean_3(ch12_select_section_coefficients_mean_3_porty), 
  .ch12_neg_mean_2(ch12_select_section_coefficients_mean_2_porty), 
  .ch12_neg_mean_1(ch12_select_section_coefficients_mean_1_porty), 
  .ch12_coeff_4_10(ch12_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch12_coeff_4_9(ch12_select_section_coefficients_coeff_4_9_porty), 
  .ch12_coeff_4_8(ch12_select_section_coefficients_coeff_4_8_porty), 
  .ch12_coeff_4_7(ch12_select_section_coefficients_coeff_4_7_porty), 
  .ch12_coeff_4_6(ch12_select_section_coefficients_coeff_4_6_porty), 
  .ch12_coeff_4_5(ch12_select_section_coefficients_coeff_4_5_porty), 
  .ch12_coeff_4_4(ch12_select_section_coefficients_coeff_4_4_porty), 
  .ch12_coeff_4_3(ch12_select_section_coefficients_coeff_4_3_porty), 
  .ch12_coeff_4_2(ch12_select_section_coefficients_coeff_4_2_porty), 
  .ch12_coeff_4_1(ch12_select_section_coefficients_coeff_4_1_porty), 
  .ch12_coeff_4_0(ch12_select_section_coefficients_coeff_4_0_porty), 
  .ch12_coeff_3_10(ch12_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch12_coeff_3_9(ch12_select_section_coefficients_coeff_3_9_porty), 
  .ch12_coeff_3_8(ch12_select_section_coefficients_coeff_3_8_porty), 
  .ch12_coeff_3_7(ch12_select_section_coefficients_coeff_3_7_porty), 
  .ch12_coeff_3_6(ch12_select_section_coefficients_coeff_3_6_porty), 
  .ch12_coeff_3_5(ch12_select_section_coefficients_coeff_3_5_porty), 
  .ch12_coeff_3_4(ch12_select_section_coefficients_coeff_3_4_porty), 
  .ch12_coeff_3_3(ch12_select_section_coefficients_coeff_3_3_porty), 
  .ch12_coeff_3_2(ch12_select_section_coefficients_coeff_3_2_porty), 
  .ch12_coeff_3_1(ch12_select_section_coefficients_coeff_3_1_porty), 
  .ch12_coeff_3_0(ch12_select_section_coefficients_coeff_3_0_porty), 
  .ch12_coeff_2_10(ch12_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch12_coeff_2_9(ch12_select_section_coefficients_coeff_2_9_porty), 
  .ch12_coeff_2_8(ch12_select_section_coefficients_coeff_2_8_porty), 
  .ch12_coeff_2_7(ch12_select_section_coefficients_coeff_2_7_porty), 
  .ch12_coeff_2_6(ch12_select_section_coefficients_coeff_2_6_porty), 
  .ch12_coeff_2_5(ch12_select_section_coefficients_coeff_2_5_porty), 
  .ch12_coeff_2_4(ch12_select_section_coefficients_coeff_2_4_porty), 
  .ch12_coeff_2_3(ch12_select_section_coefficients_coeff_2_3_porty), 
  .ch12_coeff_2_2(ch12_select_section_coefficients_coeff_2_2_porty), 
  .ch12_coeff_2_1(ch12_select_section_coefficients_coeff_2_1_porty), 
  .ch12_coeff_2_0(ch12_select_section_coefficients_coeff_2_0_porty), 
  .ch12_coeff_1_10(ch12_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch12_coeff_1_9(ch12_select_section_coefficients_coeff_1_9_porty), 
  .ch12_coeff_1_8(ch12_select_section_coefficients_coeff_1_8_porty), 
  .ch12_coeff_1_7(ch12_select_section_coefficients_coeff_1_7_porty), 
  .ch12_coeff_1_6(ch12_select_section_coefficients_coeff_1_6_porty), 
  .ch12_coeff_1_5(ch12_select_section_coefficients_coeff_1_5_porty), 
  .ch12_coeff_1_4(ch12_select_section_coefficients_coeff_1_4_porty), 
  .ch12_coeff_1_3(ch12_select_section_coefficients_coeff_1_3_porty), 
  .ch12_coeff_1_2(ch12_select_section_coefficients_coeff_1_2_porty), 
  .ch12_coeff_1_1(ch12_select_section_coefficients_coeff_1_1_porty), 
  .ch12_coeff_1_0(ch12_select_section_coefficients_coeff_1_0_porty), 

  .ch11_x_adc(ch11_x_adc),//NLC output 
  .ch11_x_lin(ch11_x_lin),//ADC output 
  .ch11_section_limit(ch11_section_limit),//X-value that separates the sections 
  .ch11_recip_stdev_4(ch11_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch11_recip_stdev_3(ch11_select_section_coefficients_stdev_3_porty), 
  .ch11_recip_stdev_2(ch11_select_section_coefficients_stdev_2_porty), 
  .ch11_recip_stdev_1(ch11_select_section_coefficients_stdev_1_porty), 
  .ch11_neg_mean_4(ch11_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch11_neg_mean_3(ch11_select_section_coefficients_mean_3_porty), 
  .ch11_neg_mean_2(ch11_select_section_coefficients_mean_2_porty), 
  .ch11_neg_mean_1(ch11_select_section_coefficients_mean_1_porty), 
  .ch11_coeff_4_10(ch11_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch11_coeff_4_9(ch11_select_section_coefficients_coeff_4_9_porty), 
  .ch11_coeff_4_8(ch11_select_section_coefficients_coeff_4_8_porty), 
  .ch11_coeff_4_7(ch11_select_section_coefficients_coeff_4_7_porty), 
  .ch11_coeff_4_6(ch11_select_section_coefficients_coeff_4_6_porty), 
  .ch11_coeff_4_5(ch11_select_section_coefficients_coeff_4_5_porty), 
  .ch11_coeff_4_4(ch11_select_section_coefficients_coeff_4_4_porty), 
  .ch11_coeff_4_3(ch11_select_section_coefficients_coeff_4_3_porty), 
  .ch11_coeff_4_2(ch11_select_section_coefficients_coeff_4_2_porty), 
  .ch11_coeff_4_1(ch11_select_section_coefficients_coeff_4_1_porty), 
  .ch11_coeff_4_0(ch11_select_section_coefficients_coeff_4_0_porty), 
  .ch11_coeff_3_10(ch11_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch11_coeff_3_9(ch11_select_section_coefficients_coeff_3_9_porty), 
  .ch11_coeff_3_8(ch11_select_section_coefficients_coeff_3_8_porty), 
  .ch11_coeff_3_7(ch11_select_section_coefficients_coeff_3_7_porty), 
  .ch11_coeff_3_6(ch11_select_section_coefficients_coeff_3_6_porty), 
  .ch11_coeff_3_5(ch11_select_section_coefficients_coeff_3_5_porty), 
  .ch11_coeff_3_4(ch11_select_section_coefficients_coeff_3_4_porty), 
  .ch11_coeff_3_3(ch11_select_section_coefficients_coeff_3_3_porty), 
  .ch11_coeff_3_2(ch11_select_section_coefficients_coeff_3_2_porty), 
  .ch11_coeff_3_1(ch11_select_section_coefficients_coeff_3_1_porty), 
  .ch11_coeff_3_0(ch11_select_section_coefficients_coeff_3_0_porty), 
  .ch11_coeff_2_10(ch11_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch11_coeff_2_9(ch11_select_section_coefficients_coeff_2_9_porty), 
  .ch11_coeff_2_8(ch11_select_section_coefficients_coeff_2_8_porty), 
  .ch11_coeff_2_7(ch11_select_section_coefficients_coeff_2_7_porty), 
  .ch11_coeff_2_6(ch11_select_section_coefficients_coeff_2_6_porty), 
  .ch11_coeff_2_5(ch11_select_section_coefficients_coeff_2_5_porty), 
  .ch11_coeff_2_4(ch11_select_section_coefficients_coeff_2_4_porty), 
  .ch11_coeff_2_3(ch11_select_section_coefficients_coeff_2_3_porty), 
  .ch11_coeff_2_2(ch11_select_section_coefficients_coeff_2_2_porty), 
  .ch11_coeff_2_1(ch11_select_section_coefficients_coeff_2_1_porty), 
  .ch11_coeff_2_0(ch11_select_section_coefficients_coeff_2_0_porty), 
  .ch11_coeff_1_10(ch11_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch11_coeff_1_9(ch11_select_section_coefficients_coeff_1_9_porty), 
  .ch11_coeff_1_8(ch11_select_section_coefficients_coeff_1_8_porty), 
  .ch11_coeff_1_7(ch11_select_section_coefficients_coeff_1_7_porty), 
  .ch11_coeff_1_6(ch11_select_section_coefficients_coeff_1_6_porty), 
  .ch11_coeff_1_5(ch11_select_section_coefficients_coeff_1_5_porty), 
  .ch11_coeff_1_4(ch11_select_section_coefficients_coeff_1_4_porty), 
  .ch11_coeff_1_3(ch11_select_section_coefficients_coeff_1_3_porty), 
  .ch11_coeff_1_2(ch11_select_section_coefficients_coeff_1_2_porty), 
  .ch11_coeff_1_1(ch11_select_section_coefficients_coeff_1_1_porty), 
  .ch11_coeff_1_0(ch11_select_section_coefficients_coeff_1_0_porty), 

  .ch10_x_adc(ch10_x_adc),//NLC output 
  .ch10_x_lin(ch10_x_lin),//ADC output 
  .ch10_section_limit(ch10_section_limit),//X-value that separates the sections 
  .ch10_recip_stdev_4(ch10_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch10_recip_stdev_3(ch10_select_section_coefficients_stdev_3_porty), 
  .ch10_recip_stdev_2(ch10_select_section_coefficients_stdev_2_porty), 
  .ch10_recip_stdev_1(ch10_select_section_coefficients_stdev_1_porty), 
  .ch10_neg_mean_4(ch10_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch10_neg_mean_3(ch10_select_section_coefficients_mean_3_porty), 
  .ch10_neg_mean_2(ch10_select_section_coefficients_mean_2_porty), 
  .ch10_neg_mean_1(ch10_select_section_coefficients_mean_1_porty), 
  .ch10_coeff_4_10(ch10_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch10_coeff_4_9(ch10_select_section_coefficients_coeff_4_9_porty), 
  .ch10_coeff_4_8(ch10_select_section_coefficients_coeff_4_8_porty), 
  .ch10_coeff_4_7(ch10_select_section_coefficients_coeff_4_7_porty), 
  .ch10_coeff_4_6(ch10_select_section_coefficients_coeff_4_6_porty), 
  .ch10_coeff_4_5(ch10_select_section_coefficients_coeff_4_5_porty), 
  .ch10_coeff_4_4(ch10_select_section_coefficients_coeff_4_4_porty), 
  .ch10_coeff_4_3(ch10_select_section_coefficients_coeff_4_3_porty), 
  .ch10_coeff_4_2(ch10_select_section_coefficients_coeff_4_2_porty), 
  .ch10_coeff_4_1(ch10_select_section_coefficients_coeff_4_1_porty), 
  .ch10_coeff_4_0(ch10_select_section_coefficients_coeff_4_0_porty), 
  .ch10_coeff_3_10(ch10_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch10_coeff_3_9(ch10_select_section_coefficients_coeff_3_9_porty), 
  .ch10_coeff_3_8(ch10_select_section_coefficients_coeff_3_8_porty), 
  .ch10_coeff_3_7(ch10_select_section_coefficients_coeff_3_7_porty), 
  .ch10_coeff_3_6(ch10_select_section_coefficients_coeff_3_6_porty), 
  .ch10_coeff_3_5(ch10_select_section_coefficients_coeff_3_5_porty), 
  .ch10_coeff_3_4(ch10_select_section_coefficients_coeff_3_4_porty), 
  .ch10_coeff_3_3(ch10_select_section_coefficients_coeff_3_3_porty), 
  .ch10_coeff_3_2(ch10_select_section_coefficients_coeff_3_2_porty), 
  .ch10_coeff_3_1(ch10_select_section_coefficients_coeff_3_1_porty), 
  .ch10_coeff_3_0(ch10_select_section_coefficients_coeff_3_0_porty), 
  .ch10_coeff_2_10(ch10_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch10_coeff_2_9(ch10_select_section_coefficients_coeff_2_9_porty), 
  .ch10_coeff_2_8(ch10_select_section_coefficients_coeff_2_8_porty), 
  .ch10_coeff_2_7(ch10_select_section_coefficients_coeff_2_7_porty), 
  .ch10_coeff_2_6(ch10_select_section_coefficients_coeff_2_6_porty), 
  .ch10_coeff_2_5(ch10_select_section_coefficients_coeff_2_5_porty), 
  .ch10_coeff_2_4(ch10_select_section_coefficients_coeff_2_4_porty), 
  .ch10_coeff_2_3(ch10_select_section_coefficients_coeff_2_3_porty), 
  .ch10_coeff_2_2(ch10_select_section_coefficients_coeff_2_2_porty), 
  .ch10_coeff_2_1(ch10_select_section_coefficients_coeff_2_1_porty), 
  .ch10_coeff_2_0(ch10_select_section_coefficients_coeff_2_0_porty), 
  .ch10_coeff_1_10(ch10_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch10_coeff_1_9(ch10_select_section_coefficients_coeff_1_9_porty), 
  .ch10_coeff_1_8(ch10_select_section_coefficients_coeff_1_8_porty), 
  .ch10_coeff_1_7(ch10_select_section_coefficients_coeff_1_7_porty), 
  .ch10_coeff_1_6(ch10_select_section_coefficients_coeff_1_6_porty), 
  .ch10_coeff_1_5(ch10_select_section_coefficients_coeff_1_5_porty), 
  .ch10_coeff_1_4(ch10_select_section_coefficients_coeff_1_4_porty), 
  .ch10_coeff_1_3(ch10_select_section_coefficients_coeff_1_3_porty), 
  .ch10_coeff_1_2(ch10_select_section_coefficients_coeff_1_2_porty), 
  .ch10_coeff_1_1(ch10_select_section_coefficients_coeff_1_1_porty), 
  .ch10_coeff_1_0(ch10_select_section_coefficients_coeff_1_0_porty), 

  .ch9_x_adc(ch9_x_adc),//NLC output 
  .ch9_x_lin(ch9_x_lin),//ADC output 
  .ch9_section_limit(ch9_section_limit),//X-value that separates the sections 
  .ch9_recip_stdev_4(ch9_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch9_recip_stdev_3(ch9_select_section_coefficients_stdev_3_porty), 
  .ch9_recip_stdev_2(ch9_select_section_coefficients_stdev_2_porty), 
  .ch9_recip_stdev_1(ch9_select_section_coefficients_stdev_1_porty), 
  .ch9_neg_mean_4(ch9_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch9_neg_mean_3(ch9_select_section_coefficients_mean_3_porty), 
  .ch9_neg_mean_2(ch9_select_section_coefficients_mean_2_porty), 
  .ch9_neg_mean_1(ch9_select_section_coefficients_mean_1_porty), 
  .ch9_coeff_4_10(ch9_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch9_coeff_4_9(ch9_select_section_coefficients_coeff_4_9_porty), 
  .ch9_coeff_4_8(ch9_select_section_coefficients_coeff_4_8_porty), 
  .ch9_coeff_4_7(ch9_select_section_coefficients_coeff_4_7_porty), 
  .ch9_coeff_4_6(ch9_select_section_coefficients_coeff_4_6_porty), 
  .ch9_coeff_4_5(ch9_select_section_coefficients_coeff_4_5_porty), 
  .ch9_coeff_4_4(ch9_select_section_coefficients_coeff_4_4_porty), 
  .ch9_coeff_4_3(ch9_select_section_coefficients_coeff_4_3_porty), 
  .ch9_coeff_4_2(ch9_select_section_coefficients_coeff_4_2_porty), 
  .ch9_coeff_4_1(ch9_select_section_coefficients_coeff_4_1_porty), 
  .ch9_coeff_4_0(ch9_select_section_coefficients_coeff_4_0_porty), 
  .ch9_coeff_3_10(ch9_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch9_coeff_3_9(ch9_select_section_coefficients_coeff_3_9_porty), 
  .ch9_coeff_3_8(ch9_select_section_coefficients_coeff_3_8_porty), 
  .ch9_coeff_3_7(ch9_select_section_coefficients_coeff_3_7_porty), 
  .ch9_coeff_3_6(ch9_select_section_coefficients_coeff_3_6_porty), 
  .ch9_coeff_3_5(ch9_select_section_coefficients_coeff_3_5_porty), 
  .ch9_coeff_3_4(ch9_select_section_coefficients_coeff_3_4_porty), 
  .ch9_coeff_3_3(ch9_select_section_coefficients_coeff_3_3_porty), 
  .ch9_coeff_3_2(ch9_select_section_coefficients_coeff_3_2_porty), 
  .ch9_coeff_3_1(ch9_select_section_coefficients_coeff_3_1_porty), 
  .ch9_coeff_3_0(ch9_select_section_coefficients_coeff_3_0_porty), 
  .ch9_coeff_2_10(ch9_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch9_coeff_2_9(ch9_select_section_coefficients_coeff_2_9_porty), 
  .ch9_coeff_2_8(ch9_select_section_coefficients_coeff_2_8_porty), 
  .ch9_coeff_2_7(ch9_select_section_coefficients_coeff_2_7_porty), 
  .ch9_coeff_2_6(ch9_select_section_coefficients_coeff_2_6_porty), 
  .ch9_coeff_2_5(ch9_select_section_coefficients_coeff_2_5_porty), 
  .ch9_coeff_2_4(ch9_select_section_coefficients_coeff_2_4_porty), 
  .ch9_coeff_2_3(ch9_select_section_coefficients_coeff_2_3_porty), 
  .ch9_coeff_2_2(ch9_select_section_coefficients_coeff_2_2_porty), 
  .ch9_coeff_2_1(ch9_select_section_coefficients_coeff_2_1_porty), 
  .ch9_coeff_2_0(ch9_select_section_coefficients_coeff_2_0_porty), 
  .ch9_coeff_1_10(ch9_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch9_coeff_1_9(ch9_select_section_coefficients_coeff_1_9_porty), 
  .ch9_coeff_1_8(ch9_select_section_coefficients_coeff_1_8_porty), 
  .ch9_coeff_1_7(ch9_select_section_coefficients_coeff_1_7_porty), 
  .ch9_coeff_1_6(ch9_select_section_coefficients_coeff_1_6_porty), 
  .ch9_coeff_1_5(ch9_select_section_coefficients_coeff_1_5_porty), 
  .ch9_coeff_1_4(ch9_select_section_coefficients_coeff_1_4_porty), 
  .ch9_coeff_1_3(ch9_select_section_coefficients_coeff_1_3_porty), 
  .ch9_coeff_1_2(ch9_select_section_coefficients_coeff_1_2_porty), 
  .ch9_coeff_1_1(ch9_select_section_coefficients_coeff_1_1_porty), 
  .ch9_coeff_1_0(ch9_select_section_coefficients_coeff_1_0_porty), 

  .ch8_x_adc(ch8_x_adc),//NLC output 
  .ch8_x_lin(ch8_x_lin),//ADC output 
  .ch8_section_limit(ch8_section_limit),//X-value that separates the sections 
  .ch8_recip_stdev_4(ch8_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch8_recip_stdev_3(ch8_select_section_coefficients_stdev_3_porty), 
  .ch8_recip_stdev_2(ch8_select_section_coefficients_stdev_2_porty), 
  .ch8_recip_stdev_1(ch8_select_section_coefficients_stdev_1_porty), 
  .ch8_neg_mean_4(ch8_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch8_neg_mean_3(ch8_select_section_coefficients_mean_3_porty), 
  .ch8_neg_mean_2(ch8_select_section_coefficients_mean_2_porty), 
  .ch8_neg_mean_1(ch8_select_section_coefficients_mean_1_porty), 
  .ch8_coeff_4_10(ch8_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch8_coeff_4_9(ch8_select_section_coefficients_coeff_4_9_porty), 
  .ch8_coeff_4_8(ch8_select_section_coefficients_coeff_4_8_porty), 
  .ch8_coeff_4_7(ch8_select_section_coefficients_coeff_4_7_porty), 
  .ch8_coeff_4_6(ch8_select_section_coefficients_coeff_4_6_porty), 
  .ch8_coeff_4_5(ch8_select_section_coefficients_coeff_4_5_porty), 
  .ch8_coeff_4_4(ch8_select_section_coefficients_coeff_4_4_porty), 
  .ch8_coeff_4_3(ch8_select_section_coefficients_coeff_4_3_porty), 
  .ch8_coeff_4_2(ch8_select_section_coefficients_coeff_4_2_porty), 
  .ch8_coeff_4_1(ch8_select_section_coefficients_coeff_4_1_porty), 
  .ch8_coeff_4_0(ch8_select_section_coefficients_coeff_4_0_porty), 
  .ch8_coeff_3_10(ch8_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch8_coeff_3_9(ch8_select_section_coefficients_coeff_3_9_porty), 
  .ch8_coeff_3_8(ch8_select_section_coefficients_coeff_3_8_porty), 
  .ch8_coeff_3_7(ch8_select_section_coefficients_coeff_3_7_porty), 
  .ch8_coeff_3_6(ch8_select_section_coefficients_coeff_3_6_porty), 
  .ch8_coeff_3_5(ch8_select_section_coefficients_coeff_3_5_porty), 
  .ch8_coeff_3_4(ch8_select_section_coefficients_coeff_3_4_porty), 
  .ch8_coeff_3_3(ch8_select_section_coefficients_coeff_3_3_porty), 
  .ch8_coeff_3_2(ch8_select_section_coefficients_coeff_3_2_porty), 
  .ch8_coeff_3_1(ch8_select_section_coefficients_coeff_3_1_porty), 
  .ch8_coeff_3_0(ch8_select_section_coefficients_coeff_3_0_porty), 
  .ch8_coeff_2_10(ch8_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch8_coeff_2_9(ch8_select_section_coefficients_coeff_2_9_porty), 
  .ch8_coeff_2_8(ch8_select_section_coefficients_coeff_2_8_porty), 
  .ch8_coeff_2_7(ch8_select_section_coefficients_coeff_2_7_porty), 
  .ch8_coeff_2_6(ch8_select_section_coefficients_coeff_2_6_porty), 
  .ch8_coeff_2_5(ch8_select_section_coefficients_coeff_2_5_porty), 
  .ch8_coeff_2_4(ch8_select_section_coefficients_coeff_2_4_porty), 
  .ch8_coeff_2_3(ch8_select_section_coefficients_coeff_2_3_porty), 
  .ch8_coeff_2_2(ch8_select_section_coefficients_coeff_2_2_porty), 
  .ch8_coeff_2_1(ch8_select_section_coefficients_coeff_2_1_porty), 
  .ch8_coeff_2_0(ch8_select_section_coefficients_coeff_2_0_porty), 
  .ch8_coeff_1_10(ch8_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch8_coeff_1_9(ch8_select_section_coefficients_coeff_1_9_porty), 
  .ch8_coeff_1_8(ch8_select_section_coefficients_coeff_1_8_porty), 
  .ch8_coeff_1_7(ch8_select_section_coefficients_coeff_1_7_porty), 
  .ch8_coeff_1_6(ch8_select_section_coefficients_coeff_1_6_porty), 
  .ch8_coeff_1_5(ch8_select_section_coefficients_coeff_1_5_porty), 
  .ch8_coeff_1_4(ch8_select_section_coefficients_coeff_1_4_porty), 
  .ch8_coeff_1_3(ch8_select_section_coefficients_coeff_1_3_porty), 
  .ch8_coeff_1_2(ch8_select_section_coefficients_coeff_1_2_porty), 
  .ch8_coeff_1_1(ch8_select_section_coefficients_coeff_1_1_porty), 
  .ch8_coeff_1_0(ch8_select_section_coefficients_coeff_1_0_porty), 

  .ch7_x_adc(ch7_x_adc),//NLC output 
  .ch7_x_lin(ch7_x_lin),//ADC output 
  .ch7_section_limit(ch7_section_limit),//X-value that separates the sections 
  .ch7_recip_stdev_4(ch7_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch7_recip_stdev_3(ch7_select_section_coefficients_stdev_3_porty), 
  .ch7_recip_stdev_2(ch7_select_section_coefficients_stdev_2_porty), 
  .ch7_recip_stdev_1(ch7_select_section_coefficients_stdev_1_porty), 
  .ch7_neg_mean_4(ch7_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch7_neg_mean_3(ch7_select_section_coefficients_mean_3_porty), 
  .ch7_neg_mean_2(ch7_select_section_coefficients_mean_2_porty), 
  .ch7_neg_mean_1(ch7_select_section_coefficients_mean_1_porty), 
  .ch7_coeff_4_10(ch7_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch7_coeff_4_9(ch7_select_section_coefficients_coeff_4_9_porty), 
  .ch7_coeff_4_8(ch7_select_section_coefficients_coeff_4_8_porty), 
  .ch7_coeff_4_7(ch7_select_section_coefficients_coeff_4_7_porty), 
  .ch7_coeff_4_6(ch7_select_section_coefficients_coeff_4_6_porty), 
  .ch7_coeff_4_5(ch7_select_section_coefficients_coeff_4_5_porty), 
  .ch7_coeff_4_4(ch7_select_section_coefficients_coeff_4_4_porty), 
  .ch7_coeff_4_3(ch7_select_section_coefficients_coeff_4_3_porty), 
  .ch7_coeff_4_2(ch7_select_section_coefficients_coeff_4_2_porty), 
  .ch7_coeff_4_1(ch7_select_section_coefficients_coeff_4_1_porty), 
  .ch7_coeff_4_0(ch7_select_section_coefficients_coeff_4_0_porty), 
  .ch7_coeff_3_10(ch7_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch7_coeff_3_9(ch7_select_section_coefficients_coeff_3_9_porty), 
  .ch7_coeff_3_8(ch7_select_section_coefficients_coeff_3_8_porty), 
  .ch7_coeff_3_7(ch7_select_section_coefficients_coeff_3_7_porty), 
  .ch7_coeff_3_6(ch7_select_section_coefficients_coeff_3_6_porty), 
  .ch7_coeff_3_5(ch7_select_section_coefficients_coeff_3_5_porty), 
  .ch7_coeff_3_4(ch7_select_section_coefficients_coeff_3_4_porty), 
  .ch7_coeff_3_3(ch7_select_section_coefficients_coeff_3_3_porty), 
  .ch7_coeff_3_2(ch7_select_section_coefficients_coeff_3_2_porty), 
  .ch7_coeff_3_1(ch7_select_section_coefficients_coeff_3_1_porty), 
  .ch7_coeff_3_0(ch7_select_section_coefficients_coeff_3_0_porty), 
  .ch7_coeff_2_10(ch7_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch7_coeff_2_9(ch7_select_section_coefficients_coeff_2_9_porty), 
  .ch7_coeff_2_8(ch7_select_section_coefficients_coeff_2_8_porty), 
  .ch7_coeff_2_7(ch7_select_section_coefficients_coeff_2_7_porty), 
  .ch7_coeff_2_6(ch7_select_section_coefficients_coeff_2_6_porty), 
  .ch7_coeff_2_5(ch7_select_section_coefficients_coeff_2_5_porty), 
  .ch7_coeff_2_4(ch7_select_section_coefficients_coeff_2_4_porty), 
  .ch7_coeff_2_3(ch7_select_section_coefficients_coeff_2_3_porty), 
  .ch7_coeff_2_2(ch7_select_section_coefficients_coeff_2_2_porty), 
  .ch7_coeff_2_1(ch7_select_section_coefficients_coeff_2_1_porty), 
  .ch7_coeff_2_0(ch7_select_section_coefficients_coeff_2_0_porty), 
  .ch7_coeff_1_10(ch7_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch7_coeff_1_9(ch7_select_section_coefficients_coeff_1_9_porty), 
  .ch7_coeff_1_8(ch7_select_section_coefficients_coeff_1_8_porty), 
  .ch7_coeff_1_7(ch7_select_section_coefficients_coeff_1_7_porty), 
  .ch7_coeff_1_6(ch7_select_section_coefficients_coeff_1_6_porty), 
  .ch7_coeff_1_5(ch7_select_section_coefficients_coeff_1_5_porty), 
  .ch7_coeff_1_4(ch7_select_section_coefficients_coeff_1_4_porty), 
  .ch7_coeff_1_3(ch7_select_section_coefficients_coeff_1_3_porty), 
  .ch7_coeff_1_2(ch7_select_section_coefficients_coeff_1_2_porty), 
  .ch7_coeff_1_1(ch7_select_section_coefficients_coeff_1_1_porty), 
  .ch7_coeff_1_0(ch7_select_section_coefficients_coeff_1_0_porty), 

  .ch6_x_adc(ch6_x_adc),//NLC output 
  .ch6_x_lin(ch6_x_lin),//ADC output 
  .ch6_section_limit(ch6_section_limit),//X-value that separates the sections 
  .ch6_recip_stdev_4(ch6_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch6_recip_stdev_3(ch6_select_section_coefficients_stdev_3_porty), 
  .ch6_recip_stdev_2(ch6_select_section_coefficients_stdev_2_porty), 
  .ch6_recip_stdev_1(ch6_select_section_coefficients_stdev_1_porty), 
  .ch6_neg_mean_4(ch6_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch6_neg_mean_3(ch6_select_section_coefficients_mean_3_porty), 
  .ch6_neg_mean_2(ch6_select_section_coefficients_mean_2_porty), 
  .ch6_neg_mean_1(ch6_select_section_coefficients_mean_1_porty), 
  .ch6_coeff_4_10(ch6_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch6_coeff_4_9(ch6_select_section_coefficients_coeff_4_9_porty), 
  .ch6_coeff_4_8(ch6_select_section_coefficients_coeff_4_8_porty), 
  .ch6_coeff_4_7(ch6_select_section_coefficients_coeff_4_7_porty), 
  .ch6_coeff_4_6(ch6_select_section_coefficients_coeff_4_6_porty), 
  .ch6_coeff_4_5(ch6_select_section_coefficients_coeff_4_5_porty), 
  .ch6_coeff_4_4(ch6_select_section_coefficients_coeff_4_4_porty), 
  .ch6_coeff_4_3(ch6_select_section_coefficients_coeff_4_3_porty), 
  .ch6_coeff_4_2(ch6_select_section_coefficients_coeff_4_2_porty), 
  .ch6_coeff_4_1(ch6_select_section_coefficients_coeff_4_1_porty), 
  .ch6_coeff_4_0(ch6_select_section_coefficients_coeff_4_0_porty), 
  .ch6_coeff_3_10(ch6_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch6_coeff_3_9(ch6_select_section_coefficients_coeff_3_9_porty), 
  .ch6_coeff_3_8(ch6_select_section_coefficients_coeff_3_8_porty), 
  .ch6_coeff_3_7(ch6_select_section_coefficients_coeff_3_7_porty), 
  .ch6_coeff_3_6(ch6_select_section_coefficients_coeff_3_6_porty), 
  .ch6_coeff_3_5(ch6_select_section_coefficients_coeff_3_5_porty), 
  .ch6_coeff_3_4(ch6_select_section_coefficients_coeff_3_4_porty), 
  .ch6_coeff_3_3(ch6_select_section_coefficients_coeff_3_3_porty), 
  .ch6_coeff_3_2(ch6_select_section_coefficients_coeff_3_2_porty), 
  .ch6_coeff_3_1(ch6_select_section_coefficients_coeff_3_1_porty), 
  .ch6_coeff_3_0(ch6_select_section_coefficients_coeff_3_0_porty), 
  .ch6_coeff_2_10(ch6_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch6_coeff_2_9(ch6_select_section_coefficients_coeff_2_9_porty), 
  .ch6_coeff_2_8(ch6_select_section_coefficients_coeff_2_8_porty), 
  .ch6_coeff_2_7(ch6_select_section_coefficients_coeff_2_7_porty), 
  .ch6_coeff_2_6(ch6_select_section_coefficients_coeff_2_6_porty), 
  .ch6_coeff_2_5(ch6_select_section_coefficients_coeff_2_5_porty), 
  .ch6_coeff_2_4(ch6_select_section_coefficients_coeff_2_4_porty), 
  .ch6_coeff_2_3(ch6_select_section_coefficients_coeff_2_3_porty), 
  .ch6_coeff_2_2(ch6_select_section_coefficients_coeff_2_2_porty), 
  .ch6_coeff_2_1(ch6_select_section_coefficients_coeff_2_1_porty), 
  .ch6_coeff_2_0(ch6_select_section_coefficients_coeff_2_0_porty), 
  .ch6_coeff_1_10(ch6_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch6_coeff_1_9(ch6_select_section_coefficients_coeff_1_9_porty), 
  .ch6_coeff_1_8(ch6_select_section_coefficients_coeff_1_8_porty), 
  .ch6_coeff_1_7(ch6_select_section_coefficients_coeff_1_7_porty), 
  .ch6_coeff_1_6(ch6_select_section_coefficients_coeff_1_6_porty), 
  .ch6_coeff_1_5(ch6_select_section_coefficients_coeff_1_5_porty), 
  .ch6_coeff_1_4(ch6_select_section_coefficients_coeff_1_4_porty), 
  .ch6_coeff_1_3(ch6_select_section_coefficients_coeff_1_3_porty), 
  .ch6_coeff_1_2(ch6_select_section_coefficients_coeff_1_2_porty), 
  .ch6_coeff_1_1(ch6_select_section_coefficients_coeff_1_1_porty), 
  .ch6_coeff_1_0(ch6_select_section_coefficients_coeff_1_0_porty), 

  .ch5_x_adc(ch5_x_adc),//NLC output 
  .ch5_x_lin(ch5_x_lin),//ADC output 
  .ch5_section_limit(ch5_section_limit),//X-value that separates the sections 
  .ch5_recip_stdev_4(ch5_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch5_recip_stdev_3(ch5_select_section_coefficients_stdev_3_porty), 
  .ch5_recip_stdev_2(ch5_select_section_coefficients_stdev_2_porty), 
  .ch5_recip_stdev_1(ch5_select_section_coefficients_stdev_1_porty), 
  .ch5_neg_mean_4(ch5_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch5_neg_mean_3(ch5_select_section_coefficients_mean_3_porty), 
  .ch5_neg_mean_2(ch5_select_section_coefficients_mean_2_porty), 
  .ch5_neg_mean_1(ch5_select_section_coefficients_mean_1_porty), 
  .ch5_coeff_4_10(ch5_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch5_coeff_4_9(ch5_select_section_coefficients_coeff_4_9_porty), 
  .ch5_coeff_4_8(ch5_select_section_coefficients_coeff_4_8_porty), 
  .ch5_coeff_4_7(ch5_select_section_coefficients_coeff_4_7_porty), 
  .ch5_coeff_4_6(ch5_select_section_coefficients_coeff_4_6_porty), 
  .ch5_coeff_4_5(ch5_select_section_coefficients_coeff_4_5_porty), 
  .ch5_coeff_4_4(ch5_select_section_coefficients_coeff_4_4_porty), 
  .ch5_coeff_4_3(ch5_select_section_coefficients_coeff_4_3_porty), 
  .ch5_coeff_4_2(ch5_select_section_coefficients_coeff_4_2_porty), 
  .ch5_coeff_4_1(ch5_select_section_coefficients_coeff_4_1_porty), 
  .ch5_coeff_4_0(ch5_select_section_coefficients_coeff_4_0_porty), 
  .ch5_coeff_3_10(ch5_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch5_coeff_3_9(ch5_select_section_coefficients_coeff_3_9_porty), 
  .ch5_coeff_3_8(ch5_select_section_coefficients_coeff_3_8_porty), 
  .ch5_coeff_3_7(ch5_select_section_coefficients_coeff_3_7_porty), 
  .ch5_coeff_3_6(ch5_select_section_coefficients_coeff_3_6_porty), 
  .ch5_coeff_3_5(ch5_select_section_coefficients_coeff_3_5_porty), 
  .ch5_coeff_3_4(ch5_select_section_coefficients_coeff_3_4_porty), 
  .ch5_coeff_3_3(ch5_select_section_coefficients_coeff_3_3_porty), 
  .ch5_coeff_3_2(ch5_select_section_coefficients_coeff_3_2_porty), 
  .ch5_coeff_3_1(ch5_select_section_coefficients_coeff_3_1_porty), 
  .ch5_coeff_3_0(ch5_select_section_coefficients_coeff_3_0_porty), 
  .ch5_coeff_2_10(ch5_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch5_coeff_2_9(ch5_select_section_coefficients_coeff_2_9_porty), 
  .ch5_coeff_2_8(ch5_select_section_coefficients_coeff_2_8_porty), 
  .ch5_coeff_2_7(ch5_select_section_coefficients_coeff_2_7_porty), 
  .ch5_coeff_2_6(ch5_select_section_coefficients_coeff_2_6_porty), 
  .ch5_coeff_2_5(ch5_select_section_coefficients_coeff_2_5_porty), 
  .ch5_coeff_2_4(ch5_select_section_coefficients_coeff_2_4_porty), 
  .ch5_coeff_2_3(ch5_select_section_coefficients_coeff_2_3_porty), 
  .ch5_coeff_2_2(ch5_select_section_coefficients_coeff_2_2_porty), 
  .ch5_coeff_2_1(ch5_select_section_coefficients_coeff_2_1_porty), 
  .ch5_coeff_2_0(ch5_select_section_coefficients_coeff_2_0_porty), 
  .ch5_coeff_1_10(ch5_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch5_coeff_1_9(ch5_select_section_coefficients_coeff_1_9_porty), 
  .ch5_coeff_1_8(ch5_select_section_coefficients_coeff_1_8_porty), 
  .ch5_coeff_1_7(ch5_select_section_coefficients_coeff_1_7_porty), 
  .ch5_coeff_1_6(ch5_select_section_coefficients_coeff_1_6_porty), 
  .ch5_coeff_1_5(ch5_select_section_coefficients_coeff_1_5_porty), 
  .ch5_coeff_1_4(ch5_select_section_coefficients_coeff_1_4_porty), 
  .ch5_coeff_1_3(ch5_select_section_coefficients_coeff_1_3_porty), 
  .ch5_coeff_1_2(ch5_select_section_coefficients_coeff_1_2_porty), 
  .ch5_coeff_1_1(ch5_select_section_coefficients_coeff_1_1_porty), 
  .ch5_coeff_1_0(ch5_select_section_coefficients_coeff_1_0_porty), 

  .ch4_x_adc(ch4_x_adc),//NLC output 
  .ch4_x_lin(ch4_x_lin),//ADC output 
  .ch4_section_limit(ch4_section_limit),//X-value that separates the sections 
  .ch4_recip_stdev_4(ch4_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch4_recip_stdev_3(ch4_select_section_coefficients_stdev_3_porty), 
  .ch4_recip_stdev_2(ch4_select_section_coefficients_stdev_2_porty), 
  .ch4_recip_stdev_1(ch4_select_section_coefficients_stdev_1_porty), 
  .ch4_neg_mean_4(ch4_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch4_neg_mean_3(ch4_select_section_coefficients_mean_3_porty), 
  .ch4_neg_mean_2(ch4_select_section_coefficients_mean_2_porty), 
  .ch4_neg_mean_1(ch4_select_section_coefficients_mean_1_porty), 
  .ch4_coeff_4_10(ch4_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch4_coeff_4_9(ch4_select_section_coefficients_coeff_4_9_porty), 
  .ch4_coeff_4_8(ch4_select_section_coefficients_coeff_4_8_porty), 
  .ch4_coeff_4_7(ch4_select_section_coefficients_coeff_4_7_porty), 
  .ch4_coeff_4_6(ch4_select_section_coefficients_coeff_4_6_porty), 
  .ch4_coeff_4_5(ch4_select_section_coefficients_coeff_4_5_porty), 
  .ch4_coeff_4_4(ch4_select_section_coefficients_coeff_4_4_porty), 
  .ch4_coeff_4_3(ch4_select_section_coefficients_coeff_4_3_porty), 
  .ch4_coeff_4_2(ch4_select_section_coefficients_coeff_4_2_porty), 
  .ch4_coeff_4_1(ch4_select_section_coefficients_coeff_4_1_porty), 
  .ch4_coeff_4_0(ch4_select_section_coefficients_coeff_4_0_porty), 
  .ch4_coeff_3_10(ch4_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch4_coeff_3_9(ch4_select_section_coefficients_coeff_3_9_porty), 
  .ch4_coeff_3_8(ch4_select_section_coefficients_coeff_3_8_porty), 
  .ch4_coeff_3_7(ch4_select_section_coefficients_coeff_3_7_porty), 
  .ch4_coeff_3_6(ch4_select_section_coefficients_coeff_3_6_porty), 
  .ch4_coeff_3_5(ch4_select_section_coefficients_coeff_3_5_porty), 
  .ch4_coeff_3_4(ch4_select_section_coefficients_coeff_3_4_porty), 
  .ch4_coeff_3_3(ch4_select_section_coefficients_coeff_3_3_porty), 
  .ch4_coeff_3_2(ch4_select_section_coefficients_coeff_3_2_porty), 
  .ch4_coeff_3_1(ch4_select_section_coefficients_coeff_3_1_porty), 
  .ch4_coeff_3_0(ch4_select_section_coefficients_coeff_3_0_porty), 
  .ch4_coeff_2_10(ch4_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch4_coeff_2_9(ch4_select_section_coefficients_coeff_2_9_porty), 
  .ch4_coeff_2_8(ch4_select_section_coefficients_coeff_2_8_porty), 
  .ch4_coeff_2_7(ch4_select_section_coefficients_coeff_2_7_porty), 
  .ch4_coeff_2_6(ch4_select_section_coefficients_coeff_2_6_porty), 
  .ch4_coeff_2_5(ch4_select_section_coefficients_coeff_2_5_porty), 
  .ch4_coeff_2_4(ch4_select_section_coefficients_coeff_2_4_porty), 
  .ch4_coeff_2_3(ch4_select_section_coefficients_coeff_2_3_porty), 
  .ch4_coeff_2_2(ch4_select_section_coefficients_coeff_2_2_porty), 
  .ch4_coeff_2_1(ch4_select_section_coefficients_coeff_2_1_porty), 
  .ch4_coeff_2_0(ch4_select_section_coefficients_coeff_2_0_porty), 
  .ch4_coeff_1_10(ch4_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch4_coeff_1_9(ch4_select_section_coefficients_coeff_1_9_porty), 
  .ch4_coeff_1_8(ch4_select_section_coefficients_coeff_1_8_porty), 
  .ch4_coeff_1_7(ch4_select_section_coefficients_coeff_1_7_porty), 
  .ch4_coeff_1_6(ch4_select_section_coefficients_coeff_1_6_porty), 
  .ch4_coeff_1_5(ch4_select_section_coefficients_coeff_1_5_porty), 
  .ch4_coeff_1_4(ch4_select_section_coefficients_coeff_1_4_porty), 
  .ch4_coeff_1_3(ch4_select_section_coefficients_coeff_1_3_porty), 
  .ch4_coeff_1_2(ch4_select_section_coefficients_coeff_1_2_porty), 
  .ch4_coeff_1_1(ch4_select_section_coefficients_coeff_1_1_porty), 
  .ch4_coeff_1_0(ch4_select_section_coefficients_coeff_1_0_porty), 

  .ch3_x_adc(ch3_x_adc),//NLC output 
  .ch3_x_lin(ch3_x_lin),//ADC output 
  .ch3_section_limit(ch3_section_limit),//X-value that separates the sections 
  .ch3_recip_stdev_4(ch3_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch3_recip_stdev_3(ch3_select_section_coefficients_stdev_3_porty), 
  .ch3_recip_stdev_2(ch3_select_section_coefficients_stdev_2_porty), 
  .ch3_recip_stdev_1(ch3_select_section_coefficients_stdev_1_porty), 
  .ch3_neg_mean_4(ch3_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch3_neg_mean_3(ch3_select_section_coefficients_mean_3_porty), 
  .ch3_neg_mean_2(ch3_select_section_coefficients_mean_2_porty), 
  .ch3_neg_mean_1(ch3_select_section_coefficients_mean_1_porty), 
  .ch3_coeff_4_10(ch3_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch3_coeff_4_9(ch3_select_section_coefficients_coeff_4_9_porty), 
  .ch3_coeff_4_8(ch3_select_section_coefficients_coeff_4_8_porty), 
  .ch3_coeff_4_7(ch3_select_section_coefficients_coeff_4_7_porty), 
  .ch3_coeff_4_6(ch3_select_section_coefficients_coeff_4_6_porty), 
  .ch3_coeff_4_5(ch3_select_section_coefficients_coeff_4_5_porty), 
  .ch3_coeff_4_4(ch3_select_section_coefficients_coeff_4_4_porty), 
  .ch3_coeff_4_3(ch3_select_section_coefficients_coeff_4_3_porty), 
  .ch3_coeff_4_2(ch3_select_section_coefficients_coeff_4_2_porty), 
  .ch3_coeff_4_1(ch3_select_section_coefficients_coeff_4_1_porty), 
  .ch3_coeff_4_0(ch3_select_section_coefficients_coeff_4_0_porty), 
  .ch3_coeff_3_10(ch3_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch3_coeff_3_9(ch3_select_section_coefficients_coeff_3_9_porty), 
  .ch3_coeff_3_8(ch3_select_section_coefficients_coeff_3_8_porty), 
  .ch3_coeff_3_7(ch3_select_section_coefficients_coeff_3_7_porty), 
  .ch3_coeff_3_6(ch3_select_section_coefficients_coeff_3_6_porty), 
  .ch3_coeff_3_5(ch3_select_section_coefficients_coeff_3_5_porty), 
  .ch3_coeff_3_4(ch3_select_section_coefficients_coeff_3_4_porty), 
  .ch3_coeff_3_3(ch3_select_section_coefficients_coeff_3_3_porty), 
  .ch3_coeff_3_2(ch3_select_section_coefficients_coeff_3_2_porty), 
  .ch3_coeff_3_1(ch3_select_section_coefficients_coeff_3_1_porty), 
  .ch3_coeff_3_0(ch3_select_section_coefficients_coeff_3_0_porty), 
  .ch3_coeff_2_10(ch3_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch3_coeff_2_9(ch3_select_section_coefficients_coeff_2_9_porty), 
  .ch3_coeff_2_8(ch3_select_section_coefficients_coeff_2_8_porty), 
  .ch3_coeff_2_7(ch3_select_section_coefficients_coeff_2_7_porty), 
  .ch3_coeff_2_6(ch3_select_section_coefficients_coeff_2_6_porty), 
  .ch3_coeff_2_5(ch3_select_section_coefficients_coeff_2_5_porty), 
  .ch3_coeff_2_4(ch3_select_section_coefficients_coeff_2_4_porty), 
  .ch3_coeff_2_3(ch3_select_section_coefficients_coeff_2_3_porty), 
  .ch3_coeff_2_2(ch3_select_section_coefficients_coeff_2_2_porty), 
  .ch3_coeff_2_1(ch3_select_section_coefficients_coeff_2_1_porty), 
  .ch3_coeff_2_0(ch3_select_section_coefficients_coeff_2_0_porty), 
  .ch3_coeff_1_10(ch3_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch3_coeff_1_9(ch3_select_section_coefficients_coeff_1_9_porty), 
  .ch3_coeff_1_8(ch3_select_section_coefficients_coeff_1_8_porty), 
  .ch3_coeff_1_7(ch3_select_section_coefficients_coeff_1_7_porty), 
  .ch3_coeff_1_6(ch3_select_section_coefficients_coeff_1_6_porty), 
  .ch3_coeff_1_5(ch3_select_section_coefficients_coeff_1_5_porty), 
  .ch3_coeff_1_4(ch3_select_section_coefficients_coeff_1_4_porty), 
  .ch3_coeff_1_3(ch3_select_section_coefficients_coeff_1_3_porty), 
  .ch3_coeff_1_2(ch3_select_section_coefficients_coeff_1_2_porty), 
  .ch3_coeff_1_1(ch3_select_section_coefficients_coeff_1_1_porty), 
  .ch3_coeff_1_0(ch3_select_section_coefficients_coeff_1_0_porty), 

  .ch2_x_adc(ch2_x_adc),//NLC output 
  .ch2_x_lin(ch2_x_lin),//ADC output 
  .ch2_section_limit(ch2_section_limit),//X-value that separates the sections 
  .ch2_recip_stdev_4(ch2_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch2_recip_stdev_3(ch2_select_section_coefficients_stdev_3_porty), 
  .ch2_recip_stdev_2(ch2_select_section_coefficients_stdev_2_porty), 
  .ch2_recip_stdev_1(ch2_select_section_coefficients_stdev_1_porty), 
  .ch2_neg_mean_4(ch2_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch2_neg_mean_3(ch2_select_section_coefficients_mean_3_porty), 
  .ch2_neg_mean_2(ch2_select_section_coefficients_mean_2_porty), 
  .ch2_neg_mean_1(ch2_select_section_coefficients_mean_1_porty), 
  .ch2_coeff_4_10(ch2_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch2_coeff_4_9(ch2_select_section_coefficients_coeff_4_9_porty), 
  .ch2_coeff_4_8(ch2_select_section_coefficients_coeff_4_8_porty), 
  .ch2_coeff_4_7(ch2_select_section_coefficients_coeff_4_7_porty), 
  .ch2_coeff_4_6(ch2_select_section_coefficients_coeff_4_6_porty), 
  .ch2_coeff_4_5(ch2_select_section_coefficients_coeff_4_5_porty), 
  .ch2_coeff_4_4(ch2_select_section_coefficients_coeff_4_4_porty), 
  .ch2_coeff_4_3(ch2_select_section_coefficients_coeff_4_3_porty), 
  .ch2_coeff_4_2(ch2_select_section_coefficients_coeff_4_2_porty), 
  .ch2_coeff_4_1(ch2_select_section_coefficients_coeff_4_1_porty), 
  .ch2_coeff_4_0(ch2_select_section_coefficients_coeff_4_0_porty), 
  .ch2_coeff_3_10(ch2_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch2_coeff_3_9(ch2_select_section_coefficients_coeff_3_9_porty), 
  .ch2_coeff_3_8(ch2_select_section_coefficients_coeff_3_8_porty), 
  .ch2_coeff_3_7(ch2_select_section_coefficients_coeff_3_7_porty), 
  .ch2_coeff_3_6(ch2_select_section_coefficients_coeff_3_6_porty), 
  .ch2_coeff_3_5(ch2_select_section_coefficients_coeff_3_5_porty), 
  .ch2_coeff_3_4(ch2_select_section_coefficients_coeff_3_4_porty), 
  .ch2_coeff_3_3(ch2_select_section_coefficients_coeff_3_3_porty), 
  .ch2_coeff_3_2(ch2_select_section_coefficients_coeff_3_2_porty), 
  .ch2_coeff_3_1(ch2_select_section_coefficients_coeff_3_1_porty), 
  .ch2_coeff_3_0(ch2_select_section_coefficients_coeff_3_0_porty), 
  .ch2_coeff_2_10(ch2_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch2_coeff_2_9(ch2_select_section_coefficients_coeff_2_9_porty), 
  .ch2_coeff_2_8(ch2_select_section_coefficients_coeff_2_8_porty), 
  .ch2_coeff_2_7(ch2_select_section_coefficients_coeff_2_7_porty), 
  .ch2_coeff_2_6(ch2_select_section_coefficients_coeff_2_6_porty), 
  .ch2_coeff_2_5(ch2_select_section_coefficients_coeff_2_5_porty), 
  .ch2_coeff_2_4(ch2_select_section_coefficients_coeff_2_4_porty), 
  .ch2_coeff_2_3(ch2_select_section_coefficients_coeff_2_3_porty), 
  .ch2_coeff_2_2(ch2_select_section_coefficients_coeff_2_2_porty), 
  .ch2_coeff_2_1(ch2_select_section_coefficients_coeff_2_1_porty), 
  .ch2_coeff_2_0(ch2_select_section_coefficients_coeff_2_0_porty), 
  .ch2_coeff_1_10(ch2_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch2_coeff_1_9(ch2_select_section_coefficients_coeff_1_9_porty), 
  .ch2_coeff_1_8(ch2_select_section_coefficients_coeff_1_8_porty), 
  .ch2_coeff_1_7(ch2_select_section_coefficients_coeff_1_7_porty), 
  .ch2_coeff_1_6(ch2_select_section_coefficients_coeff_1_6_porty), 
  .ch2_coeff_1_5(ch2_select_section_coefficients_coeff_1_5_porty), 
  .ch2_coeff_1_4(ch2_select_section_coefficients_coeff_1_4_porty), 
  .ch2_coeff_1_3(ch2_select_section_coefficients_coeff_1_3_porty), 
  .ch2_coeff_1_2(ch2_select_section_coefficients_coeff_1_2_porty), 
  .ch2_coeff_1_1(ch2_select_section_coefficients_coeff_1_1_porty), 
  .ch2_coeff_1_0(ch2_select_section_coefficients_coeff_1_0_porty), 

  .ch1_x_adc(ch1_x_adc),//NLC output 
  .ch1_x_lin(ch1_x_lin),//ADC output 
  .ch1_section_limit(ch1_section_limit),//X-value that separates the sections 
  .ch1_recip_stdev_4(ch1_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch1_recip_stdev_3(ch1_select_section_coefficients_stdev_3_porty), 
  .ch1_recip_stdev_2(ch1_select_section_coefficients_stdev_2_porty), 
  .ch1_recip_stdev_1(ch1_select_section_coefficients_stdev_1_porty), 
  .ch1_neg_mean_4(ch1_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch1_neg_mean_3(ch1_select_section_coefficients_mean_3_porty), 
  .ch1_neg_mean_2(ch1_select_section_coefficients_mean_2_porty), 
  .ch1_neg_mean_1(ch1_select_section_coefficients_mean_1_porty), 
  .ch1_coeff_4_10(ch1_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch1_coeff_4_9(ch1_select_section_coefficients_coeff_4_9_porty), 
  .ch1_coeff_4_8(ch1_select_section_coefficients_coeff_4_8_porty), 
  .ch1_coeff_4_7(ch1_select_section_coefficients_coeff_4_7_porty), 
  .ch1_coeff_4_6(ch1_select_section_coefficients_coeff_4_6_porty), 
  .ch1_coeff_4_5(ch1_select_section_coefficients_coeff_4_5_porty), 
  .ch1_coeff_4_4(ch1_select_section_coefficients_coeff_4_4_porty), 
  .ch1_coeff_4_3(ch1_select_section_coefficients_coeff_4_3_porty), 
  .ch1_coeff_4_2(ch1_select_section_coefficients_coeff_4_2_porty), 
  .ch1_coeff_4_1(ch1_select_section_coefficients_coeff_4_1_porty), 
  .ch1_coeff_4_0(ch1_select_section_coefficients_coeff_4_0_porty), 
  .ch1_coeff_3_10(ch1_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch1_coeff_3_9(ch1_select_section_coefficients_coeff_3_9_porty), 
  .ch1_coeff_3_8(ch1_select_section_coefficients_coeff_3_8_porty), 
  .ch1_coeff_3_7(ch1_select_section_coefficients_coeff_3_7_porty), 
  .ch1_coeff_3_6(ch1_select_section_coefficients_coeff_3_6_porty), 
  .ch1_coeff_3_5(ch1_select_section_coefficients_coeff_3_5_porty), 
  .ch1_coeff_3_4(ch1_select_section_coefficients_coeff_3_4_porty), 
  .ch1_coeff_3_3(ch1_select_section_coefficients_coeff_3_3_porty), 
  .ch1_coeff_3_2(ch1_select_section_coefficients_coeff_3_2_porty), 
  .ch1_coeff_3_1(ch1_select_section_coefficients_coeff_3_1_porty), 
  .ch1_coeff_3_0(ch1_select_section_coefficients_coeff_3_0_porty), 
  .ch1_coeff_2_10(ch1_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch1_coeff_2_9(ch1_select_section_coefficients_coeff_2_9_porty), 
  .ch1_coeff_2_8(ch1_select_section_coefficients_coeff_2_8_porty), 
  .ch1_coeff_2_7(ch1_select_section_coefficients_coeff_2_7_porty), 
  .ch1_coeff_2_6(ch1_select_section_coefficients_coeff_2_6_porty), 
  .ch1_coeff_2_5(ch1_select_section_coefficients_coeff_2_5_porty), 
  .ch1_coeff_2_4(ch1_select_section_coefficients_coeff_2_4_porty), 
  .ch1_coeff_2_3(ch1_select_section_coefficients_coeff_2_3_porty), 
  .ch1_coeff_2_2(ch1_select_section_coefficients_coeff_2_2_porty), 
  .ch1_coeff_2_1(ch1_select_section_coefficients_coeff_2_1_porty), 
  .ch1_coeff_2_0(ch1_select_section_coefficients_coeff_2_0_porty), 
  .ch1_coeff_1_10(ch1_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch1_coeff_1_9(ch1_select_section_coefficients_coeff_1_9_porty), 
  .ch1_coeff_1_8(ch1_select_section_coefficients_coeff_1_8_porty), 
  .ch1_coeff_1_7(ch1_select_section_coefficients_coeff_1_7_porty), 
  .ch1_coeff_1_6(ch1_select_section_coefficients_coeff_1_6_porty), 
  .ch1_coeff_1_5(ch1_select_section_coefficients_coeff_1_5_porty), 
  .ch1_coeff_1_4(ch1_select_section_coefficients_coeff_1_4_porty), 
  .ch1_coeff_1_3(ch1_select_section_coefficients_coeff_1_3_porty), 
  .ch1_coeff_1_2(ch1_select_section_coefficients_coeff_1_2_porty), 
  .ch1_coeff_1_1(ch1_select_section_coefficients_coeff_1_1_porty), 
  .ch1_coeff_1_0(ch1_select_section_coefficients_coeff_1_0_porty), 

  .ch0_x_adc(ch0_x_adc),//NLC output 
  .ch0_x_lin(ch0_x_lin),//ADC output 
  .ch0_section_limit(ch0_section_limit),//X-value that separates the sections 
  .ch0_recip_stdev_4(ch0_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch0_recip_stdev_3(ch0_select_section_coefficients_stdev_3_porty), 
  .ch0_recip_stdev_2(ch0_select_section_coefficients_stdev_2_porty), 
  .ch0_recip_stdev_1(ch0_select_section_coefficients_stdev_1_porty), 
  .ch0_neg_mean_4(ch0_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch0_neg_mean_3(ch0_select_section_coefficients_mean_3_porty), 
  .ch0_neg_mean_2(ch0_select_section_coefficients_mean_2_porty), 
  .ch0_neg_mean_1(ch0_select_section_coefficients_mean_1_porty), 
  .ch0_coeff_4_10(ch0_select_section_coefficients_coeff_4_10_porty), //Section 4 coefficients (x > 0, |x| > section_limit) 
  .ch0_coeff_4_9(ch0_select_section_coefficients_coeff_4_9_porty), 
  .ch0_coeff_4_8(ch0_select_section_coefficients_coeff_4_8_porty), 
  .ch0_coeff_4_7(ch0_select_section_coefficients_coeff_4_7_porty), 
  .ch0_coeff_4_6(ch0_select_section_coefficients_coeff_4_6_porty), 
  .ch0_coeff_4_5(ch0_select_section_coefficients_coeff_4_5_porty), 
  .ch0_coeff_4_4(ch0_select_section_coefficients_coeff_4_4_porty), 
  .ch0_coeff_4_3(ch0_select_section_coefficients_coeff_4_3_porty), 
  .ch0_coeff_4_2(ch0_select_section_coefficients_coeff_4_2_porty), 
  .ch0_coeff_4_1(ch0_select_section_coefficients_coeff_4_1_porty), 
  .ch0_coeff_4_0(ch0_select_section_coefficients_coeff_4_0_porty), 
  .ch0_coeff_3_10(ch0_select_section_coefficients_coeff_3_10_porty),//Section 3 coefficients (x > 0, |x| <= section_limit)  
  .ch0_coeff_3_9(ch0_select_section_coefficients_coeff_3_9_porty), 
  .ch0_coeff_3_8(ch0_select_section_coefficients_coeff_3_8_porty), 
  .ch0_coeff_3_7(ch0_select_section_coefficients_coeff_3_7_porty), 
  .ch0_coeff_3_6(ch0_select_section_coefficients_coeff_3_6_porty), 
  .ch0_coeff_3_5(ch0_select_section_coefficients_coeff_3_5_porty), 
  .ch0_coeff_3_4(ch0_select_section_coefficients_coeff_3_4_porty), 
  .ch0_coeff_3_3(ch0_select_section_coefficients_coeff_3_3_porty), 
  .ch0_coeff_3_2(ch0_select_section_coefficients_coeff_3_2_porty), 
  .ch0_coeff_3_1(ch0_select_section_coefficients_coeff_3_1_porty), 
  .ch0_coeff_3_0(ch0_select_section_coefficients_coeff_3_0_porty), 
  .ch0_coeff_2_10(ch0_select_section_coefficients_coeff_2_10_porty),//Section 2 coefficients (x <= 0, |x| <= section_limit)  
  .ch0_coeff_2_9(ch0_select_section_coefficients_coeff_2_9_porty), 
  .ch0_coeff_2_8(ch0_select_section_coefficients_coeff_2_8_porty), 
  .ch0_coeff_2_7(ch0_select_section_coefficients_coeff_2_7_porty), 
  .ch0_coeff_2_6(ch0_select_section_coefficients_coeff_2_6_porty), 
  .ch0_coeff_2_5(ch0_select_section_coefficients_coeff_2_5_porty), 
  .ch0_coeff_2_4(ch0_select_section_coefficients_coeff_2_4_porty), 
  .ch0_coeff_2_3(ch0_select_section_coefficients_coeff_2_3_porty), 
  .ch0_coeff_2_2(ch0_select_section_coefficients_coeff_2_2_porty), 
  .ch0_coeff_2_1(ch0_select_section_coefficients_coeff_2_1_porty), 
  .ch0_coeff_2_0(ch0_select_section_coefficients_coeff_2_0_porty), 
  .ch0_coeff_1_10(ch0_select_section_coefficients_coeff_1_10_porty),//Section 1 coefficients (x <= 0, |x| > section_limit)  
  .ch0_coeff_1_9(ch0_select_section_coefficients_coeff_1_9_porty), 
  .ch0_coeff_1_8(ch0_select_section_coefficients_coeff_1_8_porty), 
  .ch0_coeff_1_7(ch0_select_section_coefficients_coeff_1_7_porty), 
  .ch0_coeff_1_6(ch0_select_section_coefficients_coeff_1_6_porty), 
  .ch0_coeff_1_5(ch0_select_section_coefficients_coeff_1_5_porty), 
  .ch0_coeff_1_4(ch0_select_section_coefficients_coeff_1_4_porty), 
  .ch0_coeff_1_3(ch0_select_section_coefficients_coeff_1_3_porty), 
  .ch0_coeff_1_2(ch0_select_section_coefficients_coeff_1_2_porty), 
  .ch0_coeff_1_1(ch0_select_section_coefficients_coeff_1_1_porty), 
  .ch0_coeff_1_0(ch0_select_section_coefficients_coeff_1_0_porty) 

);


endmodule

