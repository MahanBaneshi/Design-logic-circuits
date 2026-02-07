This repository contains some simple exercises on logic circuits written in Verilog.

---

- In file q1.v, we Implemented a Boolean function below using transistor-level Verilog coding.
The boolean function is 𝑓(𝐴,𝐵,𝐶,𝐷)=𝐴′𝐶+𝐴𝐵′𝐶+𝐵𝐷′+𝐴′𝐶′𝐷′
We first drew a paper diagram with CMOS logic and implemented the transistors in Verilog from it.
We have written a complete bench test for it to ensure its performance (q1_tb.v). We use Gtkwave to view and check signals.
- In file q2.v, we have implemented a 4-bit adder at the gate level. First we define a 1-bit adder (full adder) and then we add 4 of them in a row. Overflow can also occur here.
This program also has its own test bench (q2_tb.v).
- In file q3.v, we implemented a 6-bit ALU capable of performing 6 operations at the dataflow level. We define a module for each of the ALU operations.
The test bench of this program is also in the file q3_tb.v .
