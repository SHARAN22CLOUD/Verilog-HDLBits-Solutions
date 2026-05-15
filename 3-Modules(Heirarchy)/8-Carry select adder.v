module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] cout,c2;
    wire [15:0]sum1,sum2;
    add16 adder1(a[15:0], b[15:0], 0, sum[15:0], cout);
    add16 adder_sel0(a[31:16], b[31:16], 0, sum1, c2);
    add16 adder_sel1(a[31:16], b[31:16], 1, sum2, c2);
    
    assign sum[31:16] = cout?(sum2):(sum1); //mux operation using a ternary operator

endmodule