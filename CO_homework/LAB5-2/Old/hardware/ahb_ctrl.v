/*****************************
Memory mapp
ZYNQ_BASE			  0x40000000  //base address for 64 sequence of integer
IM_BASE               0x40000000 - 0x40001FFC 8KB
DM_BASE               0x40002000 - 0x40003FFC 8KB
R0_R32_BASE           0x40004000 - 0x4000407C 
CPU_RSTN_OFFSET       0x40008004  //for reset signal
******************************/
module ahb_ctrl #(
    parameter cpu_rstn_addr = 32'h4000_8004,
    parameter im_base = 32'h40000000,
    parameter dm_base = 32'h40002000,
    parameter rf_base = 32'h40004000,
    parameter mem_size = 32'h00002000
)
(
    clk,
    rstn,
    ahb_we,
    ahb_write_data,
    ahb_addr,
    ahb_ready,
    ahb_resp,
    ahb_read_data,

    //cpu
    cpu_rstn,
    
    //rf
    ahb_rf_addr,
    ahb_rf_data,

    //im
    ahb_im_addr,
    ahb_im_din,
    ahb_im_wen,
    ahb_im_dout,

    //dm
    ahb_dm_addr,
    ahb_dm_din,
    ahb_dm_wen,
    ahb_dm_dout
);
input                     clk;
input                     rstn;
input                     ahb_we;
input              [31:0] ahb_write_data;
input              [31:0] ahb_addr;
output                    ahb_ready;
output                    ahb_resp;
output reg         [31:0] ahb_read_data;

//cpu
output reg                cpu_rstn;

//rf
output reg          [4:0] ahb_rf_addr;
input              [31:0] ahb_rf_data;

//im
output reg         [10:0] ahb_im_addr;
output             [31:0] ahb_im_din;
output reg                ahb_im_wen;
input              [31:0] ahb_im_dout;

//dm
output reg         [10:0] ahb_dm_addr;
output             [31:0] ahb_dm_din;
output reg                ahb_dm_wen;
input              [31:0] ahb_dm_dout;

assign ahb_ready = 1'b1;
assign ahb_resp = 1'b0;

assign ahb_im_din = ahb_write_data;
assign ahb_dm_din = ahb_write_data;

//ahb_read_data
always @(*) begin
    if(ahb_addr >= im_base && ahb_addr < im_base + mem_size) begin
        ahb_read_data <= ahb_im_dout;
    end
    else if(ahb_addr >= dm_base && ahb_addr < dm_base + mem_size)begin
        ahb_read_data <= ahb_dm_dout;
    end
    else if(ahb_addr >= rf_base && ahb_addr < rf_base + 32'h80)begin
        ahb_read_data <= ahb_rf_data;
    end
    else begin
        ahb_read_data <= ahb_read_data;
    end
end

//cpu_rstn
always @(posedge clk or negedge rstn) begin
    if(!rstn) begin
        cpu_rstn <= 1'b0;
    end
    else begin
        if(ahb_addr == cpu_rstn_addr && ahb_we == 1'b1) begin
            if(ahb_write_data == 32'd1) begin
                cpu_rstn <= 1'b1;
            end
            else begin
                cpu_rstn <= 1'b0;
            end
        end
        else begin
            cpu_rstn <= cpu_rstn;
        end
    end
end

//ahb_im_addr
always @(*) begin
    if(ahb_addr >= im_base && ahb_addr < im_base + mem_size) begin
        ahb_im_addr <= ahb_addr[12:2];
    end
end
//ahb_im_wen && ahb_im_din
always @(*) begin
    if(ahb_addr >= im_base && ahb_addr < im_base + mem_size && ahb_we) begin
        ahb_im_wen <= 1'b1;
    end
    else begin
        ahb_im_wen <= 1'b0;
    end
end

//ahb_dm_addr
always @(*) begin
    if(ahb_addr >= dm_base && ahb_addr < dm_base + mem_size) begin
        ahb_dm_addr <= ahb_addr[12:2];
    end
    else begin
        ahb_dm_addr <= ahb_dm_addr;
    end
end
//ahb_dm_wen
always @(*) begin
    if(ahb_addr >= dm_base && ahb_addr < dm_base + mem_size && ahb_we) begin
        ahb_dm_wen <= 1'b1;
    end
    else begin
        ahb_dm_wen <= 1'b0;
    end
end

//ahb_rf_addr
always @(*) begin
    if(ahb_addr >= rf_base && ahb_addr < rf_base + 32'h7c) begin
        ahb_rf_addr <= ahb_addr[6:2];
    end
    else begin
        ahb_rf_addr <= ahb_rf_data;
    end
end
endmodule
