`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2018 10:59:51 AM
// Design Name: 
// Module Name: add
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


module add(Co,S,A,B,C);
    input A,B,C;
    output Co,S;
    xor(S,A,B);
    wire w1,w2,w3;
    and(w1,A,B);
    and(w2,A,C);
    and(W3,B,C);
    or(Co,w1,w2,w3);
endmodule
