`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2022 03:20:48
// Design Name: 
// Module Name: LFSR_Polynomial_tb
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


module LFSR_Polynomial_tb;
      reg clk_tb;
      reg rst_tb;
      wire [3:0]out; 

initial
begin
    clk_tb = 0;
    rst_tb = 1;
    #15;
    
    rst_tb = 0;
    #200;
end

always
begin
    #5;
    clk_tb = ~ clk_tb;
end

LFSR_Polynomial DUT(clk_tb,rst_tb,out);
endmodule