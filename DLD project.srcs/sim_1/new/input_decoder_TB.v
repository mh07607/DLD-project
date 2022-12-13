`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/13/2022 10:00:13 AM
// Design Name: 
// Module Name: input_decoder_TB
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


module input_decoder_TB();
reg clk; 
reg left, right, down, up;
reg select; 
reg p1_turn, p2_turn;
/*, output reg[3:0] player_position*/ 
wire [3:0] select_position; 
wire [3:0] player1_position;
wire [3:0] player2_position;
wire play_1;
wire play_2;
 

 

input_encoder inp (.clk(clk), 
.left(left), .right(right), .down(down), .up(up),
.select(select), .p1_turn(p1_turn), .p2_turn(p2_turn), 
.select_position(select_position), .player1_position(player1_position),
.player2_position(player2_position), .play_1(play_1), .play_2(play_2));



initial begin 
    clk = 1'b0;
    left = 0;
    right = 0;
    up = 0;
    down = 0;

#100 select = 1; p1_turn = 1; p2_turn = 0; 
#100 select = 0;
#100 select = 1; p2_turn = 1; p1_turn = 0;

end

always 
#5 clk = ~clk;

endmodule
