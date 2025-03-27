// Code your design here
module switching_modeling(input ctrl,d_in,
                          output p_out,n_out);
  pmos p1(p_out,ctrl,d_in);
  nmos n1(n_out,ctrl,d_in);
endmodule
