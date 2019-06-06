`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:38:00 02/08/2017
// Design Name:   Transmitter_Receiver
// Module Name:   D:/70-82/Univesal_Shift_Register/testbench.v
// Project Name:  Univesal_Shift_Register
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Transmitter_Receiver
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg [7:0] signal_input;
	reg select1;
	reg select2;
	reg CLK;

	// Outputs
	wire [7:0] signal_output;

	// Instantiate the Unit Under Test (UUT)
	Transmitter_Receiver uut (
		.signal_input(signal_input), 
		.signal_output(signal_output), 
		.select1(select1), 
		.select2(select2), 
		.CLK(CLK)
	);
	always begin
		#100 CLK=~CLK;
   end
	initial begin
	
		// Initialize Inputs
		signal_input = 0;
		select1 = 0;
		select2 = 0;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
		signal_input = 8'b10011001;
		select1 = 2'b01;
		select2 = 2'b00;
		#180
		signal_input = 8'b10011001;
		select1 = 2'b10;
		select2 = 2'b10;
		#1800
		
		
        
		// Add stimulus here

	end
      
endmodule

