`timescale 1ns / 1ps
//floating point multiplier

module RCA(out,a,b,clk,an,seg);
    input clk;
	input [7:0]a,b;
	output [7:0] out;
	output [3:0]an;  //what about this??
	output [6:0] seg;   //this wont change
	wire dp;
	floatingPntMult m1(out,a,b,clk);
	seg7decimal s1(out,clk,0,seg,an,0);
endmodule