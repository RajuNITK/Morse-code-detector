`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:32:27 04/05/2017 
// Design Name: 
// Module Name:    clock_divider 
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
module clock_divider(in_clk, rst, out_clk);

input in_clk;
input rst;
output reg out_clk;

localparam cnst = 25000000;


reg [31:0] count;

always@(posedge in_clk, posedge rst)

begin
	if(rst == 1'b1)
		count <= 32'b0;
	else if (count == cnst - 1)
		count <= 32'b0;
	else
		count <= count + 1;
end

always@(posedge in_clk, posedge rst)
begin
	if(rst == 1'b1)
		out_clk <= 1'b0;
	else if(count == cnst - 1)
		out_clk <= ~out_clk;
	else
		out_clk <= out_clk;
		
end

endmodule
