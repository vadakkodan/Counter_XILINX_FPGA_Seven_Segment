module tb_alu();
   reg [3:0] x,y;
   reg [1:0] sel;
   wire [7:0] rslt;
   ALU dut_alu(.a(x),.b(y),.op(sel),.result(rslt));
   integer    i,j,k;
   
   //generate x
   initial begin
      x =0;
      for (i=0;i<16;i=i+1)
	begin
	   x = x+1; #150;
	   $display("Value of 'x':%1d  :  %3d",x,$time);
	   
	end
   end
   //generate y
   initial begin
      y =0;
      for (j=0;j<16;j=j+1)
	begin
	   y = y+1; #15;
	   $display("Value of 'y':%1d  :  %3d",y,$time);
	  // $display("Value of 'y':%1d",y);
	   
	end
   end
   //generate sel
   initial begin
      sel =0;
      repeat(1000) begin
	   sel = sel+1; #2;
	   $display("Value of 'sel':%1d  :  %3d",sel,$time);
	// #2000 $stop;
 
	   //$display("Value of 'sel':%1d",sel);
	   
	end
   end
   
      endmodule
