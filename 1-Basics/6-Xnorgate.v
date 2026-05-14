module top_module( 
    input a, 
    input b, 
    output out );
    assign out = ~(a^b);  //XNOR gate using bitwise XOR and NOT operators
endmodule