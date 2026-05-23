`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2026 11:04:58 PM
// Design Name: 
// Module Name: comparator_tb
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

module comparator_2bit_tb;

reg [1:0] A;
reg [1:0] B;

wire GT;
wire LT;
wire EQ;

comparator_2bit uut (
    .A(A),
    .B(B),
    .GT(GT),
    .LT(LT),
    .EQ(EQ)
);

initial begin

    // Test Case 1
    A = 2'b00; B = 2'b00;
    #10;

    // Test Case 2
    A = 2'b01; B = 2'b10;
    #10;

    // Test Case 3
    A = 2'b11; B = 2'b01;
    #10;

    // Test Case 4
    A = 2'b10; B = 2'b10;
    #10;

    $finish;

end

endmodule
