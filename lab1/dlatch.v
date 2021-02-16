module DLatch(
    input data, enable,
    output q, nq
);
    wire s, r;
    assign s = data && enable;
    assign r = !data && enable;
    SRLatch srlatch(.S(s), .R(r), .Q(q), .Qn(nq));
endmodule