`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2026 11:22:30 PM
// Design Name: 
// Module Name: decoder
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


module decoder_2to4(
    input A0,
    input A1,
    output Y0,
    output Y1,
    output Y2,
    output Y3
);

assign Y0 = ~A1 & ~A0;
assign Y1 = ~A1 &  A0;
assign Y2 =  A1 & ~A0;
assign Y3 =  A1 &  A0;

endmodule
