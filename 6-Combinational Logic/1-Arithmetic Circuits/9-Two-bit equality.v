module top_module ( input [1:0] A, input [1:0] B, output z ); 
    //if A=B is true it gives 1 else 0
    assign z = (A==B);
endmodule