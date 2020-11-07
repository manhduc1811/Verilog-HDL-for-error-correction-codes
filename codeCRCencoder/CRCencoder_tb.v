module CRCencoder_tb;
	// Inputs
	reg clock;
	reg start;
	reg data;
	// Outputs
	wire done;			
	wire [15:0] r; 		//reminder
	// Instantiate the Unit Under Test (UUT)
	CRCencoder uut (
		.clock(clock), 
		.start(start), 
		.data(data), 
		.done(done), 
		.r(r)
	); 
	// this is the input data
	parameter DATA_LENGTH			= 32;
	reg [DATA_LENGTH-1:0] input_data   	= 32'h03_01_02_03;
	integer i; 	// required for "for" loop
	always #5 clock = !clock;
	initial begin
		// Initialize Inputs
		clock = 0;
		start = 0;
		data = 0;
		// Wait 100 ns for global reset to finish
		#100;       
		// Add stimulus here
		start=1;
		#10 start = 0;     
		for (i=0; i< DATA_LENGTH; i=i+1)	begin
			data = input_data[DATA_LENGTH-1];
			// at each clock, left shift the data
			// note syntax for test bench "for" loop - no "always"
			// note the blocking assignment (immediate)
			@(posedge clock) input_data = {input_data[DATA_LENGTH-2:0],1'b0};     
       end    
   	#10;
	$stop; // Pause simulation   
	end
endmodule
