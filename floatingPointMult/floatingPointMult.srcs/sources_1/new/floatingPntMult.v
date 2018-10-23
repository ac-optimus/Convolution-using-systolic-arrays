`timescale 1ns / 1ps


module floatingPntMult(out,a,b);
    //a,b floating point numbers
    input [7:0]a,b;
    output reg [7:0]out;
    wire [3:0]w1,w0;
    wire w2;
    wire [9:0]w3;//mantisa multiplication
    reg [4:0]m1,m2;//multiplicands
   always@(a,b)
    begin 
        m1[4] = 1;
        m1[3:0] = a[3:0];
        m2[4] = 1;
        m2[3:0] = b[3:0];
    end
    
    nBitMult   n1(w3,m1,m2);  //multipliy mantisa
    fullAdder  n2(w1,a[6:4],b[6:4],0 );                 //add exponent
    fullAdder  n3(w0,w1,101,0);  //2's compliment,3
    //normalization
    fullAdder  n4(out[6:4],w0,1,0);    
    always@(w3)
        begin
            out[3:0]=w3[9:6];
        end
    
    
endmodule
