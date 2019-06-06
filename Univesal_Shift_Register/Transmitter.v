`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:47:10 02/04/2017 
// Design Name: 
// Module Name:    Transmitter 
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
module Transmitter(signal_input, signal_output1, CLK);
	input [7:0] signal_input;
	reg pairity_bit;
	output reg signal_output1;
	
	usr_trx Trans_register(signal_input, signal_output, serial_output select, CLK);
	
	
	
		
	


endmodule
