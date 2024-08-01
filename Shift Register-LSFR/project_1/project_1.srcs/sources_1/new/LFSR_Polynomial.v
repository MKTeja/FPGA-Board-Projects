`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2022 03:14:54
// Design Name: 
// Module Name: LFSR_Polynomial
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module LFSR_Polynomial(clk,rst,out); 
  output reg [3:0]out;
  input clk, rst;
        
  wire feedback;
  assign feedback = out[3] ^ out[2];
  
  always@(*)
  out[0]=feedback;

always @(posedge clk, posedge rst)
  begin
    if (rst) begin
      out[3] = 1'b1;
      out[2] = 1'b1;
      out[1] = 1'b1;
      out[0] = 1'b1;
      end
    else
      out = {out[2:0],feedback};
  end
endmodule
