`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2025 22:36:23
// Design Name: 
// Module Name: counter_tb
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


module tb_up_down_counter;
    reg clk, reset, up_down;
    wire [3:0] count;

    up_down_counter uut (.clk(clk), .reset(reset), .up_down(up_down), .count(count));

    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Clock with 10 time units period
    end

    initial begin
        $display("Time rst up_down | count");
        $monitor("%g    %b     %b     | %b", $time, reset, up_down, count);

        reset = 1; up_down = 1; #10;
        reset = 0;

        // Count up
        #50;

        // Count down
        up_down = 0;
        #50;

        $finish;
    end
endmodule
