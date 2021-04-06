module cnthex( input wire clk, output reg [7:0]hex);

always @(posedge clk)
begin
	//hex <= (hex === 8'hff) ? 8'h0 : hex + 8'h1;
	hex <= hex + 8'h1;
end

endmodule