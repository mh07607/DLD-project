`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2022 01:26:26 PM
// Design Name: 
// Module Name: input_decoder
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


module input_encoder(input clk, 
input left, input right, input down, input up, 
input select, 
input p1_turn, input p2_turn,
/*, output reg[3:0] player_position*/ 
output reg [3:0] select_position, 
output reg [3:0] player1_position, output reg [3:0] player2_position,
output reg play_1, output reg play_2);


reg [5:0] state;
wire[5:0] buttons;


assign buttons={select, left, right, up, down};


always @(posedge clk)
begin
    case (state)
    5'b00000:
            begin
                case(buttons)
                    5'b00001:
                            begin   
                                state<=5'b00001;
                                select_position <= select_position + 4;
                            end
                    5'b00010:
                            begin   
                                state<=5'b00010;
                                select_position <= select_position - 4;
                            end
                    5'b00100:
                            begin   
                                state<=5'b00100;
                                select_position <= select_position + 1;
                            end
                    5'b01000:
                            begin   
                                state<=5'b01000;
                                select_position <= select_position - 1;
                            end 
                    5'b10000:
                            begin
                                state<=5'b10000;  
                             
                                if(p1_turn == 1'b1)
                                    begin
                                        player1_position = select_position;
                                        play_1 = 1'b1;
                                        //play_1 = 1'b0;
                                    end
                                else if(p2_turn == 1'b1)
                                    begin
                                        player2_position = select_position;
                                        play_2 = 1'b1;
                                        //play_2 = 1'b0;
                                    end
                            end                                                                             
                endcase
            end
    5'b00001:
            begin
                if (buttons==5'b00000)
                    state<=5'b00000;
            end
    5'b00010:
            begin
                if (buttons==5'b00000)
                    state<=5'b00000;
            end
    5'b00100:
            begin
                if (buttons==5'b00000)
                    state<=5'b00000;
            end
    5'b01000:
            begin
                if (buttons==5'b00000)
                    state<=5'b00000;
            end         
    5'b10000:
            begin
                if (buttons==5'b00000)
                    state<=5'b00000;
            end                              
endcase
end 
initial
    begin
    //leds=8'b111;
    play_1 = 1'b0;
    play_2 = 1'b0;
    select_position = 4'b0000;
    state=5'b0000;
    end
     
    
    
    
endmodule
