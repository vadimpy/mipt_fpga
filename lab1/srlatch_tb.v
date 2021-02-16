`timescale 1ns/1ns

module testbench;
    reg R;
    reg S;
    SRLatch rslatch(.R(R), .S(S), .Q(Q), .Qn(Qn));
    parameter delay = 10;

    initial
        begin
            $dumpvars;
            $display("Write smth...");
            R = 0;
            S = 0;
            #delay;
            R = 1;
            S = 0;
            #delay;
            R = 0;
            S = 0;
            #delay;
            S = 1;
            R = 0;
            #delay;
            S = 0;
            R = 0;
            #delay;
            $finish;
        end
endmodule