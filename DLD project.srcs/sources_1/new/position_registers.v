`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2022 10:45:15 PM
// Design Name: 
// Module Name: position_registers
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


module position_registers(
      input clock, // clock of the game 
      input reset, // reset the game 
      input wrong_move, // disable writing when an illegal move is detected 
      input [15:0] PL1_en, // Computer enable signals 
      input [15:0] PL2_en, // Player enable signals 
      output reg[1:0] p1,p2,p3,p4,
      p5,p6,p7,p8,p9, p10, p11, p12, p13, p14, p15, p16// positions stored
      );
 // Position 1 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   p1 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    p1 <= p1;// keep previous position
   else if(PL1_en[0]==1'b1)
    p1 <= 2'b10; // store player1 data 
   else if (PL2_en[0]==1'b1)
    p1 <= 2'b01;// store player2 data 
   else 
    p1 <= p1;// keep previous position
  end 
 end 
 // Position 2 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   p2 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    p2 <= p2;// keep previous position
   else if(PL1_en[1]==1'b1)
    p2 <= 2'b10; // store computer data 
   else if (PL2_en[1]==1'b1)
    p2 <= 2'b01;// store player data 
   else 
    p2 <= p2;// keep previous position
  end 
 end 
// Position 3 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   p3 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    p3 <= p3;// keep previous position
   else if(PL1_en[2]==1'b1)
    p3 <= 2'b10; // store computer data 
   else if (PL2_en[2]==1'b1)
    p3 <= 2'b01;// store player data 
   else 
    p3 <= p3;// keep previous position
  end 
 end  
 // Position 4 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   p4 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    p4 <= p4;// keep previous position
   else if(PL1_en[3]==1'b1)
    p4 <= 2'b10; // store computer data 
   else if (PL2_en[3]==1'b1)
    p4 <= 2'b01;// store player data 
   else 
    p4 <= p4;// keep previous position
  end 
 end 
 // Position 5 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   p5 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    p5 <= p5;// keep previous position
   else if(PL1_en[4]==1'b1)
    p5 <= 2'b10; // store computer data 
   else if (PL2_en[4]==1'b1)
    p5 <= 2'b01;// store player data 
   else 
    p5 <= p5;// keep previous position
  end 
 end 
 // Position 6 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   p6 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    p6 <= p6;// keep previous position
   else if(PL1_en[5]==1'b1)
    p6 <= 2'b10; // store computer data 
   else if (PL2_en[5]==1'b1)
    p6 <= 2'b01;// store player data 
   else 
    p6 <= p6;// keep previous position
  end 
 end 
 // Position 7 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
  p7 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    p7 <= p7;// keep previous position
   else if(PL1_en[6]==1'b1)
    p7 <= 2'b10; // store computer data 
   else if (PL2_en[6]==1'b1)
    p7 <= 2'b01;// store player data 
   else 
    p7 <= p7;// keep previous position
  end 
 end 
 // Position 8 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   p8 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    p8 <= p8;// keep previous position
   else if(PL1_en[7]==1'b1)
    p8 <= 2'b10; // store computer data 
   else if (PL2_en[7]==1'b1)
    p8 <= 2'b01;// store player data 
   else 
    p8 <= p8;// keep previous position
  end 
 end 
 // Position 9 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   p9 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    p9 <= p9;// keep previous position
   else if(PL1_en[8]==1'b1)
    p9 <= 2'b10; // store computer data 
   else if (PL2_en[8]==1'b1)
    p9 <= 2'b01;// store player data 
   else 
    p9 <= p9;// keep previous position
  end 
 end 
 
 //position10
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   p10 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    p10 <= p10;// keep previous position
   else if(PL1_en[9]==1'b1)
    p10 <= 2'b10; // store computer data 
   else if (PL2_en[9]==1'b1)
    p10 <= 2'b01;// store player data 
   else 
    p10 <= p10;// keep previous position
  end 
 end 
 
 //position11
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   p11 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    p11 <= p10;// keep previous position
   else if(PL1_en[10]==1'b1)
    p11 <= 2'b10; // store computer data 
   else if (PL2_en[10]==1'b1)
    p11 <= 2'b01;// store player data 
   else 
    p11 <= p11;// keep previous position
  end 
 end  
 
  always @(posedge clock or posedge reset)
 begin
  if(reset) 
   p12 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    p12 <= p12;// keep previous position
   else if(PL1_en[11]==1'b1)
    p12 <= 2'b10; // store computer data 
   else if (PL2_en[11]==1'b1)
    p12 <= 2'b01;// store player data 
   else 
    p12 <= p12;// keep previous position
  end 
 end 
    
always @(posedge clock or posedge reset)
 begin
  if(reset) 
   p12 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    p12 <= p12;// keep previous position
   else if(PL1_en[11]==1'b1)
    p12 <= 2'b10; // store computer data 
   else if (PL2_en[11]==1'b1)
    p12 <= 2'b01;// store player data 
   else 
    p12 <= p12;// keep previous position
  end 
 end   
 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   p13 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    p13 <= p13;// keep previous position
   else if(PL1_en[12]==1'b1)
    p13 <= 2'b10; // store computer data 
   else if (PL2_en[12]==1'b1)
    p13 <= 2'b01;// store player data 
   else 
    p13 <= p13;// keep previous position
  end 
 end  
 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   p14 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    p14 <= p14;// keep previous position
   else if(PL1_en[13]==1'b1)
    p14 <= 2'b10; // store computer data 
   else if (PL2_en[13]==1'b1)
    p14 <= 2'b01;// store player data 
   else 
    p14 <= p14;// keep previous position
  end 
 end 
 
  always @(posedge clock or posedge reset)
 begin
  if(reset) 
   p15 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    p15 <= p15;// keep previous position
   else if(PL1_en[14]==1'b1)
    p15 <= 2'b10; // store computer data 
   else if (PL2_en[14]==1'b1)
    p15 <= 2'b01;// store player data 
   else 
    p15 <= p15;// keep previous position
  end 
 end   
 
  always @(posedge clock or posedge reset)
 begin
  if(reset) 
   p16 <= 2'b00;
  else begin
   if(wrong_move==1'b1)
    p16 <= p16;// keep previous position
   else if(PL1_en[15]==1'b1)
    p16 <= 2'b10; // store computer data 
   else if (PL2_en[15]==1'b1)
    p16 <= 2'b01;// store player data 
   else 
    p16 <= p16;// keep previous position
  end 
 end  
 
 
endmodule
