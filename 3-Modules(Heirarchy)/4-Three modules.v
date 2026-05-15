module top_module ( input clk, input d, output q );
    wire q1,q2;
    
    my_dff d_ff1(clk, d, q1);
    my_dff d_ff2(clk, q1, q2);
    my_dff d_ff3(clk, q2, q);
endmodule