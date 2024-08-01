`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2022 11:31:57
// Design Name: 
// Module Name: main_ila
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


module main_ila(
    input clk
    );
    wire [3:0] cnt;
    wire rst,updown;
    ila_0 il(clk,rst,updown,cnt);
    vio_0 vi(clk,cnt,updown,rst);
    updowncounter counter(clk,updown,rst,cnt);
endmodule
