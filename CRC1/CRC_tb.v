module CRC_tb();
    reg CLK;
    reg DATA;
    reg RST;
    wire [63:0] CRC;
    
    //instantiating the top module 
    CRC top_module (CLK,RST,CRC,DATA);
    
    always begin 
        #5 CLK = ~CLK;
    end 
    
    initial begin
    $display ("time\t CLK RST CRC");
    $monitor ("%g\t %b %b %b", $time, CLK, RST, CRC);
    CLK = 1;
    RST = 0;
    #2 RST = 1;
    #6 DATA = 0;
    #20 $finish;
    end 
    
endmodule