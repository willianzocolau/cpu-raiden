module muxOperandOut(
	mux,
	resultALU,
	immediate21Extend,
	rsValue,
	out
);

	input [31:0] resultALU, immediate21Extend, rsValue;
	input [3:0] mux;
	output reg [31:0] out;
	always @ (*) begin
		if(mux == 4'd1)
			out = resultALU;
		else if(mux == 4'd2)
			out = immediate21Extend;
		else if(mux == 4'd3)
			out = rsValue;
		else
			out = 32'd0;
	end

endmodule