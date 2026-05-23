`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2026 11:16:39 PM
// Design Name: 
// Module Name: encoder_tb
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

module encoder_4to2_tb;

reg D0, D1, D2, D3;
wire Y0, Y1;

encoder_4to2 uut (
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .D3(D3),
    .Y0(Y0),
    .Y1(Y1)
);

initial begin

    // Test 1
    D0=1; D1=0; D2=0; D3=0;
    #10;

    // Test 2
    D0=0; D1=1; D2=0; D3=0;
    #10;

    // Test 3
    D0=0; D1=0; D2=1; D3=0;
    #10;

    // Test 4
    D0=0; D1=0; D2=0; D3=1;
    #10;

    $finish;

end

endmodule
