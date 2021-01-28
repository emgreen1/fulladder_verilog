`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2021 03:37:07 PM
// Design Name: 
// Module Name: fulladder_tb
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


module fulladder_tb();

    //Inputs
    reg Cin; 
    reg A; 
    reg B; 
    
    //Outputs
    wire Sum; 
    wire Cout;
    
    //Instantiate the UUT
    fulladder_wrapper UUT(
        .a(A),
        .b(B), 
        .cin(Cin),
        .cout(Cout),
        .sum(Sum)
    );
    
    //one bit register to hold the real sum we will use to check
    reg [1:0] real_sum; 
    integer i = 0; 
    
    initial
    begin 
        //Initialize input registers
        Cin = 0; 
        A = 0; 
        B = 0; 
        
        //wait ten timescales then display starting message
        #10 $display("Starting Test"); 
        
        //for every bit combination of 3 bits
        for (i = 0; i < 8; i = i + 1)
        begin
            {Cin, A, B} = i;    //assign the bits of i to our input registers
            real_sum = A + B + Cin;     //find the expected sum 
            
            #10 $display("Cin A B = %b%b%b, {Cout, Sum} = %b%b, real sum = %b", Cin, A, B, Cout, Sum, real_sum);
            if ({Cout, Sum} != real_sum)
                $display("Error, {Cout, Sum} should be %b, is %b", real_sum, {Cout, Sum}); 
        end
    end
endmodule
