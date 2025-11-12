module multiplexer (
    input a,
    input b,
    input sel,
    output out
);

    wire nsel;      // NOT(sel)
    wire a_path;    // a AND NOT(sel)
    wire b_path;    // b AND sel

    // Gate-level logic
    not  (nsel, sel);          // Invert select line
    and  (a_path, a, nsel);    // a AND NOT(sel)
    and  (b_path, b, sel);     // b AND sel
    or   (out, a_path, b_path); // OR the two paths

endmodule
