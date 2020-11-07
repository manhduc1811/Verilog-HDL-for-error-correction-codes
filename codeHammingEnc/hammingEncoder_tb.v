module hammingEncoder_tb;
	reg clk;
	reg [3:0] data;
	wire [6:0] codeword;
	
	hammingEncoder uut(.clk(clk), .data(data), .codeword(codeword));
	
	initial begin 
		clk = 1; 
		forever #50 clk = ~clk; 
	end
	
	initial begin
		data = 4'b0000; #100;
		data = 4'b0001; #100;
		data = 4'b0010; #100;
		data = 4'b0011; #100;
		data = 4'b0100; #100;
		data = 4'b0101; #100;
		data = 4'b0110; #100;
		data = 4'b0111; #100;
		data = 4'b1000; #100;
		data = 4'b1001; #100;
		data = 4'b1010; #100;
		data = 4'b1011; #100;
		data = 4'b1100; #100;
		data = 4'b1101; #100;
		data = 4'b1110; #100;
		data = 4'b1111; #100;
		$stop;
	end
	
	initial
		$monitor($time,": data = %b, codeword = %b",data, codeword);
endmodule
