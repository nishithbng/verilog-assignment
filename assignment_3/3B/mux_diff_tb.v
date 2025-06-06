`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2025 13:00:27
// Design Name: 
// Module Name: mux_dff_tb
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

module tb_mux_dff_loop;
    reg clk;
    reg i1;
    reg s;
    wire y;

    // Instantiate the design
    mux_dff_loop uut (
        .clk(clk),
        .i1(i1),
        .s(s),
        .y(y)
    );

    // Clock generator
    always #5 clk = ~clk;

    initial begin
        // Initialize
        clk = 0;
        i1 = 0;
        s = 0;

        // Monitor values
        $monitor("Time=%0t | clk=%b s=%b i1=%b | y=%b", $time, clk, s, i1, y);

        // Test sequence
        #10 s = 1; i1 = 1;
        #10 s = 0;
        #10 s = 1; i1 = 0;
        #10 s = 0;
        #10 s = 1; i1 = 1;
        #10 s = 0;
        #20;

        $finish;
    end
endmodule
