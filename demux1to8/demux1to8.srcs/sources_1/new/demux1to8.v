`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2026 10:55:34 AM
// Design Name: 
// Module Name: demux1to8
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

module demux1to8(
    input D,             // Data input
    input [2:0] S,       // Select lines
    output reg [7:0] Y   // Outputs
);

always @(*) begin
    Y = 8'b00000000;

    case(S)
        3'b000: Y[0] = D;
        3'b001: Y[1] = D;
        3'b010: Y[2] = D;
        3'b011: Y[3] = D;
        3'b100: Y[4] = D;
        3'b101: Y[5] = D;
        3'b110: Y[6] = D;
        3'b111: Y[7] = D;
        default: Y = 8'b00000000;
    endcase
end

endmodule
