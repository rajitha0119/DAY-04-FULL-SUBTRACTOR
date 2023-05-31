`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2023 09:54:52
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor(
    input a,
    input b,
    input bin,
    output diff,
    output borrow
    );
    wire [0:4]r;
    xor x1(diff,a,b,bin);
    not n1(r[0],a);
    and a1(r[1],r[0],bin);
    and a2(r[2],r[0],b);
    and a3(r[3],b,bin);
    or o1(borrow,r[1],r[2],r[3]);
    
endmodule
