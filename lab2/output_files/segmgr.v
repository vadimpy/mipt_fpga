module segmgr
(
    input  wire       clkdiv10,
    input  wire [6:0] seg_l,
    input  wire [6:0] seg_h,
    output wire [6:0] seg,
    output wire [3:0] segen
);

always @(posedge clkdiv10)
{
    seg = seg_l;
    segen = 4'b0111;    
}

always @(negedge clkdiv10)
{
    seg = seg_h;
    segen = 4'b1011;
}

endmodule
