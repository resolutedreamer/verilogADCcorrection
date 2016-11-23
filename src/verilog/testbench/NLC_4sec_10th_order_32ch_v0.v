
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

NLC_1ch ch31_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch31_x_lin),

  //NLC output
  .srdyo(srdyo), 
  .x_adc(ch31_x_adc), 

  //X-value that separates the sections
  .section_limit(ch31_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch31_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch31_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch31_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch31_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch31_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch31_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch31_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch31_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch31_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch31_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch31_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch31_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch31_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch31_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch31_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch31_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch31_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch31_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch31_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch31_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch31_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch31_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch31_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch31_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch31_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch31_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch31_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch31_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch31_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch31_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch31_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch31_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch31_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch31_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch31_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch31_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch31_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch31_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch31_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch31_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch31_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch31_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch31_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch31_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch31_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch31_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch31_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch31_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch31_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch31_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch31_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch31_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch30_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch30_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch30_x_adc), 

  //X-value that separates the sections
  .section_limit(ch30_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch30_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch30_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch30_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch30_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch30_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch30_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch30_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch30_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch30_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch30_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch30_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch30_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch30_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch30_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch30_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch30_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch30_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch30_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch30_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch30_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch30_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch30_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch30_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch30_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch30_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch30_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch30_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch30_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch30_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch30_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch30_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch30_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch30_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch30_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch30_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch30_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch30_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch30_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch30_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch30_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch30_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch30_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch30_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch30_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch30_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch30_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch30_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch30_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch30_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch30_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch30_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch30_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch29_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch29_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch29_x_adc), 

  //X-value that separates the sections
  .section_limit(ch29_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch29_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch29_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch29_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch29_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch29_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch29_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch29_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch29_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch29_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch29_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch29_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch29_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch29_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch29_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch29_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch29_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch29_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch29_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch29_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch29_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch29_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch29_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch29_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch29_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch29_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch29_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch29_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch29_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch29_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch29_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch29_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch29_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch29_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch29_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch29_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch29_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch29_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch29_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch29_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch29_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch29_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch29_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch29_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch29_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch29_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch29_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch29_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch29_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch29_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch29_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch29_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch29_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch28_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch28_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch28_x_adc), 

  //X-value that separates the sections
  .section_limit(ch28_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch28_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch28_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch28_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch28_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch28_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch28_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch28_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch28_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch28_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch28_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch28_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch28_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch28_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch28_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch28_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch28_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch28_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch28_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch28_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch28_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch28_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch28_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch28_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch28_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch28_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch28_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch28_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch28_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch28_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch28_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch28_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch28_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch28_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch28_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch28_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch28_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch28_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch28_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch28_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch28_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch28_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch28_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch28_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch28_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch28_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch28_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch28_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch28_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch28_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch28_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch28_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch28_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch27_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch27_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch27_x_adc), 

  //X-value that separates the sections
  .section_limit(ch27_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch27_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch27_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch27_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch27_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch27_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch27_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch27_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch27_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch27_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch27_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch27_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch27_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch27_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch27_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch27_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch27_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch27_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch27_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch27_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch27_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch27_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch27_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch27_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch27_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch27_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch27_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch27_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch27_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch27_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch27_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch27_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch27_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch27_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch27_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch27_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch27_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch27_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch27_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch27_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch27_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch27_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch27_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch27_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch27_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch27_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch27_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch27_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch27_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch27_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch27_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch27_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch27_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch26_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch26_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch26_x_adc), 

  //X-value that separates the sections
  .section_limit(ch26_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch26_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch26_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch26_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch26_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch26_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch26_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch26_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch26_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch26_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch26_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch26_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch26_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch26_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch26_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch26_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch26_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch26_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch26_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch26_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch26_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch26_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch26_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch26_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch26_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch26_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch26_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch26_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch26_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch26_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch26_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch26_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch26_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch26_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch26_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch26_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch26_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch26_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch26_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch26_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch26_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch26_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch26_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch26_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch26_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch26_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch26_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch26_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch26_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch26_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch26_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch26_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch26_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch25_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch25_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch25_x_adc), 

  //X-value that separates the sections
  .section_limit(ch25_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch25_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch25_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch25_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch25_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch25_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch25_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch25_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch25_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch25_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch25_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch25_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch25_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch25_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch25_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch25_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch25_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch25_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch25_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch25_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch25_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch25_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch25_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch25_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch25_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch25_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch25_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch25_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch25_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch25_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch25_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch25_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch25_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch25_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch25_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch25_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch25_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch25_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch25_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch25_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch25_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch25_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch25_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch25_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch25_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch25_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch25_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch25_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch25_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch25_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch25_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch25_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch25_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch24_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch24_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch24_x_adc), 

  //X-value that separates the sections
  .section_limit(ch24_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch24_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch24_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch24_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch24_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch24_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch24_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch24_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch24_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch24_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch24_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch24_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch24_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch24_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch24_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch24_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch24_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch24_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch24_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch24_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch24_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch24_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch24_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch24_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch24_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch24_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch24_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch24_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch24_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch24_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch24_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch24_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch24_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch24_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch24_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch24_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch24_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch24_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch24_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch24_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch24_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch24_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch24_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch24_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch24_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch24_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch24_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch24_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch24_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch24_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch24_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch24_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch24_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch23_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch23_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch23_x_adc), 

  //X-value that separates the sections
  .section_limit(ch23_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch23_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch23_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch23_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch23_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch23_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch23_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch23_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch23_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch23_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch23_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch23_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch23_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch23_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch23_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch23_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch23_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch23_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch23_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch23_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch23_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch23_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch23_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch23_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch23_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch23_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch23_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch23_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch23_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch23_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch23_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch23_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch23_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch23_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch23_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch23_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch23_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch23_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch23_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch23_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch23_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch23_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch23_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch23_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch23_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch23_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch23_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch23_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch23_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch23_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch23_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch23_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch23_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch22_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch22_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch22_x_adc), 

  //X-value that separates the sections
  .section_limit(ch22_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch22_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch22_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch22_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch22_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch22_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch22_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch22_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch22_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch22_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch22_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch22_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch22_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch22_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch22_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch22_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch22_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch22_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch22_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch22_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch22_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch22_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch22_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch22_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch22_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch22_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch22_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch22_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch22_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch22_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch22_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch22_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch22_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch22_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch22_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch22_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch22_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch22_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch22_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch22_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch22_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch22_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch22_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch22_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch22_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch22_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch22_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch22_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch22_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch22_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch22_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch22_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch22_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch21_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch21_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch21_x_adc), 

  //X-value that separates the sections
  .section_limit(ch21_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch21_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch21_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch21_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch21_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch21_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch21_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch21_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch21_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch21_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch21_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch21_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch21_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch21_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch21_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch21_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch21_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch21_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch21_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch21_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch21_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch21_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch21_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch21_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch21_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch21_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch21_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch21_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch21_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch21_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch21_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch21_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch21_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch21_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch21_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch21_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch21_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch21_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch21_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch21_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch21_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch21_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch21_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch21_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch21_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch21_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch21_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch21_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch21_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch21_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch21_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch21_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch21_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch20_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch20_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch20_x_adc), 

  //X-value that separates the sections
  .section_limit(ch20_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch20_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch20_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch20_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch20_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch20_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch20_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch20_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch20_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch20_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch20_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch20_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch20_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch20_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch20_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch20_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch20_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch20_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch20_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch20_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch20_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch20_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch20_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch20_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch20_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch20_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch20_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch20_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch20_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch20_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch20_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch20_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch20_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch20_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch20_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch20_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch20_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch20_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch20_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch20_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch20_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch20_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch20_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch20_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch20_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch20_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch20_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch20_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch20_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch20_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch20_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch20_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch20_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch19_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch19_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch19_x_adc), 

  //X-value that separates the sections
  .section_limit(ch19_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch19_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch19_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch19_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch19_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch19_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch19_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch19_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch19_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch19_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch19_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch19_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch19_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch19_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch19_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch19_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch19_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch19_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch19_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch19_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch19_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch19_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch19_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch19_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch19_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch19_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch19_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch19_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch19_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch19_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch19_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch19_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch19_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch19_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch19_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch19_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch19_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch19_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch19_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch19_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch19_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch19_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch19_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch19_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch19_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch19_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch19_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch19_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch19_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch19_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch19_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch19_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch19_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch18_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch18_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch18_x_adc), 

  //X-value that separates the sections
  .section_limit(ch18_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch18_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch18_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch18_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch18_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch18_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch18_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch18_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch18_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch18_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch18_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch18_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch18_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch18_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch18_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch18_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch18_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch18_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch18_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch18_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch18_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch18_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch18_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch18_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch18_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch18_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch18_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch18_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch18_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch18_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch18_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch18_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch18_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch18_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch18_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch18_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch18_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch18_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch18_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch18_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch18_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch18_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch18_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch18_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch18_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch18_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch18_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch18_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch18_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch18_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch18_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch18_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch18_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch17_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch17_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch17_x_adc), 

  //X-value that separates the sections
  .section_limit(ch17_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch17_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch17_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch17_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch17_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch17_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch17_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch17_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch17_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch17_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch17_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch17_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch17_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch17_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch17_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch17_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch17_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch17_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch17_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch17_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch17_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch17_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch17_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch17_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch17_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch17_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch17_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch17_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch17_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch17_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch17_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch17_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch17_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch17_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch17_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch17_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch17_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch17_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch17_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch17_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch17_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch17_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch17_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch17_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch17_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch17_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch17_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch17_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch17_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch17_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch17_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch17_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch17_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch16_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch16_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch16_x_adc), 

  //X-value that separates the sections
  .section_limit(ch16_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch16_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch16_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch16_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch16_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch16_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch16_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch16_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch16_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch16_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch16_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch16_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch16_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch16_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch16_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch16_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch16_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch16_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch16_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch16_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch16_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch16_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch16_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch16_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch16_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch16_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch16_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch16_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch16_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch16_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch16_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch16_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch16_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch16_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch16_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch16_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch16_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch16_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch16_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch16_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch16_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch16_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch16_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch16_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch16_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch16_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch16_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch16_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch16_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch16_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch16_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch16_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch16_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch15_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch15_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch15_x_adc), 

  //X-value that separates the sections
  .section_limit(ch15_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch15_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch15_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch15_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch15_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch15_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch15_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch15_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch15_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch15_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch15_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch15_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch15_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch15_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch15_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch15_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch15_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch15_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch15_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch15_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch15_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch15_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch15_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch15_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch15_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch15_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch15_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch15_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch15_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch15_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch15_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch15_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch15_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch15_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch15_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch15_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch15_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch15_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch15_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch15_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch15_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch15_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch15_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch15_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch15_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch15_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch15_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch15_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch15_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch15_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch15_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch15_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch15_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch14_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch14_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch14_x_adc), 

  //X-value that separates the sections
  .section_limit(ch14_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch14_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch14_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch14_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch14_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch14_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch14_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch14_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch14_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch14_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch14_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch14_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch14_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch14_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch14_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch14_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch14_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch14_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch14_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch14_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch14_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch14_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch14_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch14_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch14_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch14_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch14_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch14_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch14_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch14_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch14_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch14_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch14_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch14_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch14_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch14_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch14_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch14_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch14_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch14_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch14_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch14_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch14_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch14_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch14_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch14_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch14_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch14_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch14_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch14_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch14_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch14_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch14_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch13_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch13_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch13_x_adc), 

  //X-value that separates the sections
  .section_limit(ch13_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch13_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch13_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch13_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch13_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch13_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch13_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch13_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch13_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch13_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch13_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch13_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch13_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch13_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch13_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch13_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch13_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch13_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch13_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch13_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch13_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch13_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch13_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch13_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch13_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch13_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch13_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch13_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch13_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch13_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch13_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch13_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch13_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch13_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch13_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch13_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch13_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch13_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch13_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch13_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch13_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch13_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch13_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch13_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch13_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch13_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch13_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch13_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch13_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch13_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch13_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch13_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch13_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch12_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch12_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch12_x_adc), 

  //X-value that separates the sections
  .section_limit(ch12_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch12_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch12_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch12_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch12_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch12_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch12_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch12_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch12_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch12_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch12_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch12_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch12_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch12_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch12_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch12_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch12_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch12_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch12_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch12_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch12_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch12_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch12_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch12_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch12_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch12_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch12_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch12_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch12_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch12_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch12_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch12_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch12_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch12_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch12_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch12_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch12_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch12_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch12_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch12_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch12_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch12_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch12_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch12_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch12_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch12_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch12_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch12_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch12_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch12_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch12_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch12_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch12_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch11_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch11_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch11_x_adc), 

  //X-value that separates the sections
  .section_limit(ch11_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch11_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch11_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch11_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch11_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch11_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch11_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch11_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch11_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch11_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch11_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch11_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch11_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch11_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch11_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch11_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch11_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch11_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch11_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch11_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch11_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch11_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch11_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch11_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch11_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch11_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch11_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch11_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch11_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch11_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch11_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch11_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch11_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch11_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch11_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch11_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch11_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch11_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch11_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch11_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch11_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch11_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch11_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch11_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch11_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch11_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch11_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch11_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch11_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch11_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch11_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch11_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch11_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch10_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch10_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch10_x_adc), 

  //X-value that separates the sections
  .section_limit(ch10_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch10_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch10_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch10_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch10_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch10_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch10_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch10_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch10_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch10_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch10_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch10_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch10_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch10_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch10_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch10_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch10_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch10_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch10_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch10_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch10_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch10_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch10_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch10_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch10_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch10_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch10_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch10_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch10_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch10_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch10_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch10_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch10_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch10_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch10_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch10_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch10_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch10_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch10_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch10_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch10_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch10_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch10_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch10_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch10_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch10_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch10_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch10_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch10_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch10_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch10_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch10_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch10_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch9_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch9_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch9_x_adc), 

  //X-value that separates the sections
  .section_limit(ch9_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch9_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch9_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch9_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch9_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch9_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch9_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch9_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch9_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch9_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch9_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch9_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch9_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch9_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch9_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch9_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch9_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch9_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch9_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch9_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch9_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch9_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch9_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch9_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch9_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch9_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch9_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch9_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch9_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch9_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch9_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch9_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch9_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch9_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch9_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch9_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch9_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch9_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch9_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch9_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch9_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch9_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch9_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch9_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch9_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch9_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch9_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch9_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch9_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch9_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch9_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch9_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch9_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch8_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch8_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch8_x_adc), 

  //X-value that separates the sections
  .section_limit(ch8_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch8_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch8_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch8_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch8_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch8_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch8_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch8_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch8_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch8_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch8_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch8_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch8_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch8_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch8_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch8_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch8_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch8_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch8_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch8_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch8_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch8_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch8_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch8_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch8_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch8_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch8_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch8_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch8_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch8_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch8_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch8_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch8_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch8_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch8_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch8_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch8_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch8_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch8_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch8_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch8_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch8_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch8_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch8_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch8_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch8_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch8_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch8_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch8_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch8_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch8_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch8_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch8_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch7_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch7_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch7_x_adc), 

  //X-value that separates the sections
  .section_limit(ch7_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch7_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch7_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch7_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch7_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch7_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch7_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch7_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch7_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch7_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch7_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch7_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch7_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch7_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch7_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch7_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch7_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch7_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch7_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch7_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch7_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch7_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch7_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch7_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch7_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch7_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch7_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch7_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch7_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch7_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch7_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch7_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch7_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch7_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch7_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch7_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch7_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch7_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch7_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch7_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch7_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch7_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch7_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch7_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch7_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch7_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch7_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch7_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch7_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch7_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch7_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch7_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch7_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch6_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch6_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch6_x_adc), 

  //X-value that separates the sections
  .section_limit(ch6_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch6_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch6_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch6_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch6_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch6_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch6_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch6_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch6_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch6_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch6_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch6_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch6_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch6_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch6_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch6_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch6_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch6_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch6_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch6_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch6_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch6_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch6_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch6_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch6_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch6_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch6_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch6_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch6_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch6_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch6_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch6_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch6_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch6_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch6_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch6_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch6_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch6_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch6_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch6_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch6_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch6_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch6_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch6_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch6_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch6_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch6_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch6_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch6_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch6_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch6_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch6_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch6_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch5_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch5_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch5_x_adc), 

  //X-value that separates the sections
  .section_limit(ch5_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch5_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch5_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch5_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch5_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch5_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch5_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch5_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch5_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch5_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch5_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch5_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch5_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch5_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch5_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch5_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch5_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch5_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch5_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch5_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch5_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch5_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch5_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch5_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch5_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch5_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch5_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch5_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch5_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch5_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch5_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch5_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch5_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch5_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch5_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch5_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch5_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch5_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch5_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch5_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch5_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch5_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch5_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch5_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch5_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch5_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch5_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch5_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch5_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch5_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch5_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch5_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch5_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch4_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch4_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch4_x_adc), 

  //X-value that separates the sections
  .section_limit(ch4_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch4_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch4_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch4_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch4_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch4_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch4_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch4_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch4_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch4_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch4_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch4_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch4_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch4_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch4_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch4_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch4_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch4_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch4_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch4_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch4_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch4_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch4_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch4_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch4_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch4_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch4_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch4_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch4_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch4_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch4_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch4_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch4_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch4_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch4_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch4_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch4_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch4_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch4_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch4_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch4_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch4_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch4_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch4_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch4_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch4_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch4_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch4_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch4_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch4_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch4_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch4_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch4_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch3_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch3_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch3_x_adc), 

  //X-value that separates the sections
  .section_limit(ch3_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch3_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch3_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch3_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch3_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch3_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch3_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch3_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch3_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch3_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch3_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch3_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch3_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch3_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch3_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch3_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch3_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch3_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch3_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch3_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch3_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch3_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch3_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch3_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch3_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch3_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch3_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch3_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch3_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch3_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch3_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch3_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch3_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch3_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch3_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch3_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch3_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch3_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch3_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch3_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch3_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch3_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch3_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch3_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch3_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch3_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch3_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch3_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch3_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch3_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch3_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch3_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch3_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch2_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch2_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch2_x_adc), 

  //X-value that separates the sections
  .section_limit(ch2_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch2_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch2_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch2_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch2_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch2_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch2_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch2_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch2_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch2_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch2_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch2_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch2_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch2_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch2_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch2_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch2_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch2_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch2_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch2_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch2_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch2_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch2_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch2_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch2_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch2_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch2_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch2_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch2_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch2_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch2_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch2_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch2_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch2_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch2_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch2_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch2_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch2_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch2_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch2_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch2_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch2_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch2_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch2_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch2_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch2_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch2_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch2_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch2_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch2_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch2_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch2_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch2_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch1_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch1_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch1_x_adc), 

  //X-value that separates the sections
  .section_limit(ch1_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch1_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch1_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch1_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch1_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch1_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch1_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch1_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch1_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch1_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch1_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch1_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch1_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch1_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch1_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch1_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch1_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch1_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch1_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch1_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch1_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch1_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch1_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch1_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch1_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch1_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch1_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch1_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch1_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch1_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch1_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch1_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch1_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch1_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch1_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch1_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch1_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch1_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch1_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch1_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch1_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch1_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch1_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch1_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch1_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch1_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch1_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch1_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch1_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch1_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch1_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch1_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch1_select_section_coefficients_coeff_1_0_porty) 
);

