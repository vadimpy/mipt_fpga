`timescale  1ns/1ps
module testbench;

    wire clk;
    reg data;
    wire q;
    Clock #(.period(1), .duty_cycle(0.2)) clock (.clk(clk));
    DFlipFlop dflipflop(.data(data), .enable(clk), .q(q));

initial begin
    $dumpvars;
    data = 1;
    #0.5
    data = 0;
    #1.5
    data = 1;
    #1.2
    data = 0;
    #1.7
    data = 1;
    #2.3
    data = 0;
    #1.5
    data = 1;
    #3.1
    data = 0;
    #3
    data = 1;
    $finish;
end

endmodule