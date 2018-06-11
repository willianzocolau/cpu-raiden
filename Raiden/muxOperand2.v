module muxOperand2(
	mux,
	rt,
	immediate21Extended,
	out
);

	input [31:0] rt, immediate21Extended;
	input [3:0] mux;
	output reg [31:0] out;
	always @ (*) begin
		if(mux == 4'd1)
			out = rt;
		else if(mux == 4'd2)
			out = immediate21Extended;
		else
			out = 32'd0;
	end

endmodule


