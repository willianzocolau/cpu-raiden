module ControlUnit(
	controlALU,
	muxPC, //Controle do PC(Branch e jump) 1 - Próximo, 2 - Branch, 3 - Jump, 4 - Halt
	muxRegisterBank, //Seleção da fonte para salvar 1 - Alu, 2 = Memória, 3 - IO
	muxOperand, //Registrador ou writeEnableRegs  1 - Reg, 2 - Imediato
	muxOperandOut, //Resultado da ALU ou Imediato 1 - outALu, 2 - Imediato, 3 - Rs(Move)
	writeEnableRegs, //Habilita escrita no registrador
	writeEnableData, //Habilita escrita na memória
	readEnableData, //Habilita leitura
	ioOp // Controle de E/S
);

	input [5:0] controlALU;	
	output reg [3:0] muxPC, muxRegisterBank, ioOp, muxOperandOut, muxOperand;
	output reg writeEnableData, readEnableData, writeEnableRegs;

	localparam [6:0] NOP = 6'd0, 
							ADD = 6'd1,
							ADDI = 6'd2,
							SUB = 6'd3,
							SUBI = 6'd4,
							MUL = 6'd5,
							DIV = 6'd6,
							MOD = 6'd7,
							AND = 6'd8,
							ANDI = 6'd9,
							OR = 6'd10,
							ORI = 6'd11,
							XOR = 6'd12,
							XORI = 6'd13,
							NOT = 6'd14,
							SHL = 6'd15,
							SHR = 6'd16,
							LOAD = 6'd17,
							LOADI = 6'd18,
							STORE = 6'd19,
							JUMP = 6'd20,
							BEQ = 6'd21,
							BGT = 6'd22,
							BGE = 6'd23,
							BLT = 6'd24,
							BLE = 6'd25,
							BNE = 6'd26,
							MOVE = 6'd27,
							IN = 6'd28,
							OUT = 6'd29,
							HLT = 6'd63;
	
	always @(controlALU) begin
		case(controlALU)
			NOP: begin
				muxPC = 4'd1;//PC
				muxRegisterBank = 4'bxxxx;//Valor a ser salvo
				muxOperand = 4'bxxxx;//Imediato ou rt
				muxOperandOut = 4'bxxxx;//Alu, imediato(LOADI) ou rsValue(move e out)
				writeEnableRegs = 1'd0;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			ADD: begin
				muxPC = 4'd1;
				muxRegisterBank = 4'd1;
				muxOperand = 4'd1;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd1;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			ADDI: begin
				muxPC = 4'd1;
				muxRegisterBank = 4'd1;
				muxOperand = 4'd2;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd1;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			SUB: begin
				muxPC = 4'd1;
				muxRegisterBank = 4'd1;
				muxOperand = 4'd1;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd1;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			SUBI: begin
				muxPC = 4'd1;
				muxRegisterBank = 4'd1;
				muxOperand = 4'd2;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd1;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			MUL: begin
				muxPC = 4'd1;
				muxRegisterBank = 4'd1;
				muxOperand = 4'd1;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd1;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			DIV: begin
				muxPC = 4'd1;
				muxRegisterBank = 4'd1;
				muxOperand = 4'd1;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd1;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			MOD: begin
				muxPC = 4'd1;
				muxRegisterBank = 4'd1;
				muxOperand = 4'd1;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd1;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			AND: begin
				muxPC = 4'd1;
				muxRegisterBank = 4'd1;
				muxOperand = 4'd1;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd1;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			ANDI: begin
				muxPC = 4'd1;
				muxRegisterBank = 4'd1;
				muxOperand = 4'd2;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd1;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			OR: begin
				muxPC = 4'd1;
				muxRegisterBank = 4'd1;
				muxOperand = 4'd1;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd1;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			ORI: begin
				muxPC = 4'd1;
				muxRegisterBank = 4'd1;
				muxOperand = 4'd2;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd1;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			XOR : begin
				muxPC = 4'd1;
				muxRegisterBank = 4'd1;
				muxOperand = 4'd1;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd1;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			XORI: begin
				muxPC = 4'd1;
				muxRegisterBank = 4'd1;
				muxOperand = 4'd2;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd1;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			NOT: begin
				muxPC = 4'd1;
				muxRegisterBank = 4'd1;
				muxOperand = 4'bxxxx;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd1;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			SHL: begin
				muxPC = 4'd1;
				muxRegisterBank = 4'd1;
				muxOperand = 4'd1;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd1;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			SHR: begin
				muxPC = 4'd1;
				muxRegisterBank = 4'd1;
				muxOperand = 4'd1;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd1;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			LOAD: begin
				muxPC = 4'd1;
				muxRegisterBank = 4'd2;
				muxOperand = 4'bxxxx;
				muxOperandOut = 4'bxxxx;
				writeEnableRegs = 1'd1;
				writeEnableData = 1'd0;
				readEnableData = 1'd1;
				ioOp = 4'd3;
			end
			LOADI: begin
				muxPC = 4'd1;
				muxRegisterBank = 4'd1;
				muxOperand = 4'd2;
				muxOperandOut = 4'd2;
				writeEnableRegs = 1'd1;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			STORE: begin
				muxPC = 4'd1;
				muxRegisterBank = 4'bxxxx;
				muxOperand = 4'bxxxx;
				muxOperandOut = 4'd3;
				writeEnableRegs = 1'd0;
				writeEnableData = 1'd1;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			JUMP: begin
				muxPC = 4'd3;
				muxRegisterBank = 4'bxxxx;
				muxOperand = 4'd2;
				muxOperandOut = 4'd2;
				writeEnableRegs = 1'd0;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			BEQ: begin
				muxPC = 4'd2;
				muxRegisterBank = 4'bxxxx;
				muxOperand = 4'd1;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd0;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			BGT: begin
				muxPC = 4'd2;
				muxRegisterBank = 4'bxxxx;
				muxOperand = 4'd1;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd0;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			BGE: begin
				muxPC = 4'd2;
				muxRegisterBank = 4'bxxxx;
				muxOperand = 4'd1;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd0;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			BLT: begin
				muxPC = 4'd2;
				muxRegisterBank = 4'bxxxx;
				muxOperand = 4'd1;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd0;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			BLE: begin
				muxPC = 4'd2;
				muxRegisterBank = 4'bxxxx;
				muxOperand = 4'd1;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd0;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			BNE: begin
				muxPC = 4'd2;
				muxRegisterBank = 4'bxxxx;
				muxOperand = 4'd1;
				muxOperandOut = 4'd1;
				writeEnableRegs = 1'd0;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			IN: begin
				muxPC = 4'd5;
				muxRegisterBank = 4'd3;
				muxOperand = 4'bxxxx;
				muxOperandOut = 4'bxxxx;
				writeEnableRegs = 1'd1;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd1;
			end
			OUT: begin
				muxPC = 4'd1;
				muxRegisterBank = 4'bxxxx;
				muxOperand = 4'bxxxx;
				muxOperandOut = 4'd3;
				writeEnableRegs = 1'd0;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd2;
			end
			HLT: begin
				muxPC = 4'd4;
				muxRegisterBank = 4'bxxxx;
				muxOperand = 4'bxxxx;
				muxOperandOut = 4'bxxxx;
				writeEnableRegs = 1'd0;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
			default: begin
				muxPC = 4'd1;
				muxRegisterBank = 4'bxxxx;
				muxOperand = 4'bxxxx;
				muxOperandOut = 4'bxxxx;
				writeEnableRegs = 1'd0;
				writeEnableData = 1'd0;
				readEnableData = 1'd0;
				ioOp = 4'd3;
			end
		endcase
	end
	
endmodule