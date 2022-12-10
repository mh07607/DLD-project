`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2022 09:00:06 AM
// Design Name: 
// Module Name: winner_detect_3
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

module winner_detect_3(input [1:0] pos0,pos1,pos2, output wire winner, output wire [1:0]who);
wire [1:0] temp0,temp1,temp2;
wire temp3;
assign temp0[1] = !(pos0[1]^pos1[1]);
assign temp0[0] = !(pos0[0]^pos1[0]);
assign temp1[1] = !(pos2[1]^pos1[1]);
assign temp1[0] = !(pos2[0]^pos1[0]);
assign temp2[1] = temp0[1] & temp1[1];
assign temp2[0] = temp0[0] & temp1[0];
assign temp3 = pos0[1] | pos0[0];
// winner if 3 positions are similar and should be 01 or 10 
assign winner = temp3 & temp2[1] & temp2[0];
// determine who the winner is 
assign who[1] = winner & pos0[1];
assign who[0] = winner & pos0[0];
endmodule
