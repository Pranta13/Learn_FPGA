`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2026 11:37:55 PM
// Design Name: 
// Module Name: alu_4bit
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

module alu_4bit(
    input  [3:0] A,
    input  [3:0] B,
    input  [1:0] SEL,
    output reg [3:0] Y,
    output reg Carry
);

always @(*) begin

    case(SEL)

        2'b00: begin
            {Carry, Y} = A + B;
        end

        2'b01: begin
            {Carry, Y} = A - B;
        end

        2'b10: begin
            Y = A & B;
            Carry = 0;
        end

        2'b11: begin
            Y = A | B;
            Carry = 0;
        end

        default: begin
            Y = 4'b0000;
            Carry = 0;
        end

    endcase

end

endmodule
