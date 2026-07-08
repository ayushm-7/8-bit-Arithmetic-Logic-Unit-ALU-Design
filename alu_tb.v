`timescale 1ns / 1ps

module alu_8bit_tb;

reg [7:0] A;
reg [7:0] B;
reg [2:0] opcode;

wire [7:0] result;
wire carry;

alu_8bit uut (
    .A(A),
    .B(B),
    .opcode(opcode),
    .result(result),
    .carry(carry)
);

initial
begin

    // Addition
    A = 8'd25;
    B = 8'd15;
    opcode = 3'b000;
    #10;

    // Subtraction
    A = 8'd80;
    B = 8'd30;
    opcode = 3'b001;
    #10;

    // AND
    A = 8'b11001100;
    B = 8'b10101010;
    opcode = 3'b010;
    #10;

    // OR
    opcode = 3'b011;
    #10;

    // XOR
    opcode = 3'b100;
    #10;

    // NOT
    opcode = 3'b101;
    #10;

    // Increment
    A = 8'd99;
    opcode = 3'b110;
    #10;

    // Left Shift
    A = 8'b00110101;
    opcode = 3'b111;
    #10;

    $finish;

end

endmodule
