`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2021 09:06:39 PM
// Design Name: 
// Module Name: deco3_8
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


module deco3_8(
    input logic entrada [2:0], 
    input logic  enable,
    output logic salida [7:0]
    );

    deco2_4  deco_low(entrada[1:0], ~entrada[2] & enable, salida[3:0]);
    deco2_4 deco_high(entrada[1:0],  entrada[2] & enable, salida[7:4]);
    
endmodule
