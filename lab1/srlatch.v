module SRLatch(
   output Q, Qn,
   input S, R
);
   assign Qn = !(S || Q);
   assign Q = !(R || Qn);
endmodule
