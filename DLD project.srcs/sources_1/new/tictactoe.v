`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2022 10:05:05 AM
// Design Name: 
// Module Name: tictactoe
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


module tictactoe(
     input clk, 
     input reset, 
     //input play1, 
     //input play2, 
     input left, right, up, down, sel, 
     //input [3:0] player1_position, player2_position, 
     // positions to play 
     // LED display for positions 
     // 01: Player 
     // 10: Computer 
     output [1:0]who,
     //output h_sync, output v_sync, output [3:0] red,green,blue
     output [1:0] p1,p2,p3,p4,p5,p6,p7,p8,p9, p10, p11, p12, p13, p14, p15, p16
     , output [3:0] select_position
     );
 
 wire [3:0] player1_position, player2_position;//, select_position;
 wire [15:0] PL1_en;// player1 enable signals 
 wire [15:0] PL2_en;// player2 enable signals 
 wire [15:0] sel_en;// 
 wire wrong_move; // disable writing when an illegal move is detected 
 //positions = {2'b00, 2'b00, 2'b00, 2'b00, 2'b00, 2'b00, 2'b00, 2'b00, 2'b00, 2'b00, 2'b00, 2'b00, 2'b00, 2'b00, 2'b00, 2'b00};//wire [1:0] pos1,pos2,pos3,pos4,p5,p6,p7,p8,p9, p10, p11, pt12, p13, p14, p15;// positions stored
 wire winner; // win signal 
 wire player1_play; // player1 enabling signal 
 wire player2_play; // player2 enabling signal 
 wire draw;
 
 wire play1;
 wire play2;
  // draw signal 
 // position registers    
  //input_encoder input_unit(clk, left, right, up, down, sel, player1_position, select_position);
  //input_encoder input_unit2(clk, left, right, up, down, sel, player2_position, select_position);
  //assign select_position = 4'b0000;  
  
  
   //input_encoder inp_unit(clk, left, right, up, down, sel, player1_position, select_position);
   //input_encoder inp_unit(clk, left, right, up, down, sel, player2_position, select_position);
  
  //assign select_position = 4'b0000;
  
  input_encoder inp_unit
  (clk, left, right, up, down, sel, 
  player1_play, player2_play, 
  select_position, player1_position, player2_position, 
  play1, play2);

  
  position_registers position_reg_unit(
      clk, // clock of the game 
      reset, // reset the game 
      wrong_move, // disable writing when an illegal move is detected 
      PL1_en, // Computer enable signals 
      PL2_en, // Player enable signals 
      p1,p2,p3,p4,p5,p6,p7,p8,p9, p10, p11, p12, p13, p14, p15, p16// positions stored
      );
 // winner detector 
 winner_detector win_detect_unit(p1,p2,p3,p4,p5,p6,p7,p8,p9, p10, p11, p12, p13, p14, p15, p16,winner,who);
 // position decoder for player1
 position_decoder pd1(player1_position,player1_play,PL1_en);
 // position decoder for player  
 position_decoder pd2(player2_position,player2_play,PL2_en); 
 
 select_position_decoder sd(select_position, sel_en);
 // incorrect move detector
  wrong_move_detector wmd_unit(
   p1,p2,p3,p4,p5,p6,p7,p8,p9, p10, p11, p12, p13, p14, p15, p16, 
   PL1_en[8:0], PL2_en[8:0], 
   wrong_move
   );
 // draw detector 
 draw_detector draw_unit(
   p1,p2,p3,p4,p5,p6,p7,p8,p9, p10, p11, p12, p13, p14, p15, p16, 
   draw
    ); 
 fsm_controller tic_tac_toe_controller(
     clk,// clock of the circuit 
     reset,// reset 
     play1, // player1 plays 
     play2,// player2 plays 
     wrong_move,// incorrect move detected 
     draw, // draw detected 
     winner, // winner detected 
     player1_play, // enable player1 to play 
     player2_play // enable player2 to play 
     );    
     
 
//top vga(clk, sel_en, hsync, vsync, red, green, blue);
endmodule
