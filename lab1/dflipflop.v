`timescale 10ps/1ps
module DFlipFlop (
    input data, enable,
    output q, nq
);
    wire inner_q;
    DLatch master(.data(data), .enable(~enable), .q(inner_q));
    DLatch slave(.data(inner_q), .enable(enable), .q(q), .nq(nq));
endmodule