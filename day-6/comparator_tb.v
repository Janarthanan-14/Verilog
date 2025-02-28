// Code your testbench here
module tb ;
  reg [3:0] A;
  reg [3:0] B;
  wire A_grt_B,A_less_B,A_eq_B;
  comparator  uut(.A(A),.B(B),.A_grt_B(A_grt_B),.A_less_B(A_less_B),.A_eq_B(A_eq_B));
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars();
    $monitor("A=%B,B=%B,A_grtr_B=%b,A_less_B=%b,A_eq_B=%B",A,B,A_grt_B,A_less_B,A_eq_B);
    repeat (4) begin
      A=$random; B=$random; #5;
    end
  end
    endmodule
