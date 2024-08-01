// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Apr  6 11:50:16 2022
// Host        : karthikteja running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/dataD files/FPGA
//               Lab/Lab6/ila/ila.srcs/sources_1/ip/ila_0/ila_0_stub.v}
// Design      : ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2018.2" *)
module ila_0(clk, probe0, probe1, probe2)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[0:0],probe2[3:0]" */;
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [3:0]probe2;
endmodule
