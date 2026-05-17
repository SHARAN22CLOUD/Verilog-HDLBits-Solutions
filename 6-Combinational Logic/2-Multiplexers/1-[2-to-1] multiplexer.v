module top_module( 
    input a, b, sel,
    output out 
);
    // using a ternary operator
    assign out = sel?b:a;
    
endmodule