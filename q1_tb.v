`include "q1.v"
module tb_boolean_function_cmos;

    reg A, B, C, D;
    wire out;

    boolean_function_cmos uut (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .out(out)
    );

    initial begin
        
        A = 0; B = 0; C = 0; D = 0;
        #10;
        
        A = 0; B = 0; C = 0; D = 1;
        #10;
        
        A = 0; B = 0; C = 1; D = 0;
        #10;

        A = 0; B = 0; C = 1; D = 1;
        #10;

        A = 0; B = 1; C = 0; D = 0;
        #10;

        A = 0; B = 1; C = 0; D = 1;
        #10;

        A = 0; B = 1; C = 1; D = 0;
        #10;

        A = 0; B = 1; C = 1; D = 1;
        #10;

        A = 1; B = 0; C = 0; D = 0;
        #10;

        A = 1; B = 0; C = 0; D = 1;
        #10;

        A = 1; B = 0; C = 1; D = 0;
        #10;

        A = 1; B = 0; C = 1; D = 1;
        #10;

        A = 1; B = 1; C = 0; D = 0;
        #10;

        A = 1; B = 1; C = 0; D = 1;
        #10;

        A = 1; B = 1; C = 1; D = 0;
        #10;

        A = 1; B = 1; C = 1; D = 1;
        #10;

        $finish;
    end
    initial begin
        $dumpfile("q1.vcd");
        $dumpvars(0, uut);
    end


endmodule
