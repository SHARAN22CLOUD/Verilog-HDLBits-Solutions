module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output reg [31:0] out
);

    // Register to store the input vector from the previous clock cycle
    reg [31:0] in_last;

    always @(posedge clk) begin
        in_last <= in;
        
        if (reset) begin
            out <= 32'b0;
        end else begin
            // Maintain previously captured edges OR capture new falling edges
            // (in_last is 1 AND in is 0)
            out <= out | (in_last & ~in);
        end
    end

endmodule
