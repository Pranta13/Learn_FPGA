`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2026 01:15:32 PM
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor(
    input A,
    input B,
    input Bin,
    output Diff,
    output Bout
    );

assign Diff = A ^ B ^ Bin;

assign Bout = (~A & B) | (~A & Bin) | (B & Bin);

endmodule
