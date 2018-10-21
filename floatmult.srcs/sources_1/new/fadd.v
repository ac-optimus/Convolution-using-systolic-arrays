`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2018 10:55:54 AM
// Design Name: 
// Module Name: fadd
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


module fadd(S,A,B,C);
    input [3:0] A,B;
    input C;
    output [4:0]S;
    wire w1,w2,w3;
    add a1(w1,S[0],A[0],B[0],C);
    add a2(w2,S[1],A[1],B[1],w1);
    add a3(w3,S[2],A[2],B[2],w2);
    add a4(S[4],S[3],A[3],B[3],w3);
endmodule
