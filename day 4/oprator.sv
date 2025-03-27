module operator(
    input [2:0] a,
    input [2:0] b,
    output [5:0] y1,
    output [5:0] y2,
    output [5:0] y3,
    output [5:0] y4
);
    assign y1 = a + b;  // Addition
    assign y2 = a - b;  // Subtraction
    assign y3 = a * b;  // Multiplication
    assign y4 = a % b;  // Modulo
endmodule
