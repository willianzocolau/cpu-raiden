module PC(
	clock,
   reset, //Flag de controle da operação reset
	muxPC, //Flag que determina como o PC será alterado
	processIn, //Verifica se a entrada já pode ser processada(IN)
	branch, //Label das instruções condicionais
	immediate11, //Branch
	jump, //Label da instrução jump
	outPC //Próxima instrução
);

	input clock, reset, processIn;
	input [31:0] branch, jump;
	input [3:0] muxPC;	
	input [10:0] immediate11;
	output reg [31:0] outPC;

	always @(posedge clock) begin
		if (reset == 1'd0) outPC = 32'd0;//Reset
		else
			begin
				case(muxPC[3:0])
					4'd1: outPC = outPC + 32'd1;//outPC+1
					4'd2: begin
						if(branch == 32'd1)
							outPC = immediate11;//Branch
						else
							outPC = outPC + 32'd1;//Branch
					end
					4'd3: outPC = jump;//Jump
					4'd4: outPC = outPC;//Halt
					4'd5: outPC = outPC + processIn;//0 - Aguardando, 1 - Avança PC + 1
					default: outPC = outPC;
				endcase
			end			
	end
endmodule