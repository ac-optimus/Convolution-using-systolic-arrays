`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2018 05:31:19 AM
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


module add(Co,sum,A,B,Cin);
    input A,B,Cin;
    output Co,sum;
    wire w1,w2,w3;
    xor(sum,A,B,Cin);
    and(w1,A,B);
    and(w2,A,Cin);
    and(w3,B,Cin);
    or(Co,w1,w2,w3);
endmodule
