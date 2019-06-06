`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:37:44 04/02/2017 
// Design Name: 
// Module Name:    Receiver 
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
module Receiver(mid_clk, s_out, ter, clk, rst, serial_inp);

input serial_inp;
output reg [7:0]s_out;
input ter;
wire [1:0]mod_pin;
input rst;
input clk;
reg [7:0]state;
reg [7:0]next_state;
output mid_clk;

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

//reg A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,ONE,TWO,THREE,FOUR,FIVE,SIX,SEVEN,EIGHT,NINE,ZERO,reset_state;


clockdivider clockdivide_a(
.in_clk(clk),
.rst(rst),
.out_clk(mid_clk)
);

transmiter transmiter_b(
.serial_inp(serial_inp),
.rst(rst),
.parallel_out0(p_in0),
.parallel_out1(p_in1),
.clk(clk),
.mid_clk(mid_clk)
);

assign mod_pin[0] = p_in0;
assign mod_pin[1] = p_in1 | ter;


always@(posedge mid_clk, posedge ter)
begin

state <= 8'hff;
next_state <= state;


	if (rst) 
	begin
	state <= reset_state;
	next_state <= reset_state;
	end
	
	
	
	case(state)
	
	reset_state: 
	if (mod_pin == 2'b00)
	begin
	state<= state;
	s_out <= reset_state;
	end
	
	else if(mod_pin == 2'b01)
	begin 
	state<= E;
	s_out <= reset_state;
	end
	
	else if (mod_pin == 2'b11)
	begin
	state <= T;
	s_out <= reset_state;
	end
	
	else if(mod_pin == 2'b11)
	begin
	state <= reset_state;
	s_out <= reset_state;
	end
	
	E: 
	if (mod_pin == 2'b00)
	begin
	state<= state;
	s_out <= reset_state;
	end
	
	else if(mod_pin == 2'b01)
	begin 
	state<= I;
	s_out <= reset_state;
	end
	
	else if (mod_pin == 2'b11)
	begin
	state <= R;
	s_out <= reset_state;
	end
	
	else if(mod_pin ==2'b10)
	begin
	state <= reset_state;
	s_out <= E;
	end
	
	A:
	if (mod_pin == 2'b00)
	begin
	state<= state;
	s_out <= reset_state;
	end
	
	else if(mod_pin == 2'b01)
	begin 
	state<= R;
	s_out <= reset_state;
	end
	
	else if (mod_pin == 2'b11)
	begin
	state <= reset_state;
	s_out <= reset_state;
	end
	
	else if(mod_pin == 2'b10)
	begin
	state <= reset_state;
	s_out <= A;
	end	
	
	T:
	if (mod_pin == 2'b00)
	begin
	state<= state;
	s_out <= reset_state;
	end
	
	else if(mod_pin == 2'b01)
	begin 
	state<= reset_state;
	s_out <= reset_state;
	end
	
	else if (mod_pin == 2'b11)
	begin
	state <= reset_state;
	s_out <= reset_state;
	end
	
	else if(mod_pin == 2'b10)
	begin
	state <= reset_state;
	s_out <= T;
	end	
	
	
	
	endcase

end
endmodule
