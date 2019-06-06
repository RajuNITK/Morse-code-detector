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

parameter A = ,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,ONE,TWO,THREE,FOUR,FIVE,SIX,SEVEN,EIGHT,NINE,ZERO,reset_state;

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
	state <= 8'hff;
	next_state <= 8'hff;
	end
	
	
	
	case(state)
	
	8'hff: 
	if (mod_pin0==0 & mod_pin1==0)
	begin
	state<= state;
	s_out <= 8'hff;
	end
	
	else if(mod_pin0==0 & mod_pin1==1)
	begin 
	state<= 8'h30;
	s_out <= 8'hff;
	end
	
	else if (mod_pin0==1 & mod_pin1==1)
	begin
	state <= 8'h70;
	s_out <= 8'hff;
	end
	
	else if(mod_pin0==1 & mod_pin1==0)
	begin
	state <= 8'hff;
	s_out <= 8'hff;
	end
	
	8'h30: 
	if (mod_pin0==0 & mod_pin1==0)
	begin
	state<= state;
	s_out <= 8'hff;
	end
	
	else if(mod_pin0==0 & mod_pin1==1)
	begin 
	state<= 8'h79;
	s_out <= 8'hff;
	end
	
	else if (mod_pin0==1 & mod_pin1==1)
	begin
	state <= 8'h08;
	s_out <= 8'hff;
	end
	
	else if(mod_pin0==1 & mod_pin1==0)
	begin
	state <= 8'hff;
	s_out <= 8'h30;
	end
	
	8'h08:
	if (mod_pin0==0 & mod_pin1==0)
	begin
	state<= state;
	s_out <= 8'hff;
	end
	
	else if(mod_pin0==0 & mod_pin1==1)
	begin 
	state<= 8'h08;
	s_out <= 8'hff;
	end
	
	else if (mod_pin0==1 & mod_pin1==1)
	begin
	state <= 8'hff;
	s_out <= 8'hff;
	end
	
	else if(mod_pin0==1 & mod_pin1==0)
	begin
	state <= 8'hff;
	s_out <= 8'h08;
	end	
	
	8'h70:
	if (mod_pin0==0 & mod_pin1==0)
	begin
	state<= state;
	s_out <= 8'hff;
	end
	
	else if(mod_pin0==0 & mod_pin1==1)
	begin 
	state<= 8'hff;
	s_out <= 8'hff;
	end
	
	else if (mod_pin0==1 & mod_pin1==1)
	begin
	state <= 8'hff;
	s_out <= 8'hff;
	end
	
	else if(mod_pin0==1 & mod_pin1==0)
	begin
	state <= 8'hff;
	s_out <= 8'h70;
	end	
	
	
	
	endcase

end
endmodule
