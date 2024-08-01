`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2022 23:37:32
// Design Name: 
// Module Name: CountFSM_tb
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


module CountFSM_tb();
      reg Clk, Rst, CountUP;
      wire [3:0]CountValue;
      countFSM a1(Clk,Rst,CountUP,CountValue);
      initial
      begin
        Clk=1'b0;
        repeat(20)
        #5 Clk=~Clk;
        $finish;
      end
      
      initial
      begin
        Rst=1'b0;
        #1 Rst=1'b1;
        #1 Rst=1'b0;
      end
      
      initial
      begin
        CountUP=1'b1;
        #11 CountUP=1'b0;
        #10 CountUP=1'b1;
      end
             
endmodule
