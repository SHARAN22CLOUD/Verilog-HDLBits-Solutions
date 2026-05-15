module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    // module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    wire c1,c2; // ( c1 and c2 is the carry outs of respective adders )
    add16 a1(a[15:0], b[15:0], 0, sum[15:0], c1);
    add16 a2(a[31:16], b[31:16], c1, sum[31:16], c2);

endmodule