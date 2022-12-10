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


module input_encoder(input clk, input left, input right, input down, input up, input select/*, output reg[3:0] player_position*/, output reg [3:0] select_position);
reg [4:0] state;
wire[4:0] buttons;

//initial ;


assign buttons={select, left, right, up, down};


always @(posedge clk)
begin
    case (state)
    5'b00000:
            begin
                case(buttons)
                    4'b0001:
                            begin   
                                state<=4'b0001;
                                select_position <= select_position - 4 ;
                            end
                    4'b0010:
                            begin   
                                state<=4'b0010;
                                select_position <= select_position + 4;
                            end
                    4'b0100:
                            begin   
                                state<=4'b0100;
                                select_position <= select_position + 1;
                            end
                    4'b1000:
                            begin   
                                state<=4'b1000;
                                select_position <= select_position - 1;
                            end                                                        
                endcase
            end
    5'b00001:
            begin
                if (buttons==4'b0000)
                    state<=4'b0000;
            end
    5'b00010:
            begin
                if (buttons==4'b0000)
                    state<=4'b0000;
            end
    5'b01000:
            begin
                if (buttons==4'b0000)
                    state<=4'b0000;
            end
    4'b1000:
            begin
                if (buttons==4'b0000)
                    state<=4'b0000;
            end                        
endcase
end 
initial
    begin
    //leds=8'b111;
    select_position = 4'b0000;
    state=2'b00;
    end
     
    
    
    
endmodule
