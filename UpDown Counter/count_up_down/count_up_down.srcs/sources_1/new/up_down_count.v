`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2022 23:16:10
// Design Name: 
// Module Name: countFSM
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


module countFSM(input Clk, input Reset, input CountUP, output reg [3:0] CountValue);
       reg [1:0] next_state, present_state;
       parameter S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;
       reg Clk_Div;
//       always@(posedge Clk, posedge Reset)
//        begin
//        if(Reset==1)
//            Clk_Div = 0;
//        else
//            Clk_Div = Clk_Div + 1;
//        end
       always@(posedge Clk_Div, posedge Reset)
               begin
               if(Reset==1)
               present_state=S0;
               else
               present_state=next_state;
               end
        always@(present_state, CountUP)
               begin
               case(present_state)
               S0:begin
                  if(CountUP==1)
                    next_state=S1;
                  else
                    next_state=S3;
                  end
               S1:begin
                  if(CountUP==1)
                    next_state=S2;
                  else
                    next_state=S0;
                  end
               S2:begin
                  if(CountUP==1)
                    next_state=S3;
                  else
                    next_state=S1;
                  end
               S3:begin
                  if(CountUP==1)
                    next_state=S0;
                  else
                    next_state=S2;
                  end
               endcase
               end
        always@(present_state)
        begin
        case(present_state)
        S0:CountValue=4'b0000;
        S1:CountValue=4'b0010;
        S2:CountValue=4'b0100;
        S3:CountValue=4'b0110;
        default:CountValue=4'b0000;
        endcase
        end
                
endmodule
