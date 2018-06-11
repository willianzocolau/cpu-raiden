module BinToBCD2(binary, Tens, Ones);
	input [7:0] binary;
	reg [3:0] Hundreds;
	output reg [3:0] Tens;
	output reg [3:0] Ones;
	integer i;
	
	always @(binary[6:0]) begin
		Hundreds = 4'd0;
		Tens = 4'd0;
		Ones = 4'd0;
		
		for (i=6; i>=0; i=i-1) begin
			if(Hundreds >= 5)
				Hundreds = Hundreds + 3;
			if(Tens >= 5)
				Tens = Tens + 3;
			if(Ones >= 5)
				Ones = Ones + 3;
				
			Hundreds = Hundreds << 1;
			Hundreds[0] = Tens[3];
			Tens = Tens << 1;
			Tens[0] = Ones[3];
			Ones = Ones << 1;
			Ones[0] = binary[i];
		end
		if(binary==7'b1111111) begin //display com traço(-)
			Hundreds = 4'b1010;
			Tens = 4'b1010;
			Ones = 4'b1010;
			Hundreds = ~Hundreds;
			Tens = ~Tens;
			Ones = ~Ones;
		end
		if(binary==7'b1111110) begin//display apagado
			Hundreds = 4'b1011;
			Tens = 4'b1011;
			Ones = 4'b1011;
			Hundreds = ~Hundreds;
			Tens = ~Tens;
			Ones = ~Ones;
		end
	end
endmodule