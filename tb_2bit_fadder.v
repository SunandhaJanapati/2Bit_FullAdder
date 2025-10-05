`timescale 1ns/1ps
module tb_2bit_fadder;

    reg  [1:0] A, B;
    reg        Cin;
    wire [1:0] Sum;
    wire       Cout;

    // Instantiate the Unit Under Test (UUT)
    fadder_2bit uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        // Display output whenever inputs or outputs change
        $monitor("Time=%0t | A=%b | B=%b | Cin=%b | Sum=%b | Cout=%b",
                 $time, A, B, Cin, Sum, Cout);

        // Apply test cases
        A=0;  B=0;  Cin=0;
        #10 A=0;  B=0;  Cin=1;
        #10 A=0;  B=1;  Cin=0;
        #10 A=0;  B=1;  Cin=1;
        #10 A=1;  B=0;  Cin=0;
        #10 A=1;  B=0;  Cin=1;
        #10 A=1;  B=1;  Cin=0;
        #10 A=1;  B=1;  Cin=1;
        #10 A=2'b10; B=2'b01; Cin=1;
        #10 A=2'b11; B=2'b11; Cin=1;
        #10 $finish;
    end

endmodule

