`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2025 22:09:01
// Design Name: 
// Module Name: 4to1mux_tb
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


module tb_mux4to1;
    reg a, b, c, d;
    reg [1:0] sel;
    wire y;

    mux4to1 uut (
        .a(a), .b(b), .c(c), .d(d),
        .sel(sel), .y(y)
    );

    initial begin
        $display("sel a b c d | y");
        $monitor("%b %b %b %b %b | %b", sel, a, b, c, d, y);

        a = 0; b = 1; c = 0; d = 1;

        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;

        $finish;
    end
endmodule
