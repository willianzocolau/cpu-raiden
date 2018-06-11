module Datapath(
	btn_clk,
	clk,
	reset,//Implementar reset
	processIn,
	keys,
	outmuxPC,
	outDisplayUnidade,
	outDisplayDezena,
	outDisplayUnidadeInput,
	outDisplayDezenaInput
);
	input btn_clk, clk, reset, processIn;
	input [5:0] keys;
	
	output reg [3:0] outmuxPC;
	output reg [6:0] outDisplayUnidade, outDisplayDezena, outDisplayUnidadeInput, outDisplayDezenaInput;
			
	always @ (*) begin
		outmuxPC = outPC[3:0];
		outDisplayUnidade = resultDisplayUnidade;
		outDisplayDezena = resultDisplayDezena;

		outDisplayUnidadeInput = resultDisplayUnidadeInput;
		outDisplayDezenaInput = resultDisplayDezenaInput;
	end

	//Sinais de controle
	wire clock, rst;
	wire [3:0] muxPC, muxRegisterBank, ioOp, muxOperandOut, muxOperand2;
	wire writeEnableRegs, writeEnableData, readEnableData;
	
	wire [31:0] instruction,  outPC;
	wire [5:0] opcode;
	
	//Valores
	wire signed [31:0] rsValue, rtValue, immediate21Extended, operand2, aluOut, outDataMemory; 
	wire signed [31:0] resultOperand, dataRegisterBank, ioOut;
	wire signed [20:0] immediate21;
	wire [10:0] immediate11;
	
	//Endereços
	wire [4:0] rsAddress, rtAddress, rdAddress;
	
	//Saída
	wire [6:0] resultDisplayUnidade, resultDisplayDezena, resultDisplayUnidadeInput, resultDisplayDezenaInput;
	wire [3:0] resultUnidade, resultDezena, resultUnidadeInput, resultDezenaInput;
	
	invertSignal instance_invertSignal (
		.in(reset),
		.out(rst)
	);
	
	//Clock com botão
	DeBounce instance_DeBounce (
		.clk(clk),
		.n_reset(rst),
		.button_in(btn_clk),
		.DB_out(clock)
	);
	
	PC instance_PC (
		.clock(clock),
	   .reset(rst),
		.branch(resultOperand),
		.jump(resultOperand),
		.immediate11(immediate11),
		.muxPC(muxPC),
		.processIn(processIn),
		.outPC(outPC)
	);

	InstructionMemory instance_InstructionMemory(
		.PCAddress(outPC),
		.rsAddress(rsAddress),
    	.rtAddress(rtAddress),
    	.rdAddress(rdAddress),
		.immediate21(immediate21),
		.immediate11(immediate11),
		.opcode(opcode),
	);

	ControlUnit instance_ControlUnit(
		.controlALU(opcode),
		.muxPC(muxPC),
		.muxRegisterBank(muxRegisterBank),
		.muxOperand(muxOperand2),
		.muxOperandOut(muxOperandOut),
		.writeEnableRegs(writeEnableRegs),
		.writeEnableData(writeEnableData),
		.readEnableData(readEnableData),
		.ioOp(ioOp)
	);

	RegisterBank instance_RegisterBank (
		.clock(clock),
		.rdAddress(rdAddress),
    	.rsAddress(rsAddress),
    	.rtAddress(rtAddress),
    	.data(dataRegisterBank),
    	.registerWrite(writeEnableRegs),
    	.outData1(rsValue),
    	.outData2(rtValue)
	);

	Extender21Bits instance_Extender21Bits (
		.in(immediate21),
		.out(immediate21Extended)
	);

	muxOperand2 instance_muxOperand2 (
		.mux(muxOperand2),
		.rt(rtValue), 
		.immediate21Extended(immediate21Extended),
		.out(operand2)
	);

	ALU instance_ALU (
		.controlALU(opcode),
	  	.rs(rsValue),
	  	.rt(operand2),
	  	.outALU(aluOut)
	);
	
	muxOperandOut instance_muxOperandOut(
		.mux(muxOperandOut),
		.resultALU(aluOut),
		.immediate21Extend(immediate21Extended),
		.rsValue(rsValue),
		.out(resultOperand)
	);

	muxRegisterBank instance_muxRegisterBank (
		.mux(muxRegisterBank), 
		.aluOut(resultOperand), 
		.memOut(outDataMemory),
		.ioOut(ioOut),//Keys
		.out(dataRegisterBank)
	);

	DataMemory instance_DataMemory (
		.clock(clock),
		.writeEnable(writeEnableData),
		.readEnable(readEnableData),
		.data(resultOperand),//Substitui por resultOperand(rsValue)
		.rdAddress(rdAddress),
		.rsAddress(rsAddress),
		.outRead(outDataMemory)
	);
	
	IO instance_IO (
		.ioOp(ioOp),
		.entrada(keys), 
		.saida(resultOperand),
		.out(ioOut)
	);
	
	BinToBCD2 instance_BinToBCD2(
		.binary(ioOut[7:0]),
		.Tens(resultDezena),
		.Ones(resultUnidade)
	);
	
	display7 instance1_display7 (
		.in(resultDezena),
		.out(resultDisplayDezena)
	);
	
	display7 instance2_display7 (
		.in(resultUnidade),
		.out(resultDisplayUnidade)
	);
	
	BinToBCD2 instance3_BinToBCD2(
		.binary(keys),
		.Tens(resultDezenaInput),
		.Ones(resultUnidadeInput)
	);
	
	display7 instance4_display7 (
		.in(resultDezenaInput),
		.out(resultDisplayDezenaInput)
	);
	
	display7 instance5_display7 (
		.in(resultUnidadeInput),
		.out(resultDisplayUnidadeInput)
	);

endmodule

