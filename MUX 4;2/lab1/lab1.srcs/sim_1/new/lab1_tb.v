`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2022 22:10:07
// Design Name: 
// Module Name: lab1_tb
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


module lab1_tb;
reg [3:0]I;
reg [1:0]sel;
wire out;
integer i;
lab1 mux(I, sel, out);
initial 
begin
$monitor("[%0t] sel=%0h I[0]=%0h, I[1]=%0h, I[2]=%0h, I[3]=%0h, out=%0h",$time, sel, I[0],I[1],I[2],I[3],out);
   sel<=0;
   I[0]<=0;
   I[1]<=1;
   I[2]<=0;
   I[3]<=1;
   for( i=1;i<4;i=i+1)begin
     #50 sel<=i;
   end
end   
endmodule