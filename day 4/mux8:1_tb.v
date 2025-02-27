
module mux8_tb();
  reg[7:0]data;
  reg[2:0]sel;
  wire out;
  mux_8 uut(.sel(sel),.data(data),.out(out));
  initial begin
    $dumpfile("mux8_tb.vcd");
    $dumpvars();
    $monitor("sel=%b,data=%b,out=%b",sel,data,out);
    data = 8'b11100011;
    sel =3'b000 ; #5;
    sel =3'b001 ; #5;
    sel =3'b010 ; #5;
    sel =3'b011 ; #5;
    sel =3'b100 ; #5;
    sel =3'b101 ; #5;
    sel =3'b110 ; #5;
    sel =3'b111 ; #5;
    $finish;
  end
endmodule
    
    
    
