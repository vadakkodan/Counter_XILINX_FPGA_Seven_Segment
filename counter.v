`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:23:47 04/10/2017 
// Design Name: 
// Module Name:    counter 
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
module counter(
input clk_fpga,
input reset,
output [6:0] seg,
output [3:0] an,
output led
    );
parameter MAX_COUNT=50_000_000-1;
wire counter_en;
reg [26:0] counter_50M;
reg [3:0] counter_10;

assign an=4'b1110;
display disp1 (.digit(counter_10), .seven_seg(seg));
always@ (posedge clk_fpga, posedge reset)
if(reset)
counter_50M <=0;
else if(counter_50M==MAX_COUNT)
counter_50M <= 0;
else
counter_50M <=counter_50M+1'b1;
assign counter_en=counter_50M==0;
always @(posedge clk_fpga,posedge reset)
if (reset)
counter_10 <=0;
else if (counter_en)
if(counter_10==9)
counter_10<=0;
else
counter_10<=counter_10+1'b1;
assign led=counter_10==9;

endmodule


