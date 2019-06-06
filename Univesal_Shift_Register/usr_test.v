`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:54:50 02/05/2017
// Design Name:   usr_trx
// Module Name:   D:/70-82/Univesal_Shift_Register/usr_test.v
// Project Name:  Univesal_Shift_Register
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: usr_trx
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module usr_test;

	// Inputs
	reg [7:0] signal_input;
	reg [1:0] select;
	reg CLK;

	// Outputs
	wire [7:0] signal_output;
	wire serial_output;

	// Instantiate the Unit Under Test (UUT)
	usr_trx uut (
		.signal_input(signal_input), 
		.signal_output(signal_output), 
		.serial_output(serial_output), 
		.select(select), 
		.CLK(CLK)
	);
always begin
		#100 CLK=~CLK;
    end
	initial begin
		// Initialize Inputs
		signal_input = 0;
		select = 0; 
		
		CLK = 0; 

		// Wait 100 ns for global reset to finish

		// Add stimulus here
#180;
		signal_input = 8'b10001100;
		select = 2'b01;
	
		 
#180;
		signal_input = 8'b10001100;
		select = 2'b10;
	
		
#180;
		signal_input = 8'b10001100;
		select = 2'b11;
		
#180;
		signal_input = 8'b10001100;
		select = 2'b00;
		
end
      
endmodule

