module parityDecoder(codeword, status, message);
	input [4:0] codeword;
	output status;
	output [3:0] message;
	reg parity;
	
	always @(codeword) begin
		parity 	= ^codeword;
	end 
	
	assign	status 	= (parity == 0) ? 1 : 0;
	assign	message = (parity == 0) ? codeword[4:1] : 3'b000;
endmodule
