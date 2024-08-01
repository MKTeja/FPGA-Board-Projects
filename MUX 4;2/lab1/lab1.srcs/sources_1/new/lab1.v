`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2022 21:43:01
// Design Name: 
// Module Name: lab1
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


module lab1(I, sel, out);

input [3:0]I;
input [1:0]sel;
output reg out;

always @ (I[0] or I[1] or I[2] or I[3] or sel[0], sel[1])
begin

case (sel)
2'b00 : out <= I[0];
2'b01 : out <= I[1];
2'b10 : out <= I[2];
2'b11 : out <= I[3];
endcase

end
endmodule
