module ALU(
	   input [3:0] 	    a,
	   input [3:0] 	    b,
	   input [1:0] 	    op,
	   output reg [7:0] result);
   always@(a or b or op)
     begin
	case(op)
	  //begin
	  2'b00: result = a+b;
	  2'b01: result = a*b;
	  2'b10: result = a%b;
	  2'b11: result = a&b;
	  default : result = 8'd0;
	  
	endcase // case (op)
     end
endmodule // ALU


	  
