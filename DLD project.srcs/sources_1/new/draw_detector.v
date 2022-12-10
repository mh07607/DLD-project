`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2022 09:06:09 AM
// Design Name: 
// Module Name: no_space_detector
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

module draw_detector(
   input [1:0] tile1,tile2,tile3,tile4,tile5,tile6,tile7,tile8,tile9,tile10,tile11,tile12,tile13,tile14,tile15,tile16,
   output wire no_space
    );
wire nospace1,nospace2,nospace3,nospace4,nospace5,nospace6,nospace7,nospace8,nospace9,nospace10,nospace11,nospace12,nospace13,nospace14,nospace15,nospace16;
// detect no more space     
assign nospace1 = tile1[1] | tile1[0];
assign nospace2 = tile2[1] | tile2[0];
assign nospace3 = tile3[1] | tile3[0];
assign nospace4 = tile4[1] | tile4[0];
assign nospace5 = tile5[1] | tile5[0];
assign nospace6 = tile6[1] | tile6[0];
assign nospace7 = tile7[1] | tile7[0];
assign nospace8 = tile8[1] | tile8[0];
assign nospace9 = tile9[1] | tile9[0];
assign nospace10 = tile10[1] | tile10[0];
assign nospace11 = tile11[1] | tile11[0];
assign nospace12 = tile12[1] | tile12[0];
assign nospace13 = tile13[1] | tile13[0];
assign nospace14 = tile14[1] | tile14[0];
assign nospace15 = tile15[1] | tile15[0];
assign nospace16 = tile16[1] | tile16[0];
// output
assign no_space = (((((((((((((((nospace1 & nospace2) & nospace3) & nospace6) & nospace5) & nospace6) & nospace7) & nospace8) & nospace9) & nospace10) & nospace11) & nospace12) & nospace13) & nospace14) & nospace15) & nospace16);
endmodule

