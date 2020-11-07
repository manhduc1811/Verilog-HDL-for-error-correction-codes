module hammingDecoder_tb;
	reg clk;
	reg [6:0] codeword;
	wire [3:0] data;
	
	hammingDecoder uut(.clk(clk), .codeword(codeword),.data(data));
	initial begin 
		clk = 1; 
		forever #50 clk = ~clk; 
	end	
	initial begin
		codeword = 7'b0100000; #100;
		codeword = 7'b0100111; #100;
		codeword = 7'b0111001; #100;
		codeword = 7'b0111110; #100;
		codeword = 7'b0001010; #100;
		codeword = 7'b0001101; #100;
		codeword = 7'b0010011; #100;
		codeword = 7'b0010100; #100;
		codeword = 7'b1101011; #100;
		codeword = 7'b1101100; #100;
		codeword = 7'b1110010; #100;
		codeword = 7'b1110101; #100;
		codeword = 7'b1000001; #100;
		codeword = 7'b1000110; #100;
		codeword = 7'b1011000; #100;
		codeword = 7'b1011111; #100;
		$stop;
	end
	initial
		$monitor($time,": codeword = %b, data = %b", codeword, data);
endmodule
