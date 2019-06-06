`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:52:45 04/04/2017 
// Design Name: 
// Module Name:    rec_new 
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
module rec_new(mid_clk, s_out, ter, clk, rst, serial_inp);


input serial_inp;
input ter;
input rst;
input clk;

wire [1:0]mod_pin;

reg state;
reg next_state;

output mid_clk;
output reg [7:0]s_out;


parameter   A=8'h08,
				B=8'h00, 
				C=8'h31,
				D=8'h01,
				E=8'h30,
				F=8'h38,
				G=8'h21,
				H=8'h48,
				I=8'h79,
				J=8'h43,
				K=8'h48,
				L=8'h71,
				M=8'h00,
				N=8'h00,
				O=8'h01,
				P=8'h18,
				Q=8'h00,
				R=8'h08,
				S=8'h24,
				T=8'h70,
				U=8'h41,
				V=8'h00,
				W=8'h00,
				X=8'h00,
				Y=8'h44,
				Z=8'h00,
				ONE=8'h4f,
				TWO=8'h12,
				THREE=8'h06,
				FOUR=8'h4c,
				FIVE=8'h24,
				SIX=8'h20,
				SEVEN=8'h0f,
				EIGHT=8'h00,
				NINE=8'h08,
				ZERO=8'h01,
				reset_state = 8'hff;
				

clockdivider clockdivide_a(
.in_clk(clk),
.rst(rst),
.out_clk(mid_clk)
);





endmodule
