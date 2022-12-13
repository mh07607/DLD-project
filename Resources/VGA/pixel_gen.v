`timescale 1ns / 1ps


module pixel_gen( 
input clk_d,
input [9:0] pixel_x,
input [9:0] pixel_y,
input video_on,
input [1:0] p1,p2,p3,p4,p5,p6,p7,p8,p9, p10, p11, p12, p13, p14, p15, p16,
input [3:0] select_position,
output reg [3:0] red=0,
output reg [3:0] green=0,
output reg [3:0] blue=0
);


always @(posedge clk_d)
begin
if( (pixel_y <=120)) begin
if((pixel_x<=160) && (pixel_x>=0))
begin
    if(select_position == 4'b0000) begin
        red <= video_on ? 4'h0 : 4'h0;
        blue <= video_on ? 4'hF: 4'h0;
        green <= video_on ? 4'h0: 4'h0;
    end
    else if(p1 == 2'b01)
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end 
    
    else if(p1 == 2'b10)
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end 
    else
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'hF: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end
 end
 
 else if((pixel_x<=320) && (pixel_x>=161))
begin
    if(select_position == 4'b0001) begin
        red <= video_on ? 4'h0 : 4'h0;
        blue <= video_on ? 4'hF: 4'h0;
        green <= video_on ? 4'h0: 4'h0;
    end
    else if(p2 == 2'b01)
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end 
    
    else if(p2 == 2'b10)
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end 
    else
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end
 end
 
  else if((pixel_x<=480) && (pixel_x>=321))
begin
    if(select_position == 4'b0010) begin
        red <= video_on ? 4'h0 : 4'h0;
        blue <= video_on ? 4'hF: 4'h0;
        green <= video_on ? 4'h0: 4'h0;
    end
    else if(p3 == 2'b01)
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end 
    
    else if(p3 == 2'b10)
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end 
    else
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'hF: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end 
 end
 
   else if((pixel_x<=639) && (pixel_x>=481))
begin
    if(select_position == 4'b0011) begin
        red <= video_on ? 4'h0 : 4'h0;
        blue <= video_on ? 4'hF: 4'h0;
        green <= video_on ? 4'h0: 4'h0;
    end
    else if(p4 == 2'b01)
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end 
    
    else if(p4 == 2'b10)
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end 
    else
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end
 end
end
else if((pixel_x<=160) && (pixel_x>=0) && (pixel_y >=121) && (pixel_y <=240))
begin
    if(select_position == 4'b0100) begin
        red <= video_on ? 4'h0 : 4'h0;
        blue <= video_on ? 4'hF: 4'h0;
        green <= video_on ? 4'h0: 4'h0;
    end
    else if(p5 == 2'b01)
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end 
    
    else if(p5 == 2'b10)
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end 
    else
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end
 end
 
 else if((pixel_x<=320) && (pixel_x>=161) && (pixel_y >= 121) && (pixel_y <=240))
begin
    if(select_position == 4'b0101) begin
        red <= video_on ? 4'h0 : 4'h0;
        blue <= video_on ? 4'hF: 4'h0;
        green <= video_on ? 4'h0: 4'h0;
    end
    else if(p6 == 2'b01)
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end 
    
    else if(p6 == 2'b10)
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end 
    else
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'hF: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end
 end
 
  else if((pixel_x<=480) && (pixel_x>=321) && (pixel_y >= 121) && (pixel_y <=240))
begin
    if(select_position == 4'b0110) begin
        red <= video_on ? 4'h0 : 4'h0;
        blue <= video_on ? 4'hF: 4'h0;
        green <= video_on ? 4'h0: 4'h0;
    end
    else if(p7 == 2'b01)
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end 
    
    else if(p7 == 2'b10)
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end 
    else
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end 
 end
 
   else if((pixel_x<=639) && (pixel_x>=481) && (pixel_y >=121) && (pixel_y <=240))
begin
    if(select_position == 4'b0111) begin
        red <= video_on ? 4'h0 : 4'h0;
        blue <= video_on ? 4'hF: 4'h0;
        green <= video_on ? 4'h0: 4'h0;
    end
    else if(p8 == 2'b01)
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end 
    
    else if(p8 == 2'b10)
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end 
    else
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'hF: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end
 end
 
 if((pixel_x<=160) && (pixel_x>=0) && (pixel_y >=241) && (pixel_y <=360))
begin
    if(select_position == 4'b1000) begin
        red <= video_on ? 4'h0 : 4'h0;
        blue <= video_on ? 4'hF: 4'h0;
        green <= video_on ? 4'h0: 4'h0;
    end
    else if(p9 == 2'b01)
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end 
    
    else if(p9 == 2'b10)
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end 
    else
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'hF: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end
 end
 
 else if((pixel_x<=320) && (pixel_x>=161) && (pixel_y >=241) && (pixel_y <=360))
begin
    if(select_position == 4'b1001) begin
        red <= video_on ? 4'h0 : 4'h0;
        blue <= video_on ? 4'hF: 4'h0;
        green <= video_on ? 4'h0: 4'h0;
    end
    else if(p10 == 2'b01)
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end 
    
    else if(p10 == 2'b10)
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end 
    else
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end
 end
 
  else if((pixel_x<=480) && (pixel_x>=321) && (pixel_y >=241) && (pixel_y <=360))
begin
    if(select_position == 4'b1010) begin
        red <= video_on ? 4'h0 : 4'h0;
        blue <= video_on ? 4'hF: 4'h0;
        green <= video_on ? 4'h0: 4'h0;
    end
    else if(p11 == 2'b01)
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end 
    
    else if(p11 == 2'b10)
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end 
    else
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'hF: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end 
 end
 
   else if((pixel_x<=639) && (pixel_x>=481) && (pixel_y >=241) && (pixel_y <=360))
begin
    if(select_position == 4'b1011) begin
        red <= video_on ? 4'h0 : 4'h0;
        blue <= video_on ? 4'hF: 4'h0;
        green <= video_on ? 4'h0: 4'h0;
    end
    else if(p12 == 2'b01)
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end 
    
    else if(p12 == 2'b10)
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end 
    else
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end
 end
 
 if((pixel_x<=160) && (pixel_x>=0) && (pixel_y >=361) && (pixel_y <=479))
begin
    if(select_position == 4'b1100) begin
        red <= video_on ? 4'h0 : 4'h0;
        blue <= video_on ? 4'hF: 4'h0;
        green <= video_on ? 4'h0: 4'h0;
    end
    else if(p13 == 2'b01)
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end 
    
    else if(p13 == 2'b10)
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end 
    else
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end
 end
 
 else if((pixel_x<=320) && (pixel_x>=161) && (pixel_y >= 361) && (pixel_y <=479))
begin
    if(select_position == 4'b1101) begin
        red <= video_on ? 4'h0 : 4'h0;
        blue <= video_on ? 4'hF: 4'h0;
        green <= video_on ? 4'h0: 4'h0;
    end
    else if(p14 == 2'b01)
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end 
    
    else if(p14 == 2'b10)
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end 
    else
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'hF: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end
 end
 
  else if((pixel_x<=480) && (pixel_x>=321) && (pixel_y >= 361) && (pixel_y <=479))
begin
    if(select_position == 4'b1110) begin
        red <= video_on ? 4'h0 : 4'h0;
        blue <= video_on ? 4'hF: 4'h0;
        green <= video_on ? 4'h0: 4'h0;
    end
    else if(p15 == 2'b01)
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end 
    
    else if(p15 == 2'b10)
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end 
    else
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end 
 end
 
   else if((pixel_x<=639) && (pixel_x>=481) && (pixel_y >=361) && (pixel_y <=479))
begin
    if(select_position == 4'b1111) begin
        red <= video_on ? 4'h0 : 4'h0;
        blue <= video_on ? 4'hF: 4'h0;
        green <= video_on ? 4'h0: 4'h0;
    end
    else if(p16 == 2'b01)
    begin
       red <= video_on ? 4'h0 : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end 
    
    else if(p16 == 2'b10)
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'h0: 4'h0;
       green <= video_on ? 4'h0: 4'h0;
    end 
    else
    begin
       red <= video_on ? 4'hF : 4'h0;
       blue <= video_on ? 4'hF: 4'h0;
       green <= video_on ? 4'hF: 4'h0;
    end
 end
    
    
end


endmodule





