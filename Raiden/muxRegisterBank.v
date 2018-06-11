module muxRegisterBank(
	mux,
	aluOut,
	memOut,
	ioOut,
	out
);

	input [31:0] aluOut , memOut, ioOut;
	input [3:0] mux;
	output reg [31:0] out;
	
	always @ (*) begin
		if(mux == 4'd1)
			out = aluOut;
		else if(mux == 4'd2)
			out = memOut;
		else if(mux == 4'd3)
			out = ioOut;
		else
			out = 32'd0;
	end
endmodule


