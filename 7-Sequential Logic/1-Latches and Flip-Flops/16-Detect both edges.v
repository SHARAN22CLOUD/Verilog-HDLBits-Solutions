module top_module (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);
    reg [7:0]past;
    
    // To detect if a signal changed from the previous clock cycle to the current one, 
    // you need to compare its past state with its present state
    always @ (posedge clk) begin
        past <= in;
        anyedge <= past ^ in;
    end

endmodule