`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2024 06:29:35 AM
// Design Name: 
// Module Name: immediate_gene
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


module immediate_gene #
(parameter INSTRUCTION=32
)
(

    input        [INSTRUCTION-1:0]   instruction,
    output logic [INSTRUCTION-1:0]   i_imme
);

    always_comb begin
          i_imme  = {{20{instruction[31]}}, instruction[31:20]};
    end
endmodule
