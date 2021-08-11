module led_case
(
	input clk,
	output plus,
	input minus,
	output pin_77
	
);
	reg led = 1'b1;
	reg[31:0] count = 32'b0;


//	wire locked;
//	wire clk0;
//	wire clk1;
//	wire clk2;
//	wire clk3;
//	wire hash_clk;
//		altera_pll #(.SPEED_MHZ(50))main_pll  (clk, clk0,clk1,clk2,clk3,hash_clk);
//		
//	wire [31:0]wFREQ1;
	
	always @ (posedge clk)
	begin
	
		count <= count + 1'b1;
		//led <= 1'b1;
			
		if (count == 26'd50000000)
		begin
			led <= !led;
			count <= 32'b0;
		end 
		
	end
	
	assign plus = led;

	assign pin_77 = led;
	
	

//assign wFREQ1 = count;
//virtual_wire # (.PROBE_WIDTH(32), .WIDTH(0), .INSTANCE_ID("QONE")) golden_nonce_vw_blk (.probe(wFREQ1), .source());

	
endmodule