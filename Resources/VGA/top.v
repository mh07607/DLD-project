`timescale 1ns / 1ps
module top(
    input clk,
    input reset, 
    input play1, 
    input play2, 
    input left, right, up, down, sel, //input [1:0] pos,
    //input [15:0] sel_en,
    output h_sync,v_sync,
    output [3:0] red,green,blue
);
    wire [1:0] p1,p2,p3,p4,p5,p6,p7,p8,p9, p10, p11, p12, p13, p14, p15, p16;
    wire clk_d, v_trig, video_on;
    wire [9:0] h_count;
    wire [9:0] v_count;
    wire [9:0] x_loc;
    wire [9:0] y_loc;
    wire [1:0] who;
    wire [3:0] select_position;

    //assign who = 2'b00;
   // assign select_position = 4'b0000;
    clk_div cd(clk,clk_d);
    
    
    tictactoe (clk_d,
         reset, 
         play1, 
         play2, 
         left, right, up, down, sel,  
         who,
         p1,p2,p3,p4,p5,p6,p7,p8,p9, p10, p11, p12, p13, p14, p15, p16,
         select_position
     );
    
 
    h_counter hc(clk_d,h_count,v_trig);
    v_counter vc(clk_d,v_trig,v_count);
    vga_sync vgas(h_count,v_count,x_loc,y_loc,h_sync,v_sync,video_on);
    pixel_gen pg(clk_d,x_loc,y_loc, video_on, p1,p2,p3,p4,p5,p6,p7,p8,p9, p10, p11, p12, p13, p14, p15, p16, select_position, red,green,blue);
endmodule