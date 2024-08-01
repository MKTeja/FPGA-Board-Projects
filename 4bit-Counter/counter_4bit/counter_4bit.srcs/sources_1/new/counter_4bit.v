//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2022 22:09:26
// Design Name: 
// Module Name: counter_4bit
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


module counter_4bit(
    input Clk,
    input Reset,
    output reg [3:0] Count
    );
    reg[10:0] Count_Div;
        
        always@(posedge Clk, posedge Reset)
        begin
        if(Reset==1)
            Count_Div = 0;
        else
            Count_Div = Count_Div + 1;
        end
        
        always@(posedge Count_Div[10], posedge Reset)
        begin
        if(Reset==1)
            Count = 0;
        else
            Count = Count + 1;
        end 

endmodule
