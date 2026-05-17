module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum
);
    wire [3:0]c;
    
    FA fa1(x[0],y[0],0,c[0],sum[0]);
    FA fa2(x[1],y[1],c[0],c[1],sum[1]);
    FA fa3(x[2],y[2],c[1],c[2],sum[2]);
    FA fa4(x[3],y[3],c[2],sum[4],sum[3]);
    
    //----OR----
    // This circuit is a 4-bit ripple-carry adder with carry-out.
	// assign sum = x+y;  // Verilog addition automatically produces the carry-out bit.

endmodule

module FA( 
    input a, b, cin,
    output cout, sum 
);
    assign cout = (a&b) | (b&cin) | (a&cin);
	assign sum  = a ^ b ^ cin;
endmodule