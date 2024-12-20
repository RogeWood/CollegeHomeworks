module cpu_top(
	clk,
	rstn,
	ahb_rf_addr,
	ahb_rf_data,
	ahb_im_addr,
	ahb_im_din,
	ahb_im_wen,
	ahb_im_dout,
	ahb_dm_addr,
	ahb_dm_din,
	ahb_dm_wen,
	ahb_dm_dout
);
input			  		   clk;
input					   rstn;
input 				 [4:0] ahb_rf_addr;
output 				[31:0] ahb_rf_data;
input 				[10:0] ahb_im_addr;
input 				[31:0] ahb_im_din;
input 					   ahb_im_wen;
output 				[31:0] ahb_im_dout;
input 				[10:0] ahb_dm_addr;
input 				[31:0] ahb_dm_din;
input 					   ahb_dm_wen;
output 				[31:0] ahb_dm_dout;

// instruction fetch
wire 				[31:0] fetch_pc;
wire 				[31:0] fetch_instr;

// instruction decode
wire					   mem_to_reg_dx;
wire					   reg_write_dx;
wire 					   mem_read_dx;
wire					   mem_write_dx;
wire					   jump_dx;
wire					   branch_dx;
wire					   fp_operation_dx;
wire 				[31:0] jump_addr_dx;
wire 				[31:0] pc_dx;
wire 				[31:0] alu_src1;
wire 				[31:0] alu_src2;
wire 				[31:0] alu_src1_fp;
wire 				[31:0] alu_src2_fp;
wire 				[15:0] imm;
wire 				 [4:0] rd_addr_dx;
wire 				[31:0] mem_data_dx;
wire 				[31:0] mem_data_fp_dx;
wire 				 [3:0] alu_ctrl;

// execute
wire 					   mem_to_reg_xm;
wire 					   reg_write_xm;	
wire 					   mem_read_xm;	
wire 					   mem_write_xm;	
wire 					   branch_xm;	
wire 					   fp_operation_xm;			
wire 				[31:0] alu_out_xm;
wire 				[31:0] alu_out_fp_xm;
wire 				[31:0] branch_addr_xm;
wire 				 [4:0] rd_addr_xm;
wire 				[31:0] mem_data_xm;
wire 				[31:0] mem_data_fp_xm;

// mem
wire 					   mem_to_reg_mw;
wire 					   reg_write_mw;
wire 					   fp_operation_mw;
wire 				[31:0] mem_data_to_reg;
wire 				[31:0] mem_data_to_reg_fp;
wire 				[31:0] alu_out_mw;
wire 				[31:0] alu_out_fp_mw;
wire 				 [4:0] rd_addr_mw;

// forwarding unit
wire forwardA; // rs
wire forwardB; // rt
wire [31:0] forwardA_data; // rs data
wire [31:0] forwardB_data; // rt data
wire [31:0] forwardA_data_fp; // rs data
wire [31:0] forwardB_data_fp; // rt data
wire [4:0] rs_addr_reg;      // ID/EX.RegisterRs
wire [4:0] rt_addr_reg;      // ID/EX.RegisterRt
wire [4:0] fp_rs_addr_reg;   // ID/EX.RegisterRs_fp
wire [4:0] fp_rt_addr_reg;   // ID/EX.RegisterRt_fp

if_pipe IF(
	.clk				(clk				),
	.rstn				(rstn				),
	.jump_dx			(jump_dx			),
	.branch_xm			(branch_xm			),
	.jump_addr			(jump_addr_dx		),
	.branch_addr_xm		(branch_addr_xm		),
	.fetch_pc			(fetch_pc			),
	.fetch_instr		(fetch_instr		),
	.ahb_im_addr		(ahb_im_addr		),
	.ahb_im_din			(ahb_im_din			),
	.ahb_im_dout		(ahb_im_dout		),
	.ahb_im_wen			(ahb_im_wen			)
);

id_pipe ID(
	.clk				(clk				),
	.rstn				(rstn				),
	.fetch_pc			(fetch_pc			),
	.fetch_instr		(fetch_instr		),
	.mem_to_reg_mw		(mem_to_reg_mw		),
	.reg_write_mw		(reg_write_mw		),
	.rd_addr_mw			(rd_addr_mw			),
	.mem_data_to_reg	(mem_data_to_reg	),
	.mem_data_to_reg_fp	(mem_data_to_reg_fp	),
	.alu_out_mw			(alu_out_mw			),
	.alu_out_fp_mw		(alu_out_fp_mw		),
	.fp_operation_mw	(fp_operation_mw	),
	.mem_to_reg_dx		(mem_to_reg_dx		),
	.reg_write_dx		(reg_write_dx		),
	.mem_read_dx		(mem_read_dx		),
	.mem_write_dx		(mem_write_dx		),
	.branch_dx			(branch_dx			),
	.jump_dx			(jump_dx			),
	.alu_ctrl			(alu_ctrl			),
	.jump_addr_dx		(jump_addr_dx		),
	.pc_dx				(pc_dx				),
	.alu_src1			(alu_src1			),
	.alu_src2			(alu_src2			),
	.alu_src1_fp		(alu_src1_fp		),
	.alu_src2_fp		(alu_src2_fp		),
	.imm				(imm				),
	.rd_addr_dx			(rd_addr_dx			),
	.mem_data			(mem_data_dx		),
	.mem_data_fp		(mem_data_fp_dx		),
	.fp_operation_dx	(fp_operation_dx	),
	.ahb_rf_addr		(ahb_rf_addr		),
	.ahb_rf_data		(ahb_rf_data		),
    
    // new pipe
    
	.rs_addr_reg        (rs_addr_reg        	),
	.rt_addr_reg        (rt_addr_reg        	),
	.fp_rs_addr_reg     (fp_rs_addr_reg        	),
	.fp_rt_addr_reg     (fp_rt_addr_reg        	)
);

