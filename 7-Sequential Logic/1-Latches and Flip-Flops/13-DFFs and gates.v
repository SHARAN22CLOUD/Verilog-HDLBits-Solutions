module top_module (
    input clk,
    input x,
    output z
); 
    wire x1, q1,q2,q3; 
    d_ff f1 (clk,x^q1,q1);
    d_ff f2 (clk,x&~q2,q2);
    d_ff f3 (clk,x|~q3,q3);
    
    assign z = ~(q1 | q2 | q3);

endmodule

module d_ff (
    input clk,
    input d,
    output q
);
    always @(posedge clk)
        begin
            q <= d;
        end
endmodule