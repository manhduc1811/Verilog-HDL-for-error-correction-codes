module hammingDecoder(clk,codeword,data);
	input clk;
	input [6:0] codeword;
	output reg[3:0] data;
	
	reg [2:0] s;
	reg [6:0] c2;

	always@(posedge clk) begin
		s[0] = codeword[0]^codeword[2]^codeword[4]^codeword[6];
		s[1] = codeword[1]^codeword[2]^codeword[5]^codeword[6];
		s[2] = codeword[3]^codeword[4]^codeword[5]^codeword[6];
		c2=codeword;
		if(s)
			c2[s-1]=~codeword[s-1];
	end
	always@(c2)	begin
		data[0]=c2[2];
		data[1]=c2[4];
		data[2]=c2[5];
		data[3]=c2[6];
	end
endmodule