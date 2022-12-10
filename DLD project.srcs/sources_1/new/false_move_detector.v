`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2022 09:03:31 AM
// Design Name: 
// Module Name: illegal_move_detector
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
module wrong_move_detector(
   input [1:0] tile1,tile2,tile3,tile4,tile5,tile6,tile7,tile8,tile9,tile10,tile11,tile12,tile13,tile14,tile15,tile16, 
   input [15:0] PC_player, UR_player, 
   output wire wrong_move
   );
wire illegal1,illegal2,illegal3,illegal4,illegal5,illegal6,illegal7,illegal8,illegal9,illegal10,illegal11,illegal12,illegal13,illegal14,illegal15,illegal16;
wire illegal17,illegal18,illegal19,illegal20,illegal21,illegal22,illegal23,illegal24,illegal25,illegal26,illegal27,illegal28,illegal29,illegal30,illegal31,illegal32;
wire illegal33,illegal34;
// player 1 : illegal moving    
assign illegal1 = (tile1[1] | tile1[0]) & UR_player[0];
assign illegal2 = (tile2[1] | tile2[0]) & UR_player[1];
assign illegal3 = (tile3[1] | tile3[0]) & UR_player[2];
assign illegal4 = (tile4[1] | tile4[0]) & UR_player[3];
assign illegal5 = (tile5[1] | tile5[0]) & UR_player[4];
assign illegal6 = (tile6[1] | tile6[0]) & UR_player[5];
assign illegal7 = (tile7[1] | tile7[0]) & UR_player[6];
assign illegal8 = (tile8[1] | tile8[0]) & UR_player[7];
assign iilegal9 = (tile9[1] | tile9[0]) & UR_player[8];
assign iilegal10 = (tile10[1] | tile10[0]) & UR_player[9];
assign iilegal11 = (tile11[1] | tile11[0]) & UR_player[10];
assign iilegal12= (tile12[1] | tile12[0]) & UR_player[11];
assign iilegal13 = (tile13[1] | tile13[0]) & UR_player[12];
assign iilegal14 = (tile14[1] | tile14[0]) & UR_player[13];
assign iilegal15 = (tile15[1] | tile15[0]) & UR_player[14];
assign iilegal16= (tile16[1] | tile16[0]) & UR_player[15];
// player 2 : illegal moving  
assign illegal17 = (tile1[1] | tile1[0]) & PC_player[0];
assign illegal18 = (tile2[1] | tile2[0]) & PC_player[1];
assign illegal19 = (tile3[1] | tile3[0]) & PC_player[2];
assign illegal20 = (tile4[1] | tile4[0]) & PC_player[3];
assign illegal21 = (tile5[1] | tile5[0]) & PC_player[4];
assign illegal22 = (tile6[1] | tile6[0]) & PC_player[5];
assign illegal23 = (tile7[1] | tile7[0]) & PC_player[6];
assign illegal24 = (tile8[1] | tile8[0]) & PC_player[7];
assign iilegal25 = (tile9[1] | tile9[0]) & PC_player[8];
assign iilegal26 = (tile10[1] | tile10[0]) & PC_player[9];
assign iilegal27 = (tile11[1] | tile11[0]) & PC_player[10];
assign iilegal28 = (tile12[1] | tile12[0]) & PC_player[11];
assign iilegal29 = (tile13[1] | tile13[0]) & PC_player[12];
assign iilegal30 = (tile14[1] | tile14[0]) & PC_player[13];
assign iilegal31 = (tile15[1] | tile15[0]) & PC_player[14];
assign iilegal32 = (tile16[1] | tile16[0]) & PC_player[15];

// intermediate signals 
assign illegal33 =(((((((((((((((illegal1| illegal2) | illegal3) | illegal4) | illegal5) | illegal6) | illegal7) | illegal8) | illegal9)| illegal10) | illegal11) | illegal12) | illegal13) | illegal14) | illegal15) | illegal16);
assign illegal34 =(((((((((((((((illegal17 | illegal18) | illegal19) | illegal20) | illegal21) | illegal22) | illegal23) | illegal24) | illegal25) | illegal26) | illegal27)| illegal28 ) | illegal29) | illegal30 )| illegal31 )| illegal32);
// output illegal move 
assign wrong_move = illegal33 | illegal34 ;
endmodule


