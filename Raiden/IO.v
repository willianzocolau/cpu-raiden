module IO(
	ioOp,
	entrada,
	saida,
	out
);

	input [3:0] ioOp;
	input [31:0] entrada, saida;
	output reg [31:0] out;

	always @ (*) begin
		if(ioOp == 4'd1)
			out = entrada;
		else if(ioOp == 4'd2)
			out = saida;
		else
			out = 32'd0;
	end

endmodule