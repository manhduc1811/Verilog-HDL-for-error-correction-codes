module parityDecoder_tb;
	reg [4:0] codeword;
	wire status;
	wire [3:0] message;
	
	parityDecoder uut(.codeword(codeword), .status(status), .message(message));
	
	initial begin
		codeword = 4'b00000; #10;
		codeword = 4'b00001; #10;
		codeword = 4'b00010; #10;
		codeword = 4'b00011; #10;
		codeword = 4'b00100; #10;
		codeword = 4'b00101; #10;
		codeword = 4'b00110; #10;
		codeword = 4'b00111; #10;
		codeword = 4'b01000; #10;
		codeword = 4'b01001; #10;
		codeword = 4'b01010; #10;
		codeword = 4'b01011; #10;
		codeword = 4'b01100; #10;
		codeword = 4'b01101; #10;
		codeword = 4'b01110; #10;
		codeword = 4'b01111; #10;
		$stop;
	end

	initial $monitor($time,": codeword = %b, status = %b, message = %b", codeword, status, message);
		
endmodule