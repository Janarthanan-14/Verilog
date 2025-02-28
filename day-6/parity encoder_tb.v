// Code your testbench here
module tb ;
  reg [8:0] d;
  wire [2:0]y;
  p_encoder uut(.d(d),.y(y));
  initial begin 
    $dumpfile ("tb.vcd");
    $dumpvars ();
    $monitor ("d=%b,y=%b",d,y);
    repeat (5) begin
      
      d=$random ; #4;
      $finish;
    end
    end
    endmodule
