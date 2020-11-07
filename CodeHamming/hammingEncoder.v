module hammingEncoder(
	input [3:0] message,
	output [6:0] codeword
);
	// [7,4,3] hamming code where codeword = [x0,x1,x2,x3,p0,p1,p2]
	
	wire p0, p1, p2;
	assign p0 = message[0]^message[1]^message[3];
	assign p1 = message[0]^message[2]^message[3];
	assign p2 = message[1]^message[2]^message[3];
	
	assign codeword = {message,p0,p1,p2};

endmodule