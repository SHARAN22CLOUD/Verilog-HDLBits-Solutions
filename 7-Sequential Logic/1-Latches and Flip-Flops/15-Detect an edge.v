module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    reg [7:0]past;
    
    // In Boolean logic----> pedge <= (~past_state) & present_state
    always @ (posedge clk) begin
        past <= in;
        pedge <= (~past) & in; 
    end

endmodule