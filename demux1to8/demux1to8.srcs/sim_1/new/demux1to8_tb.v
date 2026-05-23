`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2026 10:58:22 AM
// Design Name: 
// Module Name: demux1to8_tb
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

module demux1to8_tb;

reg D;
reg [2:0] S;
wire [7:0] Y;

// Instantiate DEMUX
demux1to8 uut (
    .D(D),
    .S(S),
    .Y(Y)
);

initial begin

    D = 1'b1;

    // Test all select combinations
    S = 3'b000; #10;
    S = 3'b001; #10;
    S = 3'b010; #10;
    S = 3'b011; #10;
    S = 3'b100; #10;
    S = 3'b101; #10;
    S = 3'b110; #10;
    S = 3'b111; #10;

    $finish;
end

endmodule
