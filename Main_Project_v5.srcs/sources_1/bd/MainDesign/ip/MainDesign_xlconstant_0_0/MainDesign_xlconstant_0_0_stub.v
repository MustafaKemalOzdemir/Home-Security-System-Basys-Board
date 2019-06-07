// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sun Dec 23 19:35:27 2018
// Host        : ADMINRG-25AE4SR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/M/Desktop/projects/Main_Project_v5/Main_Project_v5.srcs/sources_1/bd/MainDesign/ip/MainDesign_xlconstant_0_0/MainDesign_xlconstant_0_0_stub.v
// Design      : MainDesign_xlconstant_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlconstant_v1_1_4_xlconstant,Vivado 2018.1" *)
module MainDesign_xlconstant_0_0(dout)
/* synthesis syn_black_box black_box_pad_pin="dout[0:0]" */;
  output [0:0]dout;
endmodule
