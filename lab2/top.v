module top(
    input CLK,
	 output DS_EN1, DS_EN2, DS_EN3, DS_EN4,
	 output DS_A, DS_B, DS_C, DS_D, DS_E, DS_F, DS_G
);

	assign {DS_EN1, DS_EN2, DS_EN3, DS_EN4} = 4'b0111;

	wire clkdiv;
	wire [6:0]seg;
	wire [6:0]seg_h;
	wire [6:0]seg_l;
	wire [7:0]hex;
	wire segen[3:0];

	clkdiv Clkdiv1( .clk(CLK), .clkdiv(clkdiv));
	clkdiv10 Clkdiv10( .clk(CLK), .clkdiv10(clkdiv10)); //!
	cnthex Cnthex1( .clk(clkdiv), .hex(hex));
	hex2seg Hex2seg_h( .hex(hex[7:4]), .seg(seg));
	hex2seg Hex2seg_l( .hex(hex[3:0]), .seg())

	segmgr SegMgr( .clkdiv10(clkdiv10),
				   .seg_l(seg_l),
				   .seg_h(seg_h),
				   .seg(seg),
				   .segen(segen));

	assign {DS_A, DS_B, DS_C, DS_D, DS_E, DS_F, DS_G} = seg;



endmodule
