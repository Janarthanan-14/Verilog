// Code your design here
module demux_4(input in,[1:0]sel,output reg y0,y1,y2,y3);
  always@(*)begin
    case(sel)
      2'b00: y0=in;
      2'b01: y1=in;
      2'b10: y2=in;
      2'b11: y3=in;
    endcase
  end
endmodule
