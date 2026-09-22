`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2026 19:00:59
// Design Name: 
// Module Name: alu
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


module alu(
    input [7:0] a,
    input [7:0] b,
    input [2:0] op,
    output reg [8:0] y
    );   
    always @(*) begin
    case(op)
        3'b000   : y = {1'b0 ,~a}; //LOGICAL NOT OF A 
        3'b001   : y = a & b;      // BITWISE AND OPETATION BETWEEN A AND B
        3'b010   : y = a | b;      // BITWISE OR OPETATION BETWEEN A AND B
        3'b011   : y = a + b;       // ARITHMETIC ADDITION OPERATION 
        3'b100   : y = a - b;       //ARITHMETIC SUBTRACTION OPERATION 
        3'b101   : y = a ^ b;       //LOGICAL EXOR OPETATION BETWEEN A AND B
        3'b110   : y = a<<1;        // BITWISE LEFT SHIFT OPERATION 
        3'b111   : y = a>>1;        //BITWISE RIGHT SHIFT OPERATION 
        default  : y = 8'd0;
    endcase
    end    
endmodule
