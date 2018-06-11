module DataMemory(
	clock,
	writeEnable,//Sinal de controle de escrita
	readEnable,//Sinal de controle de leitura
	data,//Informação
	rdAddress,//Endereço de escrita
	rsAddress,//Endereço de leitura
	outRead//Saida da informação
);
	input clock;
	input [31:0] data;
	input [4:0] rdAddress, rsAddress;//Alterar caso tamanho da memória mude
	input writeEnable, readEnable;
	output reg [31:0] outRead;

	reg [31:0] Ram[31:0];

	always @ (negedge clock) begin
		if(readEnable == 1'd1)
			outRead = Ram[rsAddress];
		if(writeEnable== 1'd1)
			Ram[rdAddress] = data;
	end

endmodule


