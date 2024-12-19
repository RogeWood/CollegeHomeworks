`timescale 1ns/1ps
`include "cpu_ahb_if.v"
`include "cpu_top.v"
`include "ahb_ctrl.v"
`include "simulation_model/fp_add.v"
`include "simulation_model/fp_mul.v"
`include "if_pipe.v"
`include "id_pipe.v"
`include "ex_pipe.v"
`include "mem_pipe.v"
`include "forwarding_unit.v"
`include "rf.v"
`include "fp_rf.v"
`include "id_dcu.v"
`include "sram.v"

`define acc_num     32'd2046
`define im_base     32'h40000000 
`define dm_base     32'h40002000 
`define cpu_rstn    32'h40008004
`define rf6         32'h40004018

module ahb_tb;
reg                       clk;
reg                       rstn;

reg                [31:0] S_HADDR;
reg                       S_HWRITE;
reg                [31:0] S_HWDATA;
wire                      S_HREADY;
wire               [31:0] S_HRDATA;
wire                      S_HRESP;

integer                   im_list_file;
integer                   param_data;
integer                   im_addr;
integer                   dm_addr;
integer                   i;
integer                   cycles;
integer                   rf_6_data;
integer                   ans_data;

reg                [31:0] instr[0:2048];

cpu_ahb_if cpu_ahb_if(
    .HCLK         (clk        ),
    .HRESETn      (rstn       ),
    .S_HSEL       (1'b1       ),
    .S_HADDR      (S_HADDR    ),
    .S_HBURST     (           ),
    .S_HTRANS     (           ),
    .S_HSIZE      (           ),
    .S_HWRITE     (S_HWRITE   ),
    .S_HWDATA     (S_HWDATA   ),
    .S_HPROT      (           ),
    .S_HREADY     (S_HREADY   ),
    .S_HRDATA     (S_HRDATA   ),
    .S_HRESP      (S_HRESP    )
);
initial begin
    clk <= 1'b1;
    im_addr <= `im_base;
    dm_addr <= `dm_base + 32'd4;
    rf_6_data <= 32'd0;
    ans_data  <= 32'd0;
    #10;
    rstn <= 1'b0;
    #10;
    rstn <= 1'b1;
    
    //read im file
    $readmemh("im_data/im.txt", instr);

    //write im
    for(i = 0; i < 40  && instr[i]; i = i + 1) begin
        ahb_write(im_addr, instr[i]);
        im_addr = im_addr + 32'd4;
        // $display("im_addr: %d \n", im_addr);
    end

    //write dm
    ahb_write(`dm_base, `acc_num * 4);
    for(i = 0; i < 2047; i = i + 1) begin
        ahb_write(dm_addr, 32'h3f800000);
        dm_addr = dm_addr + 32'd4;
    end

    //cpu_rstn = 1, cpu start
    ahb_write(`cpu_rstn, 32'd1);
    while( rf_6_data != 32'd1234) begin
        ahb_read(`rf6, rf_6_data);
    end

    memory_dump();
    
    // cpu_rstn = 0, cpu stop
    ahb_write(`cpu_rstn, 32'd0);
    
    //read_dm
    ahb_read(`dm_base + (`acc_num * 4) + 4, ans_data);
    ahb_read(`dm_base + (`acc_num * 4) + 4, ans_data);
    $display("ans: %h", ans_data);

    //cpu_rstn = 1, cpu start
    ahb_write(`cpu_rstn, 32'd1);
    while( rf_6_data != 32'd1234) begin
        ahb_read(`rf6, rf_6_data);
    end

    memory_dump();
    
    // cpu_rstn = 0, cpu stop
    ahb_write(`cpu_rstn, 32'd0);
    
    //read_dm
    ahb_read(`dm_base + (`acc_num * 4) + 4, ans_data);
    ahb_read(`dm_base + (`acc_num * 4) + 4, ans_data);
    $display("ans: %h", ans_data);

    $finish;
end
always #(5) clk = ~clk;


initial begin
    $dumpfile("cpu_hw.vcd");
    $dumpvars;
    //$fsdbDumpfile("./cpu_hw.fsdb");
    //$fsdbDumpvars();
    //$fsdbDumpMDA;
end

task ahb_write;
    input [31:0] addr;
    input [31:0] data;
    begin
        S_HADDR <= addr;
        S_HWRITE <= 1'b1;
        S_HWDATA <= data;
        #10;
    end
endtask

task ahb_read;
    input [31:0] addr;
    output [31:0] data;
    begin
        S_HADDR <= addr;
        S_HWRITE <= 1'b0;
        #10;
        data = S_HRDATA;
    end
endtask

task memory_dump;
    begin
        $display("R00-R07: %08x %08x %08x %08x %08x %08x %08x %08x", cpu_ahb_if.cpu_top.ID.rf.REG_I[0], cpu_ahb_if.cpu_top.ID.rf.REG_I[1], cpu_ahb_if.cpu_top.ID.rf.REG_I[2], cpu_ahb_if.cpu_top.ID.rf.REG_I[3],cpu_ahb_if.cpu_top.ID.rf.REG_I[4], cpu_ahb_if.cpu_top.ID.rf.REG_I[5], cpu_ahb_if.cpu_top.ID.rf.REG_I[6], cpu_ahb_if.cpu_top.ID.rf.REG_I[7]);
        $display("R08-R15: %08x %08x %08x %08x %08x %08x %08x %08x", cpu_ahb_if.cpu_top.ID.rf.REG_I[8], cpu_ahb_if.cpu_top.ID.rf.REG_I[9], cpu_ahb_if.cpu_top.ID.rf.REG_I[10], cpu_ahb_if.cpu_top.ID.rf.REG_I[11],cpu_ahb_if.cpu_top.ID.rf.REG_I[12], cpu_ahb_if.cpu_top.ID.rf.REG_I[13], cpu_ahb_if.cpu_top.ID.rf.REG_I[14], cpu_ahb_if.cpu_top.ID.rf.REG_I[15]);
        $display("R16-R23: %08x %08x %08x %08x %08x %08x %08x %08x", cpu_ahb_if.cpu_top.ID.rf.REG_I[16], cpu_ahb_if.cpu_top.ID.rf.REG_I[17], cpu_ahb_if.cpu_top.ID.rf.REG_I[18], cpu_ahb_if.cpu_top.ID.rf.REG_I[19],cpu_ahb_if.cpu_top.ID.rf.REG_I[20], cpu_ahb_if.cpu_top.ID.rf.REG_I[21], cpu_ahb_if.cpu_top.ID.rf.REG_I[22], cpu_ahb_if.cpu_top.ID.rf.REG_I[23]);
        $display("R24-R31: %08x %08x %08x %08x %08x %08x %08x %08x\n", cpu_ahb_if.cpu_top.ID.rf.REG_I[24], cpu_ahb_if.cpu_top.ID.rf.REG_I[25], cpu_ahb_if.cpu_top.ID.rf.REG_I[26], cpu_ahb_if.cpu_top.ID.rf.REG_I[27],cpu_ahb_if.cpu_top.ID.rf.REG_I[28], cpu_ahb_if.cpu_top.ID.rf.REG_I[29], cpu_ahb_if.cpu_top.ID.rf.REG_I[30], cpu_ahb_if.cpu_top.ID.rf.REG_I[31]);

        $display("F00-F07: %08x %08x %08x %08x %08x %08x %08x %08x", cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[0], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[1], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[2], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[3],cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[4], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[5], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[6], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[7]);
        $display("F08-F15: %08x %08x %08x %08x %08x %08x %08x %08x", cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[8], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[9], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[10], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[11],cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[12], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[13], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[14], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[15]);
        $display("F16-F23: %08x %08x %08x %08x %08x %08x %08x %08x", cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[16], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[17], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[18], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[19],cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[20], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[21], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[22], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[23]);
        $display("F24-F31: %08x %08x %08x %08x %08x %08x %08x %08x\n", cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[24], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[25], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[26], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[27],cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[28], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[29], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[30], cpu_ahb_if.cpu_top.ID.fp_rf.REG_F[31]);
        
        $display("%04d   : %08x %08x %08x %08x %08x %08x %08x %08x", `acc_num - 22, cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 22],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 21],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 20],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 19],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 18],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 17],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 16],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 15]);
        $display("%04d   : %08x %08x %08x %08x %08x %08x %08x %08x", `acc_num - 14, cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 14],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 13],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 12],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 11],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 10],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 9],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 8],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 7]);
        $display("%04d   : %08x %08x %08x %08x %08x %08x %08x %08x\n\n", `acc_num - 6, cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 6],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 5],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 4],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 3],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 2],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num - 1],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num],cpu_ahb_if.cpu_top.MEM.data_mem.mem[`acc_num + 1]);
    end
endtask
endmodule

