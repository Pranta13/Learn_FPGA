`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2026 01:01:40 PM
// Design Name: 
// Module Name: full_adder_tb
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

module full_adder_tb;

reg A;
reg B;
reg Cin;

wire Sum;
wire Cout;

// Instantiate the Full Adder
full_adder uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin

    // Test Case 1
    A = 0; B = 0; Cin = 0;
    #10;

    // Test Case 2
    A = 0; B = 0; Cin = 1;
    #10;

    // Test Case 3
    A = 0; B = 1; Cin = 0;
    #10;

    // Test Case 4
    A = 0; B = 1; Cin = 1;
    #10;

    // Test Case 5
    A = 1; B = 0; Cin = 0;
    #10;

    // Test Case 6
    A = 1; B = 0; Cin = 1;
    #10;

    // Test Case 7
    A = 1; B = 1; Cin = 0;
    #10;

    // Test Case 8
    A = 1; B = 1; Cin = 1;
    #10;

    $finish;

end

endmodule
