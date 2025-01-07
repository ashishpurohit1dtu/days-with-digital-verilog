`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2025 15:14:58
// Design Name: 
// Module Name: tb_half_adder
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
module tb_half_adder;

    // Testbench variables
    reg a;       // First input
    reg b;       // Second input
    wire sum;    // Sum output
    wire cout;   // Carry output

    // Instantiate the half adder module
    half_adder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        // Initialize inputs
        a = 0; b = 0;
        
        // Apply test cases
        #10 a = 0; b = 0;  // Expected sum: 0, Expected carry: 0
        #10 a = 0; b = 1;  // Expected sum: 1, Expected carry: 0
        #10 a = 1; b = 0;  // Expected sum: 1, Expected carry: 0
        #10 a = 1; b = 1;  // Expected sum: 0, Expected carry: 1
        
        // Finish simulation
        #10 $finish;
    end

    initial begin
        // Monitor changes
        $monitor("Time=%0d a=%b b=%b sum=%b cout=%b", $time, a, b, sum, cout);
    end

endmodule