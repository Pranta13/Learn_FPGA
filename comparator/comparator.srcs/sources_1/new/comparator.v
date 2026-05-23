`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2026 11:02:05 PM
// Design Name: 
// Module Name: comparator
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


module comparator_2bit(
    input  [1:0] A,
    input  [1:0] B,
    output GT,   // Greater Than
    output LT,   // Less Than
    output EQ    // Equal
);

assign GT = (A > B);
assign LT = (A < B);
assign EQ = (A == B);

endmodule

