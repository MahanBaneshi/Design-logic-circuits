`include "q3.v"

module tb_ALU;
    reg signed [5:0] A;
    reg signed [5:0] B;
    reg [1:0] Operator;
    wire signed [5:0] Out;

    ALU uut (
        .A(A),
        .B(B),
        .Operator(Operator),
        .Out(Out)
    );

    initial begin
        A = 6'd15; // 15
        B = 6'd5;  // 5
        Operator = 2'b00; //shift_plus
        #10;
        $display("Operator: 00, A = %d, B = %d, Out = %d", A, B, Out);

        A = 6'd12; // 12
        B = 6'd8;  // 8
        Operator = 2'b01; //a_plus_3b
        #10;
        $display("Operator: 01, A = %d, B = %d, Out = %d", A, B, Out);

        A = 6'd7;  // 7
        B = -6'd4; // -4
        Operator = 2'b10; //b_inverse
        #10;
        $display("Operator: 10, A = %d, B = %d, Out = %d", A, B, Out);

        A = -6'd9; // -9
        B = 6'd2;  // 2
        Operator = 2'b11; //abs
        #10;
        $display("Operator: 11, A = %d, B = %d, Out = %d", A, B, Out);

        // Finish simulation
        $stop;
    end

    initial begin
        $dumpfile("q3.vcd");
        $dumpvars(0, uut);
    end
endmodule
