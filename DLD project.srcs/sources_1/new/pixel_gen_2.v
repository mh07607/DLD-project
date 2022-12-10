`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2022 01:47:00 PM
// Design Name: 
// Module Name: pixel_gen_2
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


module pixel_gen_2(
/*module pixel_gen(
    input clk,
    input [9:0] x,
    input [9:0] y,
    input [15:0] sel_en,
    input video_on,
    output reg [3:0] red = 0,
    output reg [3:0] green = 0,
    output reg [3:0] blue = 0
);
    function box (input [9:0] cur_x,cur_y,l,r,u,d);
        begin
            box = (cur_x >= l) && (cur_x < r) && (cur_y >= u) && (cur_y < d);
        end
    endfunction
    always @ (posedge clk) begin
    red <= video_on?((
        // X
        box(x,y,10'd30,10'd32,10'd30,10'd34) ||
        box(x,y,10'd38,10'd40,10'd30,10'd34) ||
        box(x,y,10'd32,10'd34,10'd34,10'd36) ||
        box(x,y,10'd36,10'd38,10'd34,10'd36) ||
        box(x,y,10'd34,10'd36,10'd36,10'd38) ||
        box(x,y,10'd32,10'd34,10'd38,10'd40) ||
        box(x,y,10'd36,10'd38,10'd38,10'd40) ||
        box(x,y,10'd30,10'd32,10'd40,10'd44) ||
        box(x,y,10'd38,10'd40,10'd40,10'd44) ||
        // L
        box(x,y,10'd42,10'd44,10'd30,10'd44) ||
        box(x,y,10'd44,10'd52,10'd42,10'd44) ||
        // O
        box(x,y,10'd56,10'd62,10'd30,10'd32) ||
        box(x,y,10'd56,10'd68,10'd42,10'd44) ||
        box(x,y,10'd54,10'd56,10'd32,10'd42) ||
        box(x,y,10'd62,10'd64,10'd32,10'd42) ||
        // C
        box(x,y,10'd68,10'd74,10'd30,10'd32) ||
        box(x,y,10'd68,10'd74,10'd42,10'd44) ||
        box(x,y,10'd66,10'd68,10'd32,10'd42) ||
        box(x,y,10'd74,10'd76,10'd32,10'd34) ||
        box(x,y,10'd74,10'd76,10'd40,10'd42) ||
        // K
        box(x,y,10'd78,10'd80,10'd30,10'd44) ||
        box(x,y,10'd86,10'd88,10'd30,10'd34) ||
        box(x,y,10'd86,10'd88,10'd40,10'd44) ||
        box(x,y,10'd80,10'd84,10'd36,10'd38) ||
        box(x,y,10'd84,10'd86,10'd34,10'd36) ||
        box(x,y,10'd84,10'd86,10'd38,10'd40)
        )?4'hF:4'h0):(4'h0);
    green <= video_on?((
        // X
        box(x,y,10'd30,10'd32,10'd30,10'd34) ||
        box(x,y,10'd38,10'd40,10'd30,10'd34) ||
        box(x,y,10'd32,10'd34,10'd34,10'd36) ||
        box(x,y,10'd36,10'd38,10'd34,10'd36) ||
        box(x,y,10'd34,10'd36,10'd36,10'd38) ||
        box(x,y,10'd32,10'd34,10'd38,10'd40) ||
        box(x,y,10'd36,10'd38,10'd38,10'd40) ||
        box(x,y,10'd30,10'd32,10'd40,10'd44) ||
        box(x,y,10'd38,10'd40,10'd40,10'd44) ||
        // L
        box(x,y,10'd42,10'd44,10'd30,10'd44) ||
        box(x,y,10'd44,10'd52,10'd42,10'd44) ||
        // O
        box(x,y,10'd56,10'd62,10'd30,10'd32) ||
        box(x,y,10'd56,10'd68,10'd42,10'd44) ||
        box(x,y,10'd54,10'd56,10'd32,10'd42) ||
        box(x,y,10'd62,10'd64,10'd32,10'd42) ||
        // C
        box(x,y,10'd68,10'd74,10'd30,10'd32) ||
        box(x,y,10'd68,10'd74,10'd42,10'd44) ||
        box(x,y,10'd66,10'd68,10'd32,10'd42) ||
        box(x,y,10'd74,10'd76,10'd32,10'd34) ||
        box(x,y,10'd74,10'd76,10'd40,10'd42) ||
        // K
        box(x,y,10'd78,10'd80,10'd30,10'd44) ||
        box(x,y,10'd86,10'd88,10'd30,10'd34) ||
        box(x,y,10'd86,10'd88,10'd40,10'd44) ||
        box(x,y,10'd80,10'd84,10'd36,10'd38) ||
        box(x,y,10'd84,10'd86,10'd34,10'd36) ||
        box(x,y,10'd84,10'd86,10'd38,10'd40)
        )?4'hF:4'h0):(4'h0);
    blue <= video_on?((
        // X
        box(x,y,10'd30,10'd32,10'd30,10'd34) ||
        box(x,y,10'd38,10'd40,10'd30,10'd34) ||
        box(x,y,10'd32,10'd34,10'd34,10'd36) ||
        box(x,y,10'd36,10'd38,10'd34,10'd36) ||
        box(x,y,10'd34,10'd36,10'd36,10'd38) ||
        box(x,y,10'd32,10'd34,10'd38,10'd40) ||
        box(x,y,10'd36,10'd38,10'd38,10'd40) ||
        box(x,y,10'd30,10'd32,10'd40,10'd44) ||
        box(x,y,10'd38,10'd40,10'd40,10'd44) ||
        // L
        box(x,y,10'd42,10'd44,10'd30,10'd44) ||
        box(x,y,10'd44,10'd52,10'd42,10'd44) ||
        // O
        box(x,y,10'd56,10'd62,10'd30,10'd32) ||
        box(x,y,10'd56,10'd68,10'd42,10'd44) ||
        box(x,y,10'd54,10'd56,10'd32,10'd42) ||
        box(x,y,10'd62,10'd64,10'd32,10'd42) ||
        // C
        box(x,y,10'd68,10'd74,10'd30,10'd32) ||
        box(x,y,10'd68,10'd74,10'd42,10'd44) ||
        box(x,y,10'd66,10'd68,10'd32,10'd42) ||
        box(x,y,10'd74,10'd76,10'd32,10'd34) ||
        box(x,y,10'd74,10'd76,10'd40,10'd42) ||
        // K
        box(x,y,10'd78,10'd80,10'd30,10'd44) ||
        box(x,y,10'd86,10'd88,10'd30,10'd34) ||
        box(x,y,10'd86,10'd88,10'd40,10'd44) ||
        box(x,y,10'd80,10'd84,10'd36,10'd38) ||
        box(x,y,10'd84,10'd86,10'd34,10'd36) ||
        box(x,y,10'd84,10'd86,10'd38,10'd40)
        )?4'hF:4'h0):(4'h0);   
    end
    

endmodule*/

/*module pixel_gen(
input clk_d,
input [9:0] pixel_x,
input [9:0] pixel_y,
input video_on,
output reg [3:0] red = 0,
output reg [3:0] green = 0,
output reg [3:0] blue = 0
);
always @(posedge clk_d) begin
          red <= video_on ? ((pixel_x<=160 & pixel_x>=80 & pixel_y >=0 & pixel_y <=60) || (pixel_x<=320 & pixel_x>=240 & pixel_y >=0 & pixel_y <=60)|| (pixel_x<=480 & pixel_x>=400 & pixel_y >=0 & pixel_y <=60) || (pixel_x<=640 & pixel_x>=560 & pixel_y >=0 & pixel_y <=60) ||
                             (pixel_x<=80 & pixel_x>=0 & pixel_y >=60 & pixel_y <=120) || (pixel_x<=240 & pixel_x>=160 & pixel_y >=60 & pixel_y <=120)|| (pixel_x<=400 & pixel_x>=320 & pixel_y >=60 & pixel_y <=120) || (pixel_x<=560 & pixel_x>=480 & pixel_y >=60 & pixel_y <=120) ||
                             (pixel_x<=160 & pixel_x>=80 & pixel_y >=120 & pixel_y <=180) || (pixel_x<=320 & pixel_x>=240 & pixel_y >=120 & pixel_y <=180)|| (pixel_x<=480 & pixel_x>=400 & pixel_y >=120 & pixel_y <=180) || (pixel_x<=640 & pixel_x>=560 & pixel_y >=120 & pixel_y <=180) ||
                             (pixel_x<=80 & pixel_x>=0 & pixel_y >=180 & pixel_y <=240) || (pixel_x<=240 & pixel_x>=160 & pixel_y >=180 & pixel_y <=240)|| (pixel_x<=400 & pixel_x>=320 & pixel_y >=180 & pixel_y <=240) || (pixel_x<=560 & pixel_x>=480 & pixel_y >=180 & pixel_y <=240)||
                             (pixel_x<=160 & pixel_x>=80 & pixel_y >=240 & pixel_y <=300) || (pixel_x<=320 & pixel_x>=240 & pixel_y >=240 & pixel_y <=300)|| (pixel_x<=480 & pixel_x>=400 & pixel_y >=240 & pixel_y <=300) || (pixel_x<=640 & pixel_x>=560 & pixel_y >=240 & pixel_y <=300) ||
                             (pixel_x<=80 & pixel_x>=0 & pixel_y >=300 & pixel_y <=360) || (pixel_x<=240 & pixel_x>=160 & pixel_y >=300 & pixel_y <=360)|| (pixel_x<=400 & pixel_x>=320 & pixel_y >=300 & pixel_y <=360) || (pixel_x<=560 & pixel_x>=480 & pixel_y >=300 & pixel_y <=360) ||
                             (pixel_x<=160 & pixel_x>=80 & pixel_y >=360 & pixel_y <=420) || (pixel_x<=320 & pixel_x>=240 & pixel_y >=360 & pixel_y <=420)|| (pixel_x<=480 & pixel_x>=400 & pixel_y >=360 & pixel_y <=420) || (pixel_x<=640 & pixel_x>=560 & pixel_y >=360 & pixel_y <=420) ||
                             (pixel_x<=80 & pixel_x>=0 & pixel_y >=420 & pixel_y <=480) || (pixel_x<=240 & pixel_x>=160 &pixel_y >=420 & pixel_y <=480)|| (pixel_x<=400 & pixel_x>=320 & pixel_y >=420 & pixel_y <=480) || (pixel_x<=560 & pixel_x>=480 & pixel_y >=420 & pixel_y <=480)
                             ? 4'h0:4'hF):(4'h0);
          green <= video_on ?((pixel_x<=160 & pixel_x>=80 & pixel_y >=0 & pixel_y <=60) || (pixel_x<=320 & pixel_x>=240 & pixel_y >=0 & pixel_y <=60)|| (pixel_x<=480 & pixel_x>=400 & pixel_y >=0 & pixel_y <=60) || (pixel_x<=640 & pixel_x>=560 & pixel_y >=0 & pixel_y <=60) ||
                             (pixel_x<=80 & pixel_x>=0 & pixel_y >=60 & pixel_y <=120) || (pixel_x<=240 & pixel_x>=160 & pixel_y >=60 & pixel_y <=120)|| (pixel_x<=400 & pixel_x>=320 & pixel_y >=60 & pixel_y <=120) || (pixel_x<=560 & pixel_x>=480 & pixel_y >=60 & pixel_y <=120) ||
                             (pixel_x<=160 & pixel_x>=80 & pixel_y >=120 & pixel_y <=180) || (pixel_x<=320 & pixel_x>=240 & pixel_y >=120 & pixel_y <=180)|| (pixel_x<=480 & pixel_x>=400 & pixel_y >=120 & pixel_y <=180) || (pixel_x<=640 & pixel_x>=560 & pixel_y >=120 & pixel_y <=180) ||
                             (pixel_x<=80 & pixel_x>=0 & pixel_y >=180 & pixel_y <=240) || (pixel_x<=240 & pixel_x>=160 & pixel_y >=180 & pixel_y <=240)|| (pixel_x<=400 & pixel_x>=320 & pixel_y >=180 & pixel_y <=240) || (pixel_x<=560 & pixel_x>=480 & pixel_y >=180 & pixel_y <=240)||
                             (pixel_x<=160 & pixel_x>=80 & pixel_y >=240 & pixel_y <=300) || (pixel_x<=320 & pixel_x>=240 & pixel_y >=240 & pixel_y <=300)|| (pixel_x<=480 & pixel_x>=400 & pixel_y >=240 & pixel_y <=300) || (pixel_x<=640 & pixel_x>=560 & pixel_y >=240 & pixel_y <=300) ||
                             (pixel_x<=80 & pixel_x>=0 & pixel_y >=300 & pixel_y <=360) || (pixel_x<=240 & pixel_x>=160 & pixel_y >=300 & pixel_y <=360)|| (pixel_x<=400 & pixel_x>=320 & pixel_y >=300 & pixel_y <=360) || (pixel_x<=560 & pixel_x>=480 & pixel_y >=300 & pixel_y <=360) ||
                             (pixel_x<=160 & pixel_x>=80 & pixel_y >=360 & pixel_y <=420) || (pixel_x<=320 & pixel_x>=240 & pixel_y >=360 & pixel_y <=420)|| (pixel_x<=480 & pixel_x>=400 & pixel_y >=360 & pixel_y <=420) || (pixel_x<=640 & pixel_x>=560 & pixel_y >=360 & pixel_y <=420) ||
                             (pixel_x<=80 & pixel_x>=0 & pixel_y >=420 & pixel_y <=480) || (pixel_x<=240 & pixel_x>=160 &pixel_y >=420 & pixel_y <=480)|| (pixel_x<=400 & pixel_x>=320 & pixel_y >=420 & pixel_y <=480) || (pixel_x<=560 & pixel_x>=480 & pixel_y >=420 & pixel_y <=480)
                             ? 4'h0:4'hF):(4'h0);
          blue <= video_on ? ((pixel_x<=160 & pixel_x>=80 & pixel_y >=0 & pixel_y <=60) || (pixel_x<=320 & pixel_x>=240 & pixel_y >=0 & pixel_y <=60)|| (pixel_x<=480 & pixel_x>=400 & pixel_y >=0 & pixel_y <=60) || (pixel_x<=640 & pixel_x>=560 & pixel_y >=0 & pixel_y <=60) ||
                             (pixel_x<=80 & pixel_x>=0 & pixel_y >=60 & pixel_y <=120) || (pixel_x<=240 & pixel_x>=160 & pixel_y >=60 & pixel_y <=120)|| (pixel_x<=400 & pixel_x>=320 & pixel_y >=60 & pixel_y <=120) || (pixel_x<=560 & pixel_x>=480 & pixel_y >=60 & pixel_y <=120) ||
                             (pixel_x<=160 & pixel_x>=80 & pixel_y >=120 & pixel_y <=180) || (pixel_x<=320 & pixel_x>=240 & pixel_y >=120 & pixel_y <=180)|| (pixel_x<=480 & pixel_x>=400 & pixel_y >=120 & pixel_y <=180) || (pixel_x<=640 & pixel_x>=560 & pixel_y >=120 & pixel_y <=180) ||
                             (pixel_x<=80 & pixel_x>=0 & pixel_y >=180 & pixel_y <=240) || (pixel_x<=240 & pixel_x>=160 & pixel_y >=180 & pixel_y <=240)|| (pixel_x<=400 & pixel_x>=320 & pixel_y >=180 & pixel_y <=240) || (pixel_x<=560 & pixel_x>=480 & pixel_y >=180 & pixel_y <=240)||
                             (pixel_x<=160 & pixel_x>=80 & pixel_y >=240 & pixel_y <=300) || (pixel_x<=320 & pixel_x>=240 & pixel_y >=240 & pixel_y <=300)|| (pixel_x<=480 & pixel_x>=400 & pixel_y >=240 & pixel_y <=300) || (pixel_x<=640 & pixel_x>=560 & pixel_y >=240 & pixel_y <=300) ||
                             (pixel_x<=80 & pixel_x>=0 & pixel_y >=300 & pixel_y <=360) || (pixel_x<=240 & pixel_x>=160 & pixel_y >=300 & pixel_y <=360)|| (pixel_x<=400 & pixel_x>=320 & pixel_y >=300 & pixel_y <=360) || (pixel_x<=560 & pixel_x>=480 & pixel_y >=300 & pixel_y <=360) ||
                             (pixel_x<=160 & pixel_x>=80 & pixel_y >=360 & pixel_y <=420) || (pixel_x<=320 & pixel_x>=240 & pixel_y >=360 & pixel_y <=420)|| (pixel_x<=480 & pixel_x>=400 & pixel_y >=360 & pixel_y <=420) || (pixel_x<=640 & pixel_x>=560 & pixel_y >=360 & pixel_y <=420) ||
                             (pixel_x<=80 & pixel_x>=0 & pixel_y >=420 & pixel_y <=480) || (pixel_x<=240 & pixel_x>=160 &pixel_y >=420 & pixel_y <=480)|| (pixel_x<=400 & pixel_x>=320 & pixel_y >=420 & pixel_y <=480) || (pixel_x<=560 & pixel_x>=480 & pixel_y >=420 & pixel_y <=480)
                             ? 4'h0:4'hF):(4'h0);
//          end
        end
endmodule	*/


input clk_d,
input [9:0] pixel_x,
input [9:0] pixel_y,
input video_on,
input [1:0] pos,
output reg [3:0] red=0,
output reg [3:0] green=0,
output reg [3:0] blue=0
);
reg on;
reg hor;
reg vert;
reg greater;

initial
    begin 
    hor=1;
    greater=0;
    end
    
always @(posedge clk_d) 
begin
    if (pixel_y==0)
        vert=0;
    else if (pixel_y==120)
        vert=1;
    else if (pixel_y==240)
        vert=0;
    else if (pixel_y==360)
        vert=1;
    else if (pixel_y==480)
        vert=0;
    //else if (pixel_y==300)
        //vert=1;    
    //else if (pixel_y==360)
        //vert=0;
    //else if (pixel_y==420)
        //vert=1;
end
always @(posedge clk_d) 
begin
        if (pixel_x>639)
            greater=1;
        else
            greater=0;
            if (pixel_x==0)
        hor=0;
    else if (pixel_x==160)
        hor=1;
    else if (pixel_x==320)
        hor=0;
    else if (pixel_x==480)
        hor=1;
    else if (pixel_x==640)
        hor=0;
    //else if (pixel_x==300)
        //hor=1;    
    //else if (pixel_x==360)
        //hor=0;
    //else if (pixel_x==420)
        //hor=1;

end

always @(posedge clk_d) 
begin
    on=hor^vert;
    red <= video_on? (greater? (4'h0):(on? 4'h0:4'hF)): (4'h0);
    green <= video_on? (greater? (4'hF):(on? 4'h0:4'hF)): (4'h0);
    blue <= video_on? (greater? (4'h0):(on? 4'h0:4'hF)): (4'h0);
end

reg [15:0] playerposition = 16'b0000000010000000;

/*always @(posedge clk_d)
begin
    if(pos == 2'b01)
    begin
    
    end
    else if (pos == 2'b10)
    begin
        
    end
end*/

endmodule




