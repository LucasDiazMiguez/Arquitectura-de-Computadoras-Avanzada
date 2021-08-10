`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2021 08:43:18 PM
// Design Name: 
// Module Name: deco2_4
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


module deco2_4(
    input logic in [1:0], 
    input logic  sel,
    output logic out [3:0]
    );
    assign out[3]=  in[1] &  in[0] & sel;
    assign out[2]=  in[1] & ~in[0] & sel;
    assign out[1]= ~in[1] &  in[0] & sel;
    assign out[0]= ~in[1] & ~in[0] & sel; 
endmodule
