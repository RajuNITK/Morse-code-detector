`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:37:45 02/03/2017
// Design Name:   Universal_shift_register
// Module Name:   C:/Users/student/Desktop/70-82/Univesal_Shift_Register/test_case.v
// Project Name:  Univesal_Shift_Register
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Universal_shift_register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_case;

	// Inputs
	reg [7:0] signal_input;
	reg [1:0] select;
	reg new_bit;
	reg CLK;

	// Outputs
	wire [7:0] signal_output;

	// Instantiate the Unit Under Test (UUT)
	Universal_shift_register uut (
		.signal_input(signal_input), 
		.signal_output(signal_output), 
		.select(select), 
		.new_bit(new_bit), 
		.CLK(CLK)
	);
always begin
		#100 CLK=~CLK;
    end
	initial begin
		// Initialize Inputs
		signal_input = 0;
		select = 0; 
		new_bit = 0;
		CLK = 0; 

		// Wait 100 ns for global reset to finish

		// Add stimulus here
#180;
		signal_input = 8'b10001100;
		select = 2'b01;
		new_bit = 0;
		 
#180;
		signal_input = 8'b10001100;
		select = 2'b10;
		new_bit = 0;
		
#180;
		signal_input = 8'b10001100;
		select = 2'b11;
		new_bit = 0;

#180;
		signal_input = 8'b10001100;
		select = 2'b00;
		new_bit = 0;

end
      
endmodule

