// Code your testbench here
module demux4_tb;
  reg in;
  reg[1:0]sel;
  wire y0,y1,y2,y3;
  demux_4 uut(.in(in),.sel(sel),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
  initial begin
    $dumpfile("demux4_tb.vcd");
    $dumpvars();
    $monitor("in=%b,sel=%b,y0=%b,y1=%b,y2=%b,y3=%b",in,sel,y0,y1,y2,y3);
    sel=2'b00; in=1; #5;
    sel=2'b01; in=0; #5;
    sel=2'b10; in=1; #5;
    sel=2'b11; in=0; #5;
    sel=2'b00; in=1; #5;
    sel=2'b01; in=0; #5;
    sel=2'b10; in=1; #5;
    sel=2'b11; in=0; #5;
  end 
endmodule
