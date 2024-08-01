// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2018.2" *)
module vio_0(clk, probe_in0, probe_out0, probe_out1);
  input clk;
  input [3:0]probe_in0;
  output [0:0]probe_out0;
  output [0:0]probe_out1;
endmodule
