module forwarding_unit(
    // mem
    mem_to_reg_mw,      // MUX
    alu_out_mw,         // MemToReg = 0 data
    alu_out_fp_mw,      // MemToReg = 0 fp data
    mem_data_to_reg,    // MemToReg = 1 data
    mem_data_to_reg_fp, // MemToReg = 1 fp data
    // ex
    alu_out_xm,         // alu out data
    alu_out_fp_xm,      // alu out fp data

    // config
    reg_write_xm, // EX/MEM.RegWrite
    rd_addr_xm,   // EX/MEM.RegisterRd
    reg_write_mw, // MEM/WB.RegWrite
    rd_addr_mw,   // MEM/WB.RegisterRd
    
    rs_addr_reg,      // ID/EX.RegisterRs
    rt_addr_reg,      // ID/EX.RegisterRt
    fp_rs_addr_reg,   // ID/EX.RegisterRs_fp
    fp_rt_addr_reg,   // ID/EX.RegisterRt_fp

    // output
    forwardA, // rs
    forwardB, // rt
    forwardA_data,    // rs data
    forwardB_data,    // rt data
    forwardA_data_fp, // rs data
    forwardB_data_fp  // rt data
);

input       reg_write_xm; // EX/MEM.RegWrite
input [4:0] rd_addr_xm;   // EX/MEM.RegisterRd
input       reg_write_mw; // MEM/WB.RegWrite
input [4:0] rd_addr_mw;   // MEM/WB.RegisterRd
input [4:0] rs_addr_reg;      // ID/EX.RegisterRs
input [4:0] rt_addr_reg;      // ID/EX.RegisterRt
input [4:0] fp_rs_addr_reg;   // ID/EX.RegisterRs_fp
input [4:0] fp_rt_addr_reg;   // ID/EX.RegisterRt_fp
// mem
input mem_to_reg_mw;            // MUX
input [31:0] alu_out_mw;         // MemToReg = 0 data
input [31:0] alu_out_fp_mw;      // MemToReg = 0 fp data
input [31:0] mem_data_to_reg;    // MemToReg = 1 data
input [31:0] mem_data_to_reg_fp; // MemToReg = 1 fp data
// ex
input [31:0] alu_out_xm;         // alu out data
input [31:0] alu_out_fp_xm;      // alu out fp data

output reg forwardA; // rs
output reg forwardB; // rt
output reg [31:0] forwardA_data; // rs data
output reg [31:0] forwardB_data; // rt data
output reg [31:0] forwardA_data_fp; // rs data
output reg [31:0] forwardB_data_fp; // rt data



//instruction decoding

always @(*)
begin

    if(reg_write_xm && rd_addr_xm && (rd_addr_xm == rs_addr_reg)) begin
        // $display("reg_write_xm, %d, rd_addr_xm: %d, rs_addr_reg: %d, alu_out_xm", reg_write_xm, rd_addr_xm ,  rs_addr_reg, alu_out_xm);
        forwardA = 1'b1;
        forwardA_data = alu_out_xm;
    // MEM/WB.Regwrite) && (EX/MEM.RegisterRd != 0) && (MEM/WB.RegisterRd == ID/EX.RegisterRs)
    end else if(reg_write_mw && rd_addr_mw && (rd_addr_mw == rs_addr_reg)) begin
        // $display("reg_write_mw, %d, rd_addr_mw: %d, rs_addr_reg: %d, mem_to_reg_mw: %d, alu_out_mw: %d", reg_write_xm, rd_addr_xm ,  rs_addr_reg, mem_to_reg_mw, alu_out_mw);
        forwardA = 1'b1;
        forwardA_data = (mem_to_reg_mw) ? mem_data_to_reg : alu_out_mw;
    end else begin
        forwardA = 1'b0;
    end
    
    //  if (EX/MEM.RegWrite and (EX/MEM.RegisterRd ≠ 0) and (EX/MEM.RegisterRd = ID/EX.RegisterRt))
    if(reg_write_xm && rd_addr_xm && (rd_addr_xm == rt_addr_reg)) begin
        forwardB = 1'b1;
        forwardB_data = alu_out_xm;
    end if(reg_write_mw && rd_addr_mw && (rd_addr_mw == rt_addr_reg)) begin
        forwardB = 1'b1;
        forwardB_data = (mem_to_reg_mw) ? mem_data_to_reg : alu_out_mw;
    end else begin
        forwardB = 1'b0;
    end
    
    // fp
    //  if (EX/MEM.RegWrite and (EX/MEM.RegisterRd ≠ 0) and (EX/MEM.RegisterRd = ID/EX.RegisterRs))
    if(reg_write_xm && rd_addr_xm && (rd_addr_xm == fp_rs_addr_reg)) begin
        forwardA = 1'b1;
        forwardA_data_fp = alu_out_fp_xm;
    end else if(reg_write_mw && rd_addr_mw && (rd_addr_mw == fp_rs_addr_reg)) begin
        forwardA = 1'b1;
        forwardA_data_fp = (mem_to_reg_mw) ? mem_data_to_reg_fp : alu_out_fp_mw;
    end else begin
        forwardA = 1'b0;
    end
    
    
    //  if (EX/MEM.RegWrite and (EX/MEM.RegisterRd ≠ 0) and (EX/MEM.RegisterRd = ID/EX.RegisterRt))
    if(reg_write_xm && rd_addr_xm && (rd_addr_xm == fp_rt_addr_reg)) begin
        forwardB = 1'b1;
        forwardB_data_fp = alu_out_fp_xm;
    end else if(reg_write_mw && rd_addr_mw && (rd_addr_mw == fp_rt_addr_reg)) begin
        forwardB = 1'b1;
        forwardB_data_fp = (mem_to_reg_mw) ? mem_data_to_reg_fp : alu_out_fp_mw;
    end else begin
        forwardB = 1'b0;
    end
end

endmodule
    