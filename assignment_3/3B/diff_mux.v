`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2025 12:59:14
// Design Name: 
// Module Name: mux_dff
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


module mux_dff_loop (
    input wire clk,
    input wire i1,
    input wire s,
    output wire y
);
    wire dff_out;
    
    // MUX
    assign y = (s == 1'b0) ? dff_out : i1;

    // D Flip-Flop
    reg q;
    always @(posedge clk) begin
        q <= y;  // y is the mux output
    end

    assign dff_out = q;

endmodule
