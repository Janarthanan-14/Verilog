module parallel_adder_16bit (
    input  [15:0] a,       // First 16-bit input
    input  [15:0] b,       // Second 16-bit input
    input         cin,     // Carry-in
    output [15:0] sum,     // 16-bit sum output
    output        cout     // Carry-out
);

    // Internal signal for carry propagation
    wire [15:0] carry;

    // Generate the sum and carry for each bit
    assign {cout, sum} = a + b + cin;

endmodule