NLC_1ch ch0_path(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),
  
  //ADC output
  .srdyi(srdyi), 
  .x_lin(ch0_x_lin),

  //NLC output
  .srdyo(), 
  .x_adc(ch0_x_adc), 

  //X-value that separates the sections
  .section_limit(ch0_section_limit),

  //Reciprocal standard deviation for the centered and scaled fit
  .recip_stdev_4(ch0_select_section_coefficients_stdev_4_porty), 
  .recip_stdev_3(ch0_select_section_coefficients_stdev_3_porty), 
  .recip_stdev_2(ch0_select_section_coefficients_stdev_2_porty), 
  .recip_stdev_1(ch0_select_section_coefficients_stdev_1_porty), 

  //Negative meand for the centered and scaled fit
  .neg_mean_4(ch0_select_section_coefficients_mean_4_porty), 
  .neg_mean_3(ch0_select_section_coefficients_mean_3_porty), 
  .neg_mean_2(ch0_select_section_coefficients_mean_2_porty), 
  .neg_mean_1(ch0_select_section_coefficients_mean_1_porty), 

 
  //Section 4 coefficients (x > 0, |x| > section_limit)
  .coeff_4_10(ch0_select_section_coefficients_coeff_4_10_porty), 
  .coeff_4_9(ch0_select_section_coefficients_coeff_4_9_porty), 
  .coeff_4_8(ch0_select_section_coefficients_coeff_4_8_porty), 
  .coeff_4_7(ch0_select_section_coefficients_coeff_4_7_porty), 
  .coeff_4_6(ch0_select_section_coefficients_coeff_4_6_porty), 
  .coeff_4_5(ch0_select_section_coefficients_coeff_4_5_porty), 
  .coeff_4_4(ch0_select_section_coefficients_coeff_4_4_porty), 
  .coeff_4_3(ch0_select_section_coefficients_coeff_4_3_porty), 
  .coeff_4_2(ch0_select_section_coefficients_coeff_4_2_porty), 
  .coeff_4_1(ch0_select_section_coefficients_coeff_4_1_porty), 
  .coeff_4_0(ch0_select_section_coefficients_coeff_4_0_porty), 

  //Section 3 coefficients (x > 0, |x| <= section_limit)
  .coeff_3_10(ch0_select_section_coefficients_coeff_3_10_porty), 
  .coeff_3_9(ch0_select_section_coefficients_coeff_3_9_porty), 
  .coeff_3_8(ch0_select_section_coefficients_coeff_3_8_porty), 
  .coeff_3_7(ch0_select_section_coefficients_coeff_3_7_porty), 
  .coeff_3_6(ch0_select_section_coefficients_coeff_3_6_porty), 
  .coeff_3_5(ch0_select_section_coefficients_coeff_3_5_porty), 
  .coeff_3_4(ch0_select_section_coefficients_coeff_3_4_porty), 
  .coeff_3_3(ch0_select_section_coefficients_coeff_3_3_porty), 
  .coeff_3_2(ch0_select_section_coefficients_coeff_3_2_porty), 
  .coeff_3_1(ch0_select_section_coefficients_coeff_3_1_porty), 
  .coeff_3_0(ch0_select_section_coefficients_coeff_3_0_porty), 

  //Section 2 coefficients (x <= 0, |x| <= section_limit)
  .coeff_2_10(ch0_select_section_coefficients_coeff_2_10_porty), 
  .coeff_2_9(ch0_select_section_coefficients_coeff_2_9_porty), 
  .coeff_2_8(ch0_select_section_coefficients_coeff_2_8_porty), 
  .coeff_2_7(ch0_select_section_coefficients_coeff_2_7_porty), 
  .coeff_2_6(ch0_select_section_coefficients_coeff_2_6_porty), 
  .coeff_2_5(ch0_select_section_coefficients_coeff_2_5_porty), 
  .coeff_2_4(ch0_select_section_coefficients_coeff_2_4_porty), 
  .coeff_2_3(ch0_select_section_coefficients_coeff_2_3_porty), 
  .coeff_2_2(ch0_select_section_coefficients_coeff_2_2_porty), 
  .coeff_2_1(ch0_select_section_coefficients_coeff_2_1_porty), 
  .coeff_2_0(ch0_select_section_coefficients_coeff_2_0_porty), 

  //Section 1 coefficients (x <= 0, |x| > section_limit)
  .coeff_1_10(ch0_select_section_coefficients_coeff_1_10_porty), 
  .coeff_1_9(ch0_select_section_coefficients_coeff_1_9_porty), 
  .coeff_1_8(ch0_select_section_coefficients_coeff_1_8_porty), 
  .coeff_1_7(ch0_select_section_coefficients_coeff_1_7_porty), 
  .coeff_1_6(ch0_select_section_coefficients_coeff_1_6_porty), 
  .coeff_1_5(ch0_select_section_coefficients_coeff_1_5_porty), 
  .coeff_1_4(ch0_select_section_coefficients_coeff_1_4_porty), 
  .coeff_1_3(ch0_select_section_coefficients_coeff_1_3_porty), 
  .coeff_1_2(ch0_select_section_coefficients_coeff_1_2_porty), 
  .coeff_1_1(ch0_select_section_coefficients_coeff_1_1_porty), 
  .coeff_1_0(ch0_select_section_coefficients_coeff_1_0_porty) 
);


endmodule

