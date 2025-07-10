`include "q2.v"
module tb_signed_adder_4bit;

    reg signed [3:0] A, B;
    wire signed [3:0] SUM;
    wire signed overflow;

    signed_adder_4bit uut (
        .A(A),
        .B(B),
        .SUM(SUM),
        .overflow(overflow)
    );

    initial begin
        A = 4'b0010; // 2
        B = 4'b0011; // 3
        #10; 
        $display("A = %b, B = %b, SUM = %b, Overflow = %b", A, B, SUM, overflow);

        A = 4'b0110; // 6
        B = 4'b0101; // 5
        #10;
        $display("A = %b, B = %b, SUM = %b, Overflow = %b", A, B, SUM, overflow);

        A = 4'b1010; // -6
        B = 4'b1100; // -4
        #10;
        $display("A = %b, B = %b, SUM = %b, Overflow = %b", A, B, SUM, overflow);

        A = 4'b1101; // -5
        B = 4'b1011; // -3
        #10;
        $display("A = %b, B = %b, SUM = %b, Overflow = %b", A, B, SUM, overflow);

        $finish;
    end

    initial begin
        $dumpfile("q2.vcd");
        $dumpvars(0, tb_signed_adder_4bit);
    end

endmodule
