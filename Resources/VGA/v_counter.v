`timescale 1ns / 1ps
module v_counter(clk,enable_v,v_count);
    input clk;
    input enable_v;
    output [9:0] v_count;
    reg [9:0] v_count;
    initial begin
        v_count = 0;
    end
    always @ (posedge clk)
    begin
        if (enable_v & (v_count < 524))
        begin 
            v_count <= v_count + 1;    
        end
        else if (enable_v)
        begin
            v_count <= 0;        
        end
    end
endmodule
