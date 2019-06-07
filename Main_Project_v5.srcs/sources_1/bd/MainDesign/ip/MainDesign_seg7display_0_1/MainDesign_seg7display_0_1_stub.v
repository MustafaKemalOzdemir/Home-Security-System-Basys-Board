// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sun Dec 23 22:00:18 2018
// Host        : ADMINRG-25AE4SR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/M/Desktop/projects/Main_Project_v5/Main_Project_v5.srcs/sources_1/bd/MainDesign/ip/MainDesign_seg7display_0_1/MainDesign_seg7display_0_1_stub.v
// Design      : MainDesign_seg7display_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "seg7display,Vivado 2018.1" *)
module MainDesign_seg7display_0_1(x_l, clk, reset, a_to_g, an_l, dp_l)
/* synthesis syn_black_box black_box_pad_pin="x_l[15:0],clk,reset,a_to_g[6:0],an_l[3:0],dp_l" */;
  input [15:0]x_l;
  input clk;
  input reset;
  output [6:0]a_to_g;
  output [3:0]an_l;
  output dp_l;
endmodule
