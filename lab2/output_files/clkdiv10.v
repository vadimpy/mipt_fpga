module clkdiv(input wire clk, output wire clkdiv10);

reg [9:0]cnt;
assign clkdiv = cnt[9];

always @(posedge clk)
begin
	//cnt <= (cnt === {10{1'b1}}) ? 10'h0 : cnt + 10'h1;
    cnt <= cnt + 10'h1;
end

endmodule