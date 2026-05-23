`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2026 12:55:32 PM
// Design Name: 
// Module Name: adder_tb
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

module adder_tb;

reg [3:0] A;
reg [3:0] B;
reg Cin;

wire [3:0] Sum;
wire Cout;

ripple_carry_adder_4bit uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin

    A = 4'b0001; B = 4'b0010; Cin = 0; #10;
    A = 4'b0101; B = 4'b0011; Cin = 0; #10;
    A = 4'b1111; B = 4'b0001; Cin = 0; #10;
    A = 4'b1010; B = 4'b0101; Cin = 1; #10;

    $finish;
end

endmodule
