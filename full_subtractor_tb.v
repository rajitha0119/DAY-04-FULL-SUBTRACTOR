`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2023 10:04:43
// Design Name: 
// Module Name: full_subtractor_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_subtractor_tb();
reg a;
reg b;
reg bin;
wire diff;
wire borrow;
full_subtractor sr(.a(a) ,.b(b) ,.bin(bin) ,.diff(diff) ,.borrow(borrow));
initial begin
#100 a=0; b=0; bin=0;
#100 a=0; b=0; bin=1;
#100 a=0; b=1; bin=0;
#100 a=0; b=1; bin=1;
#100 a=1; b=0; bin=0;
#100 a=1; b=0; bin=1;
#100 a=1; b=1; bin=0;
#100 a=1; b=1; bin=1;
end
endmodule
