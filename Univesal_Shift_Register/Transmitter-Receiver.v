`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:45:40 02/04/2017 
// Design Name: 
// Module Name:    Transmitter-Receiver 
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
module Transmitter_Receiver(signal_input, signal_output, select1, select2, CLK);
	input [7:0] signal_input;
	input CLK, select1, select2;
	//reg signal_output_ps[7:0];
	output [7:0]signal_output;
	reg serial_output;
	usr_trx trasmitter_part(signal_input, serial_output, select1, CLK);
	Receiver receiver_part(signal_output, serial_output, select2, CLK, overflow_bit);
	//signal_output = {signal_output_ps[6:0],overflow_bit};


endmodule
