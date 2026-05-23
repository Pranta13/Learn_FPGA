`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2026 11:24:25 PM
// Design Name: 
// Module Name: decoder_tb
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


`timescale 1ns / 1ps

module decoder_2to4_tb;

reg A0, A1;
wire Y0, Y1, Y2, Y3;

decoder_2to4 uut (
    .A0(A0),
    .A1(A1),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin

    // Test 1
    A1 = 0; A0 = 0;
    #10;

    // Test 2
    A1 = 0; A0 = 1;
    #10;

    // Test 3
    A1 = 1; A0 = 0;
    #10;

    // Test 4
    A1 = 1; A0 = 1;
    #10;

    $finish;

end

endmodule
