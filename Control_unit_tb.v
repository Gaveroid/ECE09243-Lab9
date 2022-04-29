module Control_unit_tb ();
	reg clk,rst;
	reg [31:0] inst;
	reg [3:0] stat_flag;
	wire [3:0] ALU_OP;
	wire [1:0] imm_sel;
	wire WB,ALUsrc,PCsrc,RW,MRW;
	
	Control_unit whoop (.clk(clk),.rst(rst),.inst(inst),.stat_flag(stat_flag),.ALU_OP(ALU_OP),.imm_sel(imm_sel),.WB(WB),.ALUsrc(ALUsrc),.PCsrc(PCsrc),.RW(RW),.MRW(MRW));
	
	initial begin 
	clk=0;
	forever #5 clk= ~clk;
	
	end 
	
	initial begin 
	
	rst=1;
	#10 rst=0;
	stat_flag = 4'b0000;
	inst=32'b00000000011100110000001010110011;
	#10 inst=32'b0000000101000101000001110010011;
	#10 inst=32'b00000000011000111010000000100011;
	#10 inst=32'b00000000000000111010111000000011;
	#10 inst=32'b00000001110000111000111101100011;
	
	end 
endmodule 
