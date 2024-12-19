`timescale 1ns / 1ps
module tb_add2;
reg [15:0] A, B;
wire [15:0]SUM;
integer CNT;
integer ANS;
ADD2 ADD2(
    .A                      (A),
    .B                      (B),
    .SUM                    (SUM)
);
initial begin
    $dumpfile("add2.vcd");  // gtkwave
	$dumpvars;
    A = 16'd0;
    B = 16'd0;
    for(CNT = 0; CNT < 256; CNT = CNT + 1) begin
        A = 16'd5000; B = $urandom % 65536;
	    #10;
        ANS = A + B;
        $display("A = %d, B = %d, SUM = %d, ANS = %d", A, B, SUM, ANS);
        if(ANS[16:0] != SUM) begin
            $display("\n==========Simulation failed==========\n");
            $finish;
        end
    end
    $display("\n==========Simulation pass==========\n");
    $finish;
end
endmodule