module display7(
	in,
	out
);

	input [3:0] in;
	output reg [6:0] out;
	always @ (in)
	begin
		case(in)
			4'd0 : out = 7'b1000000; //to display 0
			4'd1 : out = 7'b1111001; //to display 1
			4'd2 : out = 7'b0100100; //to display 2
			4'd3 : out = 7'b0110000; //to display 3
			4'd4 : out = 7'b0011001; //to display 4
			4'd5 : out = 7'b0010010; //to display 5
			4'd6 : out = 7'b0000010; //to display 6
			4'd7 : out = 7'b1111000; //to display 7
			4'd8 : out = 7'b0000000; //to display 8
			4'd9 : out = 7'b0010000; //to display 9
			default : out = 7'b0111111; //dash
		endcase
	end
endmodule