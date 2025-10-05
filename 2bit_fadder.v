// 2-bit Full Adder
module fadder_2bit (
    input  [1:0] A,    // 2-bit input A
    input  [1:0] B,    // 2-bit input B
    input        Cin,  // Carry input
    output [1:0] Sum,  // 2-bit Sum output
    output       Cout  // Carry output
);
    wire c1;  // internal carry

    // First bit addition
    assign {c1, Sum[0]} = A[0] + B[0] + Cin;

    // Second bit addition
    assign {Cout, Sum[1]} = A[1] + B[1] + c1;

endmodule

