`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2022 05:47:09 AM
// Design Name: 
// Module Name: button_clock
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


module button_clock(input clk, output reg button_clk);
    reg [26:0]counter=0;
    always @(posedge clk)
    begin
        counter <= (counter>=249999)?0:counter+1;
        button_clk <= (counter < 125000)?1'b0:1'b1;
    end
endmodule