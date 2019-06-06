`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:20 02/05/2017 
// Design Name: 
// Module Name:    usr_trx 
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
module usr_trx(signal_input, serial_output, select, CLK);
	input [7:0]signal_input;
	input [1:0]select;
	input CLK;
	reg parity;
	reg [7:0]signal_output;
	output reg serial_output;
	
	
	always@(posedge CLK)
	begin
	parity = signal_input[0]^signal_input[1]^signal_input[2]^signal_input[3]^signal_input[4]^signal_input[5]^signal_input[6]^signal_input[7];
	
		case(select)
		
			2'b00: signal_output <= signal_output;
			2'b01: signal_output <= signal_input;
			2'b10: 
			begin
			serial_output <= signal_input[0];
			signal_output <={parity,signal_input[7:1]};
			end
			
			2'b11: signal_output <={signal_input[6:0], parity};
			
		endcase
	end
			


endmodule
