`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:44:05 04/10/2017 
// Design Name: 
// Module Name:    display 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module display(input [3:0] digit,
output reg[6:0] seven_seg
    );
	 parameter zero = 7'b000_0001;
	 parameter one = 7'b100_1111;
	 parameter two = 7'b001_0010;
	 parameter three = 7'b000_0110;
	 parameter four = 7'b100_1100;
	 parameter five = 7'b010_0100;
	 parameter six = 7'b010_0000;
	 parameter seven = 7'b000_1111;
	 parameter eight = 7'b000_0000;
	 parameter nine = 7'b000_0100;
	 
always @ (digit)
case (digit)
0:seven_seg=zero;
1:seven_seg=one;
2:seven_seg=two;
3:seven_seg=three;
4:seven_seg=four;
5:seven_seg=five;
6:seven_seg=six;
7:seven_seg=seven;
8:seven_seg=eight;
9:seven_seg=nine;
default:seven_seg=zero;
endcase
endmodule



