// Code your testbench here
module demux_tb() ;
  reg in ,sel;
  wire y0,y1;
  demux uut(.in(in),.sel(sel),.y0(y0),.y1(y1));
  initial begin
    $dumpfile ("demux_tb.vcd");
    $dumpvars();
  end
  initial begin
     sel=0; in=1; #10;
    sel=1; in=1;  #10;
    sel=0; in=0; #10;
    sel=1; in=1;  #10;
    $monitor("y0=%b,y1=%b,sel=%b,in=%b",y0,y1,sel,in);
    
   
  end 
endmodule
    
