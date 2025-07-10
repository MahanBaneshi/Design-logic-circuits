module ALU (A,B,Operator,Out);
    input signed [5:0] A;
    input signed [5:0] B;
    input [1:0] Operator;
    output signed [5:0] Out;
    wire [5:0] Operation1, Operation2, Operation3, Operation4;

    shift_plus sh1(.A(A), .B(B), .Out(Operation1));
    a_plus_3b thb1(.A(A), .B(B), .Out(Operation2));
    b_inverse b1(.B(B), .Out(Operation3));
    abs gh1(.A(A), .B(B), .Out(Operation4)); 
  
    assign Out = (Operator == 2'b00) ? Operation1:
               (Operator == 2'b01) ? Operation2:
               (Operator == 2'b10) ? Operation3:
                Operation4;
endmodule

module shift_plus (A,B,Out);
    input signed [5:0] A;
    input signed [5:0] B;
    output signed [5:0] Out;
    assign Out = (A <<< 2) + (B >>> 1);
endmodule

module a_plus_3b (A,B,Out);
    input signed [5:0] A;
    input signed [5:0] B;
    output signed [5:0] Out;
    assign Out = A + (B+B+B) ;
endmodule

module b_inverse (B,Out);
    input signed [5:0] B;
    output signed [5:0] Out;
    assign Out = -B;
endmodule

module abs (A,B,Out);
    input signed [5:0] A;
    input signed [5:0] B;
    output signed [5:0] Out;
    assign Out = (A+A-B) > 0 ? (A+A-B) : -(A+A-B);
endmodule

