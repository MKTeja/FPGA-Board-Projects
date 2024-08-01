`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2022 22:09:00
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [7:0] A,
    input [7:0] B,
    input [2:0] S,
    output reg [7:0] YL,
    output reg [7:0] YH
    );
    always @(A or B or S)
    begin 
        case (S)
        3'b000: {YH,YL}=A+B;
        3'b001: {YH,YL}=A-B;
        3'b010: {YH,YL}=A*B;
        3'b011: YL=A+1;
        3'b100: YL=A<<B;
        3'b101: YL=A&B;
        3'b110: YL= A|B;
        3'b111: YL= A^B;
        endcase
    end
    
endmodule
