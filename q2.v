module full_adder (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    wire s1, c1, c2;

    xor (s1, a, b);
    and (c1, a, b);
    xor (sum, s1, cin);
    and (c2, s1, cin);
    or (cout, c1, c2);
endmodule

module signed_adder_4bit (
    input [3:0] A,
    input [3:0] B,
    output [3:0] SUM,
    output overflow
);
    wire [3:0] carry;

    full_adder fa0 (A[0], B[0], 1'b0, SUM[0], carry[0]);
    full_adder fa1 (A[1], B[1], carry[0], SUM[1], carry[1]);
    full_adder fa2 (A[2], B[2], carry[1], SUM[2], carry[2]);
    full_adder fa3 (A[3], B[3], carry[2], SUM[3], carry[3]);

    xor (overflow, carry[3], carry[2]);

endmodule
