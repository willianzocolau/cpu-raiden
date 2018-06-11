module RegisterBank(
      clock,
		rdAddress, //Endereço registrador de destino
      rsAddress, //Endereço registrador fonte
      rtAddress, //Endereço registrador fonte
      data, //Informação
      registerWrite, //Sinal de controle - se registerWrite = 1 -> salva data
      outData1, //Dado 1
      outData2 //Dado 2
);

      input clock;
      input [4:0] rsAddress , rtAddress, rdAddress;
      input [31:0] data;
      input registerWrite;
      output [31:0] outData1, outData2;

      reg [31:0]registers[31:0]; //32 x 32bits array - 128 Bytes

      assign outData1 = registers[rsAddress];
      assign outData2 = registers[rtAddress];

      always @ (posedge clock) begin
			if(registerWrite == 1'd1) registers[rdAddress] = data;
      end

endmodule





