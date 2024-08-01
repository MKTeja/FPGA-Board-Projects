`timescale 1us / 1ns
module counter_4bit_tb();
reg clk,rst;
        wire [3:0]out;         
        counter_4bit c4b(clk,rst,out);
        initial
        begin
        clk = 1'b0;       
       forever #0.005 clk = ~clk;
       end
       initial
        begin
        rst = 1'b1;
        #2 rst =~rst;
        #1 rst=~rst;
        #4 rst=~rst;
        #5;
        end 
endmodule
