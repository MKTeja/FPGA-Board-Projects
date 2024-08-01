`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2022 22:53:56
// Design Name: 
// Module Name: Main_ALU
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


module Main_ALU(
  input clk,
  output [7:0]YL,
  output [7:0]YH
    );
    wire [7:0]A,B;
    wire [7:0] yl,yh;
    wire [2:0]S;
    ALU a1(A,B,S,yl,yh);
    vio_0 v1(clk,yl,yh,A,B,S);
    assign YL= yl;
    assign YH= yh;
  
endmodule
