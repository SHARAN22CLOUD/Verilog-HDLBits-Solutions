module top_module (
    input c,
    input d,
    output [3:0] mux_in
); 
    // a and b are the selectors for the 4-to-1 mux:
    // mux_in[0] corresponds to ab = 00
    // mux_in[1] corresponds to ab = 01
    // mux_in[2] corresponds to ab = 10
    // mux_in[3] corresponds to ab = 11

    assign mux_in[0] = c ? 1'b1 : d;          // c | d
    assign mux_in[1] = 1'b0;                  // Always 0
    assign mux_in[2] = d ? 1'b0 : 1'b1;       // ~d
    assign mux_in[3] = c ? d : 1'b0;          // c & d

endmodule