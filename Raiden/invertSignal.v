module invertSignal(
	in,
	out
);

	input in;
	output reg out;
	always @ (*) begin
		out = ~in;
	end

endmodule


