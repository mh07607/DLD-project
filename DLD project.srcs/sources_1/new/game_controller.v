`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2022 09:10:01 AM
// Design Name: 
// Module Name: fsm_controller
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


module fsm_controller(
     input clock,// clock of the circuit 
     reset,// reset 
     play1, // PLAYER1 plays 
     play2,// PLAYER2 plays 
     wrong_move,// illegal move detected 
     draw, // draw detected 
     win, // winner detected 
     output reg player2_play, // enable player to play 
     player1_play
    // enable player to play 
     );
// FSM States 
parameter IDLE =2'b00;
parameter PLAYER1=2'b01;
parameter PLAYER2=2'b10;
parameter GAME_DONE=2'b11;
reg[1:0] current_state, next_state;
// current state registers 
always @(posedge clock or posedge reset) 
begin 
 if(reset)
  current_state <= IDLE;
 else 
  current_state <= next_state;
end 
 // next state 
always @(*)
 begin
 case(current_state)
 IDLE: begin 
  if(reset==1'b0) //&& play1 == 1'b1)
  begin
   //play1 = 1'b1;
   next_state <= PLAYER1; // player to play 
  end
  else 
   next_state <= IDLE;
  player1_play <= 1'b0;
  player2_play <= 1'b0;
 end 
 PLAYER1:begin 
  player1_play <= 1'b1;
  player2_play <= 1'b0;
  if(win == 1'b1 || draw == 1'b1)
    next_state <= GAME_DONE; 
  if(wrong_move==1'b0 && play1 == 1'b1)
   next_state <= PLAYER2; // player2 to play 
  else if (wrong_move == 1'b1 || play1 == 1'b0)
   next_state <= IDLE;
 end 
 PLAYER2:begin 
  player1_play <= 1'b0;
  player2_play <= 1'b1;
  //assign play1 = 1'b0;
  if(wrong_move == 1'b1 || play2 == 1'b0) begin 
   next_state <= PLAYER2;
   //player2_play <= 1'b0;
  end
  else if(win==1'b0 && draw == 1'b0 && play2 == 1'b1)
  begin 
    next_state <= IDLE;
   //player2_play <= 1'b1;// player2 to play when play2=1
  end 
  else if(draw == 1 || win ==1'b1)
  begin 
   next_state <= GAME_DONE; // game done 
   //player2_play <= 1'b1;// player2 to play when play2=1
  end  
 end 
 GAME_DONE:begin // game done
  player1_play <= 1'b0;
  player2_play <= 1'b0; 
  if(reset==1'b1) 
   next_state <= IDLE;// reset the game to IDLE 
  else 
   next_state <= GAME_DONE;  
 end 
 default: next_state <= IDLE; 
 endcase
 end
endmodule 
