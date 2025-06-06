`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2025 22:22:27
// Design Name: 
// Module Name: mux2to1_tb
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


module tb_mux2to1;
    reg a, b;
    reg sel;
    wire y;

    mux2to1 uut (.a(a), .b(b), .sel(sel), .y(y));

    initial begin
        $display("sel a b | y");
        $monitor("%b   %b %b | %b", sel, a, b, y);

        a = 0; b = 1;
        sel = 0; #10;
        sel = 1; #10;

        a = 1; b = 0;
        sel = 0; #10;
        sel = 1; #10;

        $finish;
    end
endmodule
