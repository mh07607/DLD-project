`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2022 05:47:09 AM
// Design Name: 
// Module Name: button_debug
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


module button_debug(input button,clk,output f_button);
wire b_clk;
wire output1,output2,output2_bar,output0;
button_clock u1(clk, b_clk);
button_damper d0(b_clk, button,output0);

button_damper d1(b_clk, output0,output1);
button_damper d2(b_clk, output1,output2);
assign output2_bar = ~output2;
assign f_button = output1 & output2_bar;
endmodule
