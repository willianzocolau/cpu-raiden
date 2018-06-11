module FrequencyDivider
(
	clock,
	reset,
	cout
);
    input clock, reset;
    output reg cout;
 
    reg [25:0] count; //counts upto 50000000
 
    always @(posedge clock)
    begin 
       if (reset) begin
           if(count == 50000000) begin
              count = 0;
              cout = ~cout;
           end else begin
              count = count + 1;
              cout = cout;
           end
       end 
		 else begin
          count = 0;
          cout = 0;
       end
    end
endmodule