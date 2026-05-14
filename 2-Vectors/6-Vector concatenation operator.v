module top_module (
    input  [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );

    //Part selection was used to select portions of a vector.
    //The concatenation operator {a,b,c} is used to create larger vectors by concatenating smaller portions of a vector together.
    assign {w, x, y, z} = {a, b, c, d, e, f, 1'b1, 1'b1};

endmodule
