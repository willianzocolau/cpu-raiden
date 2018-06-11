module InstructionMemory(
	PCAddress, //Endereço da instrução
	rsAddress, //Endereço registrador fonte
   rtAddress, //Endereço registrador fonte
   rdAddress, //Endereço registrador de destino
	immediate21,//Imediato de 21 bits
	immediate11,//Imediato de 16 bits
	opcode, //Opcode da instrução
);

	input [31:0] PCAddress;
	output [4:0] rsAddress , rtAddress, rdAddress;
	output [5:0] opcode;
	output [20:0] immediate21;
	output [10:0] immediate11;
	
	parameter tam = 8;
	
	reg [31:0] InstrctionsMemory[tam:0];
	initial begin
		$readmemb("./instructions.mif", InstrctionsMemory);//Carrega instruções
	end

	assign opcode = outInstruction[31:26];
	assign rdAddress = outInstruction[25:21];
	assign rsAddress = outInstruction[20:16];
	assign rtAddress = outInstruction[15:11];
	assign immediate21 = outInstruction[20:0];
	assign immediate11 = outInstruction[10:0];
	
endmodule