module parityEncoder_tb;
	reg [3:0] din;
	wire [4:0] dout;
	wire parity;
	
	parityEncoder uut(.din(din), .parity(parity), .dout(dout));
	
	initial begin
		din = 4'b0000; #10;
		din = 4'b0001; #10;
		din = 4'b0010; #10;
		din = 4'b0011; #10;
		din = 4'b0100; #10;
		din = 4'b0101; #10;
		din = 4'b0110; #10;
		din = 4'b0111; #10;
		din = 4'b1000; #10;
		din = 4'b1001; #10;
		din = 4'b1010; #10;
		din = 4'b1011; #10;
		din = 4'b1100; #10;
		din = 4'b1101; #10;
		din = 4'b1110; #10;
		din = 4'b1111; #10;
		$stop;
	end

	initial $monitor($time,": din = %b, parity = %b, dout = %b", din, parity, dout);
		
endmodule