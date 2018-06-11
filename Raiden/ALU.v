module ALU (
  controlALU, //Código de controle da ALU
  rs, //Primeiro registrador fonte 
  rt, //Segundo operando
  outALU //Resultado da ALU
);

	input [5:0] controlALU;
	input [31:0] rs, rt;
	output reg [31:0] outALU;
  
  	localparam [6:0] 	ADD = 6'd1, ADDI = 6'd2,
							SUB = 6'd3, SUBI = 6'd4,
							MUL = 6'd5,
							DIV = 6'd6,
							MOD = 6'd7,
							AND = 6'd8, ANDI = 6'd9,
							OR = 6'd10, ORI = 6'd11,
							XOR = 6'd12, XORI = 6'd13,
							NOT = 6'd14,
							SHL = 6'd15,
							SHR = 6'd16,
							BEQ = 6'd21,
							BGT = 6'd22,
							BGE = 6'd23,
							BLT = 6'd24,
							BLE = 6'd25,
							BNE = 6'd26,
							MOVE = 6'd27;

	always @ (*) begin
		begin
			if(controlALU[5:0] == ADD || controlALU[5:0] == ADDI)
				outALU = rs + rt;
			else if(controlALU[5:0] == SUB || controlALU[5:0] == SUBI)
				outALU = rs - rt;
			else if(controlALU[5:0] == MUL || controlALU[5:0] == MUL)
				outALU = rs * rt;
			else if(controlALU[5:0] == DIV)
				outALU = rs / rt;
			else if(controlALU[5:0] == MOD)
				outALU = rs % rt;
			else if(controlALU[5:0] == AND || controlALU[5:0] == ANDI)
				outALU = (rs & rt);
			else if(controlALU[5:0] == OR || controlALU[5:0] == ORI)
				outALU = (rs | rt);
			else if(controlALU[5:0] == XOR || controlALU[5:0] == XORI)
				outALU = (rs ^ rt);
			else if(controlALU[5:0] == NOT)
				outALU = ~rs;
			else if(controlALU[5:0] == SHL)
				outALU = rs << rt;
			else if(controlALU[5:0] == SHR)
				outALU = rs >> rt;
			else if(controlALU[5:0] == BEQ)
				outALU = (rs == rt);
			else if(controlALU[5:0] == BGT)
				outALU = (rs > rt);
			else if(controlALU[5:0] == BGE)
				outALU = (rs >= rt);
			else if(controlALU[5:0] == BLT)
				outALU = (rs < rt);
			else if(controlALU[5:0] == BLE)
				outALU = (rs <= rt);
			else if(controlALU[5:0] == BNE)
				outALU = (rs != rt);
			else if(controlALU[5:0] == MOVE)
				outALU = rs;
			else
				outALU = 32'd0;
		end
	end
endmodule