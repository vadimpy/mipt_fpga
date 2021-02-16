`timescale 1ns / 1ns

module testbench;

wire clk;
reg data = 0;
wire q, nq;

DLatch dlatch(.data(data), .enable(clk), .q(q), .nq(nq));
Clock clock (.clk(clk));

initial begin
    $dumpvars;
    #7
    data = 1;
    #7
    data = 0;
    #2
    data = 1;
    #10
    data = 0;
    #15
    data = 1;
    $finish;
end

endmodule