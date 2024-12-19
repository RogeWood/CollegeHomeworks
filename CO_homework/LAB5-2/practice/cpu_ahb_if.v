module cpu_ahb_if(
    // AHB inputs
	HCLK,
	HRESETn,
	S_HSEL,
	S_HADDR,
	S_HBURST,
	S_HTRANS,
	S_HSIZE,
	S_HWRITE,
	S_HWDATA,
	S_HPROT,
	// AHB outputs
	S_HREADY, 
	S_HRDATA,
	S_HRESP
);
input 					  HCLK;
input 					  HRESETn;
input 					  S_HSEL;
input			   [31:0] S_HADDR;
input			    [2:0] S_HBURST;
input			    [1:0] S_HTRANS;
input			    [2:0] S_HSIZE;
input 					  S_HWRITE;
input			   [31:0] S_HWDATA;
input			    [3:0] S_HPROT;
output 					  S_HREADY;
output			   [31:0] S_HRDATA;
output					  S_HRESP;

wire 					  cpu_rstn;

wire 				[4:0] ahb_rf_addr;
wire 			   [31:0] ahb_rf_data;
wire 			   [10:0] ahb_im_addr;
wire 			   [31:0] ahb_im_din;
wire 					  ahb_im_wen;
wire 			   [31:0] ahb_im_dout;
wire 			   [10:0] ahb_dm_addr;
wire 			   [31:0] ahb_dm_din;
wire 					  ahb_dm_wen;
wire 			   [31:0] ahb_dm_dout;

cpu_top cpu_top(
	.clk				(HCLK				),
	.rstn				(cpu_rstn			),
	.ahb_rf_addr		(ahb_rf_addr		),
	.ahb_rf_data		(ahb_rf_data		),
	.ahb_im_addr		(ahb_im_addr		),
	.ahb_im_din			(ahb_im_din			),
	.ahb_im_dout		(ahb_im_dout		),
	.ahb_im_wen			(ahb_im_wen			),
	.ahb_dm_addr		(ahb_dm_addr		),
	.ahb_dm_din			(ahb_dm_din			),
	.ahb_dm_dout		(ahb_dm_dout		),
	.ahb_dm_wen			(ahb_dm_wen			)
);

ahb_ctrl ahb_ctrl(
	.clk				(HCLK				),
	.rstn				(HRESETn			),
	.ahb_we				(S_HWRITE			),
	.ahb_write_data		(S_HWDATA			),
	.ahb_addr			(S_HADDR			),
	.ahb_ready			(S_HREADY			),
	.ahb_resp			(S_HRESP			),
	.ahb_read_data		(S_HRDATA			),
	.cpu_rstn			(cpu_rstn			),
	.ahb_rf_addr		(ahb_rf_addr		),
	.ahb_rf_data		(ahb_rf_data		),
	.ahb_im_addr		(ahb_im_addr		),
	.ahb_im_din			(ahb_im_din			),
	.ahb_im_wen			(ahb_im_wen			),
	.ahb_im_dout		(ahb_im_dout		),
	.ahb_dm_addr		(ahb_dm_addr		),
	.ahb_dm_din			(ahb_dm_din			),
	.ahb_dm_wen			(ahb_dm_wen			),
	.ahb_dm_dout		(ahb_dm_dout		)
);
endmodule