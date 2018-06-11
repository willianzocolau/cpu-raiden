module Extender21Bits(in, out);
	input [20:0] in;
	output wire [31:0] out;
	assign out = {{11{in[20]}}, in};
endmodule
