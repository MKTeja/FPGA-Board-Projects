`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2022 11:41:43
// Design Name: 
// Module Name: updowncounter
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


module updowncounter(
    input clk,
    input updown,
    input  reset,
    output reg [3:0] cnt
    );
    always @(posedge clk)
    begin
    if(reset==1)
    cnt<=0;
    else
      begin
       if(updown==1)
           begin 
           cnt<=cnt+1;
           end
       else
           begin
           cnt<=cnt-1;
           end
       end
    end
endmodule