ex_pipe EXE(
	.clk				(clk				),
	.rstn				(rstn				),
	.mem_to_reg_dx		(mem_to_reg_dx		),
	.reg_write_dx		(reg_write_dx		),
	.mem_read_dx		(mem_read_dx		),
	.mem_write_dx		(mem_write_dx		),
	.branch_dx			(branch_dx			),
	.fp_operation_dx	(fp_operation_dx	),
	.alu_ctrl			(alu_ctrl			),
	.pc_dx				(pc_dx				),
	.alu_src1			(alu_src1			),
	.alu_src2			(alu_src2			),
	.alu_src1_fp		(alu_src1_fp		),
	.alu_src2_fp		(alu_src2_fp		),
	.imm				(imm				),
	.rd_addr_dx			(rd_addr_dx			),
	.mem_data_dx		(mem_data_dx		),
	.mem_data_fp_dx		(mem_data_fp_dx		),
	.mem_to_reg_xm		(mem_to_reg_xm		),
	.reg_write_xm		(reg_write_xm		),
	.mem_read_xm		(mem_read_xm		),
	.mem_write_xm		(mem_write_xm		),
	.branch_xm			(branch_xm			),
	.alu_out_xm			(alu_out_xm			),
	.alu_out_fp_xm		(alu_out_fp_xm		),
	.rd_addr_xm			(rd_addr_xm			),
	.mem_data_xm		(mem_data_xm		),
	.mem_data_fp_xm		(mem_data_fp_xm		),
	.branch_addr_xm		(branch_addr_xm		),
	.fp_operation_xm	(fp_operation_xm	),

    // forwarding
    .forwardA(forwardA), // rs
    .forwardB(forwardB), // rt
    .forwardA_data(forwardA_data),    // rs data
    .forwardB_data(forwardB_data),    // rt data
    .forwardA_data_fp(forwardA_data_fp), // rs data
    .forwardB_data_fp(forwardB_data_fp)  // rt data
);

mem_pipe MEM(
	.clk				(clk				),
	.rstn				(rstn				),
	.mem_to_reg_xm		(mem_to_reg_xm		),
	.reg_write_xm		(reg_write_xm		),
	.mem_read_xm		(mem_read_xm		),
	.mem_write_xm		(mem_write_xm		),
	.alu_out_xm			(alu_out_xm			),
	.alu_out_fp_xm		(alu_out_fp_xm		),
	.rd_addr_xm			(rd_addr_xm			),
	.mem_data_xm		(mem_data_xm		),
	.mem_data_fp_xm		(mem_data_fp_xm		),
	.fp_operation_xm	(fp_operation_xm	),
	.mem_to_reg_mw		(mem_to_reg_mw		),
	.reg_write_mw		(reg_write_mw		),
	.alu_out_mw			(alu_out_mw			),
	.alu_out_fp_mw		(alu_out_fp_mw		),
	.mem_data_to_reg	(mem_data_to_reg	),
	.mem_data_to_reg_fp	(mem_data_to_reg_fp	),
	.rd_addr_mw			(rd_addr_mw			),
	.fp_operation_mw	(fp_operation_mw	),
	.ahb_dm_addr		(ahb_dm_addr		),
	.ahb_dm_din			(ahb_dm_din			),
	.ahb_dm_wen			(ahb_dm_wen			),
	.ahb_dm_dout		(ahb_dm_dout		)
);


forwarding_unit fw_unit(
	.clk(clk),
	.rstn(rstn),

    // mem
    .mem_to_reg_mw(mem_to_reg_mw),            // MUX
    .alu_out_mw(alu_out_mw),                  // MemToReg = 0 data
    .alu_out_fp_mw(alu_out_fp_mw),            // MemToReg = 0 fp data
    .mem_data_to_reg(mem_data_to_reg),        // MemToReg = 1 data
    .mem_data_to_reg_fp(mem_data_to_reg_fp),  // MemToReg = 1 fp data
    // ex
    .alu_out_xm(alu_out_xm),                  // alu out data
    .alu_out_fp_xm(alu_out_fp_xm),            // alu out fp data

    // config
    .reg_write_xm(reg_write_xm),  // EX/MEM.RegWrite
    .rd_addr_xm(rd_addr_xm),      // EX/MEM.RegisterRd
    .reg_write_mw(reg_write_mw),  // MEM/WB.RegWrite
    .rd_addr_mw(rd_addr_mw),      // MEM/WB.RegisterRd
    
    .rs_addr_reg(rs_addr_reg),            // ID/EX.RegisterRs
    .rt_addr_reg(rt_addr_reg),            // ID/EX.RegisterRt
    .fp_rs_addr_reg(fp_rs_addr_reg),      // ID/EX.RegisterRs_fp
    .fp_rt_addr_reg(fp_rt_addr_reg),      // ID/EX.RegisterRt_fp

    // output
    .forwardA(forwardA), // rs
    .forwardB(forwardB), // rt
    .forwardA_data(forwardA_data),    // rs data
    .forwardB_data(forwardB_data),    // rt data
    .forwardA_data_fp(forwardA_data_fp), // rs data
    .forwardB_data_fp(forwardB_data_fp)  // rt data
);
endmodule
