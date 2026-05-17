module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum 
);    
    wire [99:0] c;
    // First full adder
    FA fa0(a[0],b[0],cin,c[0],sum[0]);
    
    // Generate loop for bits 1 to 99
    genvar i;
    generate
        for(i=1; i<100; i++) begin : adder_loop
            FA fa(a[i],b[i],c[i-1],c[i],sum[i]);
        end
    endgenerate
    
    assign cout = c[99]; // Final carry out
endmodule


module FA( 
    input a, b, cin,
    output cout, sum 
);
    assign cout = (a&b) | (b&cin) | (a&cin);
	assign sum  = a ^ b ^ cin;
endmodule