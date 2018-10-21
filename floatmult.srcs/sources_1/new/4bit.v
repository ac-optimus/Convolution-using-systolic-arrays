`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2018 10:39:38 AM
// Design Name: 
// Module Name: 4bit
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


module bit4(O,x,y);
    input [3:0] x,y;
    output [7:0]O;
    wire [3:0] A,B;
    wire [4:0] w;
    begin
        assign O[0]=x[0]&y[0];
        assign A[0]=x[0]&y[1];
        assign A[1]=x[0]&y[2];
        assign A[2]=x[0]&y[3];
        assign A[3]=0;
        assign B[0]=x[1]&y[0];
        assign B[1]=x[1]&y[1];
        assign B[2]=x[1]&y[2];
        assign B[3]=x[1]&y[3];
    end
    fadd fa1(w,A,B,0);
    begin
        assign O[1]=w[0];
        assign A[0]=w[1];
        assign A[1]=w[2];
        assign A[2]=w[3];
        assign A[3]=w[4];
        assign B[0]=x[2]&y[0];
        assign B[1]=x[2]&y[1];
        assign B[2]=x[2]&y[2];
        assign B[3]=x[2]&y[3];
    end
    fadd fa2(w,A,B,0); 
    begin
        assign O[2]=w[0];
        assign A[0]=w[1];
        assign A[1]=w[2];
        assign A[2]=w[3];
        assign A[3]=w[4];
        assign B[0]=x[3]&y[0];
        assign B[1]=x[3]&y[1];
        assign B[2]=x[3]&y[2];
        assign B[3]=x[3]&y[3];
    end
    fadd fa3(w,A,B,0);
    begin
        assign O[3]=w[0];
        assign O[4]=w[1];
        assign O[5]=w[2];
        assign O[6]=w[3];
        assign O[7]=w[4];
    end
endmodule
