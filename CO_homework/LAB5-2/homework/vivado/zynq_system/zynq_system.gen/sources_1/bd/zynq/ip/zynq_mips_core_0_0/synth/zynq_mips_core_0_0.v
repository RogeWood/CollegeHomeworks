// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:mips_core:1.0
// IP Revision: 2

(* X_CORE_INFO = "cpu_ahb_if,Vivado 2024.2" *)
(* CHECK_LICENSE_TYPE = "zynq_mips_core_0_0,cpu_ahb_if,{}" *)
(* CORE_GENERATION_INFO = "zynq_mips_core_0_0,cpu_ahb_if,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=mips_core,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module zynq_mips_core_0_0 (
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
  S_HREADY,
  S_HRDATA,
  S_HRESP
);

input wire HCLK;
input wire HRESETn;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 ahb SEL" *)
(* X_INTERFACE_MODE = "slave" *)
input wire S_HSEL;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 ahb HADDR" *)
input wire [31 : 0] S_HADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 ahb HBURST" *)
input wire [2 : 0] S_HBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 ahb HTRANS" *)
input wire [1 : 0] S_HTRANS;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 ahb HSIZE" *)
input wire [2 : 0] S_HSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 ahb HWRITE" *)
input wire S_HWRITE;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 ahb HWDATA" *)
input wire [31 : 0] S_HWDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 ahb HPROT" *)
input wire [3 : 0] S_HPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 ahb HREADY_OUT" *)
output wire S_HREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 ahb HRDATA" *)
output wire [31 : 0] S_HRDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:ahblite:2.0 ahb HRESP" *)
output wire S_HRESP;

  cpu_ahb_if inst (
    .HCLK(HCLK),
    .HRESETn(HRESETn),
    .S_HSEL(S_HSEL),
    .S_HADDR(S_HADDR),
    .S_HBURST(S_HBURST),
    .S_HTRANS(S_HTRANS),
    .S_HSIZE(S_HSIZE),
    .S_HWRITE(S_HWRITE),
    .S_HWDATA(S_HWDATA),
    .S_HPROT(S_HPROT),
    .S_HREADY(S_HREADY),
    .S_HRDATA(S_HRDATA),
    .S_HRESP(S_HRESP)
  );
endmodule
