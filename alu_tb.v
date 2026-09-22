`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2026 19:35:21
// Design Name: 
// Module Name: alu_tb
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

module alu_tb;
reg [7:0] a;
reg [7:0] b;
reg [2:0] op;
wire [8:0] y;
alu uut(.a(a), .b(b),.op(op),.y(y));
     initial begin
     a= 8'd17;
     b =8'd10; 
    # 10 op = 000;
    # 10 op = 000;
    # 10 op = 001;
    # 10 op = 010;
    # 10 op = 011;
    # 10 op = 100;
    # 10 op = 101;
    # 10 op = 110;
    # 10 op = 111;
    #10 $finish; end
    initial
    $monitor("time : %t | a : %d  | b : %d | op : %d  | y : %d", $time , a,b, op,y );
endmodule
