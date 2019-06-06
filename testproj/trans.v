`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:31:53 04/02/2017 
// Design Name: 
// Module Name:    trans 
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

module transmiter(serial_inp, parallel_out0,parallel_out1, clk,rst, mid_clk);
input serial_inp;
output reg parallel_out0;
output reg parallel_out1;
output mid_clk;
//output output_clk;
input clk;
input rst;


reg [2:0]q = 0;

clockdivider clockdivide_a(
.in_clk(clk),
.rst(rst),
.out_clk(mid_clk)
);


always@(posedge mid_clk)
begin
	

	q[2] <= (((q[2])^(q[1]))&(~q[0])&(serial_inp)) | (q[2]&q[0]&(~serial_inp));
	q[1] <= ((~q[2])&(q[1])&(~q[0])&(~serial_inp))| ((q[2]^serial_inp)&q[0]) | ((q[2])&(q[1])&(serial_inp));
	q[0] <= ((~q[2])&(~q[0])&(~serial_inp)) | ((q[2])&(~q[1])&((~q[0])|(serial_inp))) ;
	
	parallel_out1 <= ((q[2])&(q[1]));
	parallel_out0 <= (q[1])&((q[2])|(q[0]));
	

end

//output_clk = mid_clk;
//clockdivider instance(
//.out_clk(clk)
//);

endmodule
