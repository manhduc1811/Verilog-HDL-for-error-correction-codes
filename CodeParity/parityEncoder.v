module parityEncoder(din, parity, dout);
	input [3:0] din;
	output parity;
	output [4:0] dout;
	
	assign parity = ^din;
	assign dout = {din, parity};
endmodule