`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:35:36 04/05/2017 
// Design Name: 
// Module Name:    rec_fsm 
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
module rec_fsm(mid_clk, s_out, clk, rst, serial_inp, en, dot);

/////////////  INPUTS   /////////////////

input serial_inp;
input rst;
input clk;


/////////// WIRE AND REG ////////////////////

reg [7:0]state = 8'hff;
wire [1:0]p_in;

//////////// OUTPUTS /////////////////

output reg [7:0]s_out;
output mid_clk;
output [3:0]en;
output dot;

////////// parameters /////////

parameter [7:0]reset_state=8'hff;

parameter [7:0]a = 8'h00;
parameter [7:0]b = 8'h01;
parameter [7:0]c = 8'h02;
parameter [7:0]d = 8'h03;
parameter [7:0]e = 8'h04;
parameter [7:0]f = 8'h05;
parameter [7:0]g = 8'h06;
parameter [7:0]h = 8'h07;
parameter [7:0]i = 8'h08;
parameter [7:0]j = 8'h09;
parameter [7:0]k = 8'h0a;
parameter [7:0]l = 8'h0b;
parameter [7:0]m = 8'h0c;
parameter [7:0]n = 8'h0d;
parameter [7:0]o = 8'h0e;
parameter [7:0]p = 8'h0f;
parameter [7:0]q = 8'h10;
parameter [7:0]r = 8'h11;
parameter [7:0]s = 8'h12;
parameter [7:0]t = 8'h13;
parameter [7:0]u = 8'h14;
parameter [7:0]v = 8'h15;
parameter [7:0]w = 8'h16;
parameter [7:0]x = 8'h17;
parameter [7:0]y = 8'h18;
parameter [7:0]z = 8'h19;

parameter [7:0]zero = 8'h20;
parameter [7:0]one = 8'h21;
parameter [7:0]two = 8'h22;
parameter [7:0]three = 8'h23;
parameter [7:0]four = 8'h24;
parameter [7:0]five = 8'h25;
parameter [7:0]six = 8'h26;
parameter [7:0]seven = 8'h27;
parameter [7:0]eight = 8'h28;
parameter [7:0]nine = 8'h29;

parameter [7:0]ds1 = 8'h2a;
parameter [7:0]ds2 = 8'h2b;
parameter [7:0]ds3 = 8'h2c;


clock_divider clk_rec(
.in_clk(clk), //may be prob
.rst(rst),
.out_clk(mid_clk)
);

trans_fsm trans_rec(
.serial_inp(serial_inp),
.rst(rst),
.parallel_out(p_in),
.clk(clk) //may be prob
);

assign en=4'b1110;
assign dot = 1'b1;

always@(posedge mid_clk)
begin

	case(state)
		
		reset_state: //for reset state
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=e;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=t;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'hff;end
		endcase
				
		
		a: //for a
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=r;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=w;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h08;end
		endcase
		
		b: //for b
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=six;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h60;end
		endcase
		
		c: //for c
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h31;end
		endcase
		
		d: //for d
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=b;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=x;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h42;end
		endcase
		
		e: //for e
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=i;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=a;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h30;end
		endcase
		
		f: //for f
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h38;end
		endcase
		
		g: //for g
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=z;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=q;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h21;end
		endcase
		
		h: //for h
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=five;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=four;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h68;end
		endcase
		
		i: //for reset state
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=s;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=u;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h79;end
		endcase
		
		j: //for j
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=one;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h43;end
		endcase
		
		k: //for k
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=c;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=y;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h48;end
		endcase
		
		l: //for l
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h71;end
		endcase
		
		m: //for m
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=g;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=o;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h2a;end
		endcase
		
		n: //for reset state
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=d;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=k;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h6a;end
		endcase
		
		o: //for o
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=ds1;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h63;end
		endcase
		
		p: //for p
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h18;end
		endcase
		
		q: //for q
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h0c;end
		endcase
		
		r: //for r
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=l;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h39;end
		endcase
		
		s: //for o
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=h;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=v;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h24;end
		endcase
		
		t: //for t
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=n;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=m;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h70;end
		endcase
		
		u: //for u
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=f;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=ds3;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h41;end
		endcase
		
		v: //for v
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=three;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h54;end
		endcase
		
		w: //for o
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=p;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=j;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h23;end
		endcase
		
		x: //for x
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h48;end
		endcase
		
		y: //for y
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h44;end
		endcase
		
		z: //for z
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=seven;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h12;end
		endcase
		
		one: //for 1
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h4f;end
		endcase
		
		two: //for 1
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h12;end
		endcase
		
		three: //for 3
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h06;end
		endcase
		
		four: //for 4
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h4c;end
		endcase
		
		five: //for 5
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h24;end
		endcase
		
		six: //for 6
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h20;end
		endcase
		
		seven: //for 7
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h0f;end
		endcase
		
		eight: //for 8
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h00;end
		endcase
		
		nine: //for 1
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h08;end
		endcase
		
		zero: //for 1
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'h01;end
		endcase
		
		ds1: //for ds1
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=eight;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'hff;end
		endcase
		
		ds2: //for ds2
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=nine;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=zero;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'hff;end
		endcase
		
		ds3: //for 1
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=two;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'hff;end
		endcase
		
		default: //for default
		case(p_in)
			2'b00:begin
			state<=state;
			s_out<=8'hff;end
			
			2'b01:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b10:begin
			state<=reset_state;
			s_out<=8'hff;end
			
			2'b11:begin
			state<=reset_state;
			s_out<=8'hff;end
		endcase



	endcase
end
endmodule
