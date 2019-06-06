`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:47:48 02/04/2017 
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
module Receiver(signal_output, serial_input, select, CLK, overflow_bit);
	//reg [7:0]signal_input;
	input [1:0]select;
	input CLK;
	output reg [7:0]signal_output;
	output reg overflow_bit;
	input serial_input;
	reg parity1;
	reg signal_output_ps[7:0];
	
	
	always@(posedge CLK)
	begin
		case(select)
		
			2'b00: signal_output <= 0;
			2'b01: signal_output <= signal_output;
			2'b10: 
			begin
			//serial_output <= signal_input[0];
			signal_output_ps <={serial_input,signal_output[7:1]};
			overflow_bit <= signal_output[0];
			signal_output = {signal_output_ps[6:0],overflow_bit};
			end
			
			2'b11: signal_output <={signal_output[6:0], 0};
			
		endcase
		parity1 <= signal_output[0]^signal_output[1]^signal_output[2]^signal_output[3]^signal_output[4]^signal_output[5]^signal_output[6]^signal_output[7];
	end
			


endmodule
