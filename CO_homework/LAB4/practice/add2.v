module ADD2(
    input [15:0] A,
    input [15:0] B,
    output [15:0] SUM
    );
    //Continuous assignment
    assign SUM = A + B;     
endmodule
