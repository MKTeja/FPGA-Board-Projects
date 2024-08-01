`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2022 13:05:47
// Design Name: 
// Module Name: tb_Test
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


module tb_Test(
    );
    
    reg [7:0] A,B;
    reg [2:0] S;
    wire [7:0] YH,YL;
    
    ALU alu(A,B,S,YL,YH);
    
    initial begin
    A=8'b0000_0100;
    B=8'b0000_0010;
    S=3'b000;
    repeat(8)
    #10 S=S+1;
    #10 $finish;
    end
endmodule
