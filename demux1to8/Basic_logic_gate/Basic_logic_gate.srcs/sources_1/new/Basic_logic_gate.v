`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2026 01:05:12 AM
// Design Name: 
// Module Name: Basic_logic_gate
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



//  Switch Mapping:
//    SW[0] = Input A
//    SW[1] = Input B
//
//  LED Mapping:
//    LED[0] = AND   (A & B)
//    LED[1] = OR    (A | B)
//    LED[2] = NOT   (~A)
//    LED[3] = NAND  (~(A & B))
//    LED[4] = NOR   (~(A | B))
//    LED[5] = XOR   (A ^ B)
//    LED[6] = XNOR  (~(A ^ B))
//    LED[7..15] = OFF
// ============================================================


// ------------------------------------------------------------
//  1. AND Gate   Y = A & B
// ------------------------------------------------------------
module and_gate (
    input  wire A,
    input  wire B,
    output wire Y
);
    assign Y = A & B;
endmodule


// ------------------------------------------------------------
//  2. OR Gate    Y = A | B
// ------------------------------------------------------------
module or_gate (
    input  wire A,
    input  wire B,
    output wire Y
);
    assign Y = A | B;
endmodule


// ------------------------------------------------------------
//  3. NOT Gate   Y = ~A
// ------------------------------------------------------------
module not_gate (
    input  wire A,
    output wire Y
);
    assign Y = ~A;
endmodule


// ------------------------------------------------------------
//  4. NAND Gate  Y = ~(A & B)
// ------------------------------------------------------------
module nand_gate (
    input  wire A,
    input  wire B,
    output wire Y
);
    assign Y = ~(A & B);
endmodule


// ------------------------------------------------------------
//  5. NOR Gate   Y = ~(A | B)
// ------------------------------------------------------------
module nor_gate (
    input  wire A,
    input  wire B,
    output wire Y
);
    assign Y = ~(A | B);
endmodule


// ------------------------------------------------------------
//  6. XOR Gate   Y = A ^ B
// ------------------------------------------------------------
module xor_gate (
    input  wire A,
    input  wire B,
    output wire Y
);
    assign Y = A ^ B;
endmodule


// ------------------------------------------------------------
//  7. XNOR Gate  Y = ~(A ^ B)
// ------------------------------------------------------------
module xnor_gate (
    input  wire A,
    input  wire B,
    output wire Y
);
    assign Y = ~(A ^ B);
endmodule


