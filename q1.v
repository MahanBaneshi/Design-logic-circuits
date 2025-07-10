module boolean_function_cmos(
    input A,
    input B,
    input C,
    input D,
    output out
);

    supply1 pwr;
    supply0 gnd;  


    wire w1, w2, w3, w4, w5, w6;
    wire n1, n2 ,n3;

    pmos(out, w1, ~C);
    pmos(w1, pwr, A);
    pmos(out, w3, ~C);
    pmos(w3, w2, B);
    pmos(w2, pwr, ~A);
    pmos(out, w4, D);
    pmos(w4, pwr, ~B);
    pmos(out, w6, D);
    pmos(w6, w5, C);
    pmos(w5, pwr, A);

    nmos(out, n1, A);
    nmos(out, n1, ~C);
    nmos(n1, n2, ~A);
    nmos(n1, n2, B);
    nmos(n1, n2, ~C);
    nmos(n2, n3, ~B);
    nmos(n2, n3, D);
    nmos(n3, gnd, A);
    nmos(n3, gnd, C);
    nmos(n3, gnd, D);

endmodule
