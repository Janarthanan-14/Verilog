module tb;
  reg ctrl,d_in;
  wire p_out,n_out;
  switching_modeling uut(ctrl,d_in,p_out,n_out);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
    $monitor("ctrl=%0d,d_in=%0d,p_out=%0d,n_out=%0d",ctrl,d_in,p_out,n_out);
    ctrl=0 ; d_in=0; #5;
     ctrl=1 ; d_in=1; #5;
     ctrl=1 ; d_in=0; #5;
     ctrl=0 ; d_in=1; #5;
  end 
endmodule
