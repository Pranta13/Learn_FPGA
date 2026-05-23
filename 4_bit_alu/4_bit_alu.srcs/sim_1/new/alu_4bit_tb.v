`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2026 11:40:26 PM
// Design Name: 
// Module Name: alu_4bit_tb
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

module alu_4bit_tb;

reg [3:0] A;
reg [3:0] B;
reg [1:0] SEL;

wire [3:0] Y;
wire Carry;

alu_4bit uut (
    .A(A),
    .B(B),
    .SEL(SEL),
    .Y(Y),
    .Carry(Carry)
);

initial begin

    // Addition
    A = 4'b0101;
    B = 4'b0011;
    SEL = 2'b00;
    #10;

    // Subtraction
    A = 4'b1000;
    B = 4'b0010;
    SEL = 2'b01;
    #10;

    // AND
    A = 4'b1100;
    B = 4'b1010;
    SEL = 2'b10;
    #10;

    // OR
    A = 4'b1100;
    B = 4'b1010;
    SEL = 2'b11;
    #10;

    $finish;

end

endmodule
