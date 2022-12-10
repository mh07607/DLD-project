`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2022 09:10:51 AM
// Design Name: 
// Module Name: tb_TicTacToe
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


module tb_TicTacToe();
reg clk;
 reg reset;
 reg play1;
 reg play2;
 reg [3:0] player1_position;
 reg [3:0] player2_position;

 // Outputs
 wire [1:0] pos_led1;
 wire [1:0] pos_led2;
 wire [1:0] pos_led3;
 wire [1:0] pos_led4;
 wire [1:0] pos_led5;
 wire [1:0] pos_led6;
 wire [1:0] pos_led7;
 wire [1:0] pos_led8;
 wire [1:0] pos_led9;
 wire [1:0] who;

 // Instantiate the Unit Under Test (UUT)
 tictactoe uut (
  .clk(clk), 
  .reset(reset), 
  .play1(play1), 
  .play2(play2), 
  .player1_position(player1_position), 
  .player2_position(player2_position), 
  .pos1(pos_led1), 
  .pos2(pos_led2), 
  .pos3(pos_led3), 
  .pos4(pos_led4), 
  .pos5(pos_led5), 
  .pos6(pos_led6), 
  .pos7(pos_led7), 
  .pos8(pos_led8), 
  .pos9(pos_led9), 
  .who(who)
 );
 // clk
 initial begin
 clk = 0;
 forever #5 clk = ~clk;
 end
 initial begin
  // Initialize Inputs
  play1 = 0;
  reset = 1;
  player1_position = 0;
  player2_position = 0;
  play2 = 0;
  #100;
  reset = 0;
  #100;
  play1 = 1;
  play2 = 0;
  player2_position = 4;
  player1_position = 0;
  #50;
  play2 = 1;
  play1 = 0;
  #100;
  reset = 0;
  play1 = 1;
  play2 = 0;
  player2_position = 8;
  player1_position= 1;
  #50;
  play2 = 1;
  play1 = 0;  
  #100;
  reset = 0;
  play1 = 1;
  play2 = 0;
  player2_position = 6;
  player1_position= 2;
  #50;
  play2 = 1;
  play1 = 0; 
  #50
  play2 = 0;
  play1 = 0;   
  end     
endmodule