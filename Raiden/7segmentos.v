module display7(
	in
);

	input [31:0] in;
	output wire [31:0] out;
	always @(in) begin
		case(in)
			32'd0: out = 32'd0;
			32'd1: out = 32'd1;
			32'd2: out = 32'd2;
			32'd3: out = 32'd3;
			32'd4: out = 32'd4;
			32'd5: out = 32'd5;
			32'd6: out = 32'd6;
			32'd7: out = 32'd7;
			32'd8: out = 32'd8;
			32'd9: out = 32'd9;
		endcase
	end

endmodule