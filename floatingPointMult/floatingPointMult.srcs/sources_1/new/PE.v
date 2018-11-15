//PE for systolic array

module PE(a,b,c,o1,o2,o3,clk);
    input clk;
    input [7:0]a,b,c; //a,b,c are the floating point numeber
    output o1,o2,o3;
    wire [7:0] mul;
    assign o1 = a;
    assign o2 = b;
    floatingPntMult(mul,a,b,clk);
    flotAdd(o3,c,mul,clk);
    endmodule
    