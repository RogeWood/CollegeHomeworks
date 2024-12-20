-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Dec 16 15:49:52 2024
-- Host        : LAPTOP-19VJSGFB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zynq_axi_ahblite_bridge_0_0_sim_netlist.vhdl
-- Design      : zynq_axi_ahblite_bridge_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ahb_mstr_if is
  port (
    m_ahb_haddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_ahb_hburst : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_ahb_hprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_ahb_hmastlock : out STD_LOGIC;
    wrap_in_progress : out STD_LOGIC;
    onekb_cross_access_reg_0 : out STD_LOGIC;
    one_kb_in_progress : out STD_LOGIC;
    single_ahb_wr : out STD_LOGIC;
    m_ahb_hwrite : out STD_LOGIC;
    m_ahb_htrans : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_ahb_wr_rd_cs_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_ahb_wr_rd_cs_reg[3]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \wrap_brst_count_reg[1]_0\ : out STD_LOGIC;
    s_axi_wlast_0 : out STD_LOGIC;
    \FSM_sequential_ahb_wr_rd_cs_reg[3]_1\ : out STD_LOGIC;
    one_kb_cross : out STD_LOGIC;
    AWREADY_i_reg : out STD_LOGIC;
    \FSM_sequential_ahb_wr_rd_cs_reg[3]_2\ : out STD_LOGIC;
    s_axi_wvalid_0 : out STD_LOGIC;
    \FSM_sequential_ahb_wr_rd_cs_reg[1]_1\ : out STD_LOGIC;
    sig_s_ready_out_reg : out STD_LOGIC;
    one_kb_in_progress_reg_0 : out STD_LOGIC;
    m_ahb_hready_0 : out STD_LOGIC;
    RRESP_1_i : out STD_LOGIC;
    wr_err_occured0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \GEN_32_DATA_WIDTH.HADDR_i_reg[31]_0\ : out STD_LOGIC_VECTOR ( 28 downto 0 );
    m_ahb_hsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    wrap_in_progress_reg_0 : out STD_LOGIC;
    m_ahb_hwdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_address_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_address_reg[9]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_counter_sm : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    HADDR_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_32_DATA_WIDTH.HADDR_i_reg[31]_1\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[30]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[29]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[28]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[27]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[26]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[25]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[24]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[23]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[22]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[21]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[20]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[19]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[18]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[17]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[16]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[15]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[14]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[13]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[12]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[11]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[10]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[9]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[8]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[7]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[6]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[5]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[3]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[2]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[1]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[0]_0\ : in STD_LOGIC;
    ahb_burst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \HPROT_i_reg[2]_0\ : in STD_LOGIC;
    \HPROT_i_reg[1]_0\ : in STD_LOGIC;
    \HPROT_i_reg[0]_0\ : in STD_LOGIC;
    axi_lock : in STD_LOGIC;
    onekb_cross_access_reg_1 : in STD_LOGIC;
    single_ahb_wr_reg_0 : in STD_LOGIC;
    HWRITE_i_reg_0 : in STD_LOGIC;
    \HBURST_i_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \GEN_32_DATA_WIDTH.HADDR_i_reg[4]_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[4]_1\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \FSM_sequential_ahb_wr_rd_cs_reg[1]_2\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    single_ahb_rd_xfer : in STD_LOGIC;
    \FSM_sequential_ahb_wr_rd_cs_reg[3]_3\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    m_ahb_hready : in STD_LOGIC;
    \M_AHB_HTRANS[0]_i_2_0\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i[4]_i_4_0\ : in STD_LOGIC;
    \M_AHB_HTRANS_reg[0]_0\ : in STD_LOGIC;
    \M_AHB_HTRANS_reg[0]_1\ : in STD_LOGIC;
    \M_AHB_HTRANS_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_ahb_wr_rd_cs_reg[0]_0\ : in STD_LOGIC;
    \M_AHB_HTRANS[1]_i_3_0\ : in STD_LOGIC;
    \FSM_sequential_ahb_wr_rd_cs[3]_i_3_0\ : in STD_LOGIC;
    m_ahb_hresp : in STD_LOGIC;
    RRESP_1_i_reg : in STD_LOGIC;
    write_in_progress : in STD_LOGIC;
    m_ahb_hrdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \GEN_32_DATA_WIDTH.HADDR_i_reg[4]_2\ : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[4]_3\ : in STD_LOGIC;
    \M_AHB_HTRANS[1]_i_4_0\ : in STD_LOGIC;
    one_kb_in_progress_reg_1 : in STD_LOGIC;
    \wrap_brst_count_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \GEN_32_DATA_WIDTH.HADDR_i[5]_i_2\ : in STD_LOGIC;
    send_wrap_burst : in STD_LOGIC;
    \M_AHB_HTRANS[1]_i_11_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    load_counter_reg_0 : in STD_LOGIC;
    axi_size : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \HWDATA_i_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    onekb_cross_access_reg_i_7 : in STD_LOGIC;
    onekb_cross_access_reg_i_7_0 : in STD_LOGIC;
    onekb_cross_access_reg_i_3 : in STD_LOGIC;
    onekb_cross_access_reg_i_3_0 : in STD_LOGIC;
    onekb_cross_access_reg_i_3_1 : in STD_LOGIC;
    onekb_cross_access_reg_i_3_2 : in STD_LOGIC;
    onekb_cross_access_reg_i_2 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ahb_mstr_if;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ahb_mstr_if is
  signal A : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^awready_i_reg\ : STD_LOGIC;
  signal \FSM_sequential_ahb_wr_rd_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_ahb_wr_rd_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_ahb_wr_rd_cs[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_ahb_wr_rd_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_ahb_wr_rd_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_ahb_wr_rd_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_ahb_wr_rd_cs[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_ahb_wr_rd_cs[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_ahb_wr_rd_cs[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_ahb_wr_rd_cs[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_ahb_wr_rd_cs[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_ahb_wr_rd_cs[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_ahb_wr_rd_cs[3]_i_8_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_ahb_wr_rd_cs_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^fsm_sequential_ahb_wr_rd_cs_reg[1]_1\ : STD_LOGIC;
  signal \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^fsm_sequential_ahb_wr_rd_cs_reg[3]_1\ : STD_LOGIC;
  signal \^fsm_sequential_ahb_wr_rd_cs_reg[3]_2\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i[2]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i[4]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i[5]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[2]_i_3_n_1\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[2]_i_3_n_2\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[2]_i_3_n_3\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[31]_i_5_n_2\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[31]_i_5_n_3\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \HWDATA_i[31]_i_1_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[0]_i_1_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[0]_i_2_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[0]_i_3_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[0]_i_4_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[0]_i_5_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[0]_i_7_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[0]_i_8_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[0]_i_9_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[1]_i_10_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[1]_i_11_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[1]_i_12_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[1]_i_13_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[1]_i_14_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[1]_i_15_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[1]_i_16_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[1]_i_17_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[1]_i_1_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[1]_i_20_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[1]_i_21_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[1]_i_22_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[1]_i_23_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[1]_i_25_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[1]_i_26_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[1]_i_27_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[1]_i_2_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[1]_i_3_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[1]_i_4_n_0\ : STD_LOGIC;
  signal \M_AHB_HTRANS[1]_i_7_n_0\ : STD_LOGIC;
  signal WREADY_i_i_6_n_0 : STD_LOGIC;
  signal ahb_wr_rd_cs : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal data5 : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal load_counter : STD_LOGIC;
  signal \^m_ahb_haddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_ahb_hsize\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^m_ahb_htrans\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^one_kb_cross\ : STD_LOGIC;
  signal \^one_kb_in_progress\ : STD_LOGIC;
  signal one_kb_in_progress_i_10_n_0 : STD_LOGIC;
  signal one_kb_in_progress_i_12_n_0 : STD_LOGIC;
  signal one_kb_in_progress_i_13_n_0 : STD_LOGIC;
  signal one_kb_in_progress_i_1_n_0 : STD_LOGIC;
  signal one_kb_in_progress_i_3_n_0 : STD_LOGIC;
  signal one_kb_in_progress_i_4_n_0 : STD_LOGIC;
  signal one_kb_in_progress_i_5_n_0 : STD_LOGIC;
  signal one_kb_in_progress_i_6_n_0 : STD_LOGIC;
  signal one_kb_in_progress_i_7_n_0 : STD_LOGIC;
  signal one_kb_in_progress_i_8_n_0 : STD_LOGIC;
  signal one_kb_in_progress_i_9_n_0 : STD_LOGIC;
  signal \^one_kb_in_progress_reg_0\ : STD_LOGIC;
  signal \^onekb_cross_access_reg_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \^s_axi_wvalid_0\ : STD_LOGIC;
  signal \^single_ahb_wr\ : STD_LOGIC;
  signal \wrap_brst_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \wrap_brst_count[7]_i_1_n_0\ : STD_LOGIC;
  signal wrap_brst_count_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^wrap_brst_count_reg[1]_0\ : STD_LOGIC;
  signal \^wrap_in_progress\ : STD_LOGIC;
  signal wrap_in_progress_i_1_n_0 : STD_LOGIC;
  signal \NLW_GEN_32_DATA_WIDTH.HADDR_i_reg[31]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN_32_DATA_WIDTH.HADDR_i_reg[31]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_p_0_out_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_p_0_out_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_ahb_wr_rd_cs[0]_i_3\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_ahb_wr_rd_cs_reg[0]\ : label is "ahb_rd_last:1100,ahb_rd_data_incr:1101,ahb_last_wait:0100,ahb_rd_single:1010,ahb_last_addr:0111,ahb_onekb_last:0101,ahb_incr_addr:1001,ahb_rd_addr:1011,ahb_idle:0000,ahb_wr_incr:0011,ahb_wr_single:0010,ahb_wr_addr:0001,ahb_wr_wait:1000,ahb_last:0110,ahb_rd_wait:1110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_ahb_wr_rd_cs_reg[1]\ : label is "ahb_rd_last:1100,ahb_rd_data_incr:1101,ahb_last_wait:0100,ahb_rd_single:1010,ahb_last_addr:0111,ahb_onekb_last:0101,ahb_incr_addr:1001,ahb_rd_addr:1011,ahb_idle:0000,ahb_wr_incr:0011,ahb_wr_single:0010,ahb_wr_addr:0001,ahb_wr_wait:1000,ahb_last:0110,ahb_rd_wait:1110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_ahb_wr_rd_cs_reg[2]\ : label is "ahb_rd_last:1100,ahb_rd_data_incr:1101,ahb_last_wait:0100,ahb_rd_single:1010,ahb_last_addr:0111,ahb_onekb_last:0101,ahb_incr_addr:1001,ahb_rd_addr:1011,ahb_idle:0000,ahb_wr_incr:0011,ahb_wr_single:0010,ahb_wr_addr:0001,ahb_wr_wait:1000,ahb_last:0110,ahb_rd_wait:1110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_ahb_wr_rd_cs_reg[3]\ : label is "ahb_rd_last:1100,ahb_rd_data_incr:1101,ahb_last_wait:0100,ahb_rd_single:1010,ahb_last_addr:0111,ahb_onekb_last:0101,ahb_incr_addr:1001,ahb_rd_addr:1011,ahb_idle:0000,ahb_wr_incr:0011,ahb_wr_single:0010,ahb_wr_addr:0001,ahb_wr_wait:1000,ahb_last:0110,ahb_rd_wait:1110";
  attribute SOFT_HLUTNM of \FSM_sequential_axi_read_cs[2]_i_2\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \GEN_32_DATA_WIDTH.HADDR_i_reg[12]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \GEN_32_DATA_WIDTH.HADDR_i_reg[12]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \GEN_32_DATA_WIDTH.HADDR_i_reg[16]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \GEN_32_DATA_WIDTH.HADDR_i_reg[16]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \GEN_32_DATA_WIDTH.HADDR_i_reg[20]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \GEN_32_DATA_WIDTH.HADDR_i_reg[20]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \GEN_32_DATA_WIDTH.HADDR_i_reg[24]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \GEN_32_DATA_WIDTH.HADDR_i_reg[24]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \GEN_32_DATA_WIDTH.HADDR_i_reg[28]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \GEN_32_DATA_WIDTH.HADDR_i_reg[28]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \GEN_32_DATA_WIDTH.HADDR_i_reg[2]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \GEN_32_DATA_WIDTH.HADDR_i_reg[2]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \GEN_32_DATA_WIDTH.HADDR_i_reg[31]_i_5\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \GEN_32_DATA_WIDTH.HADDR_i_reg[31]_i_5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \GEN_32_DATA_WIDTH.HADDR_i_reg[8]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \GEN_32_DATA_WIDTH.HADDR_i_reg[8]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \M_AHB_HTRANS[0]_i_9\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \M_AHB_HTRANS[1]_i_10\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \M_AHB_HTRANS[1]_i_12\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \M_AHB_HTRANS[1]_i_14\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \M_AHB_HTRANS[1]_i_16\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \M_AHB_HTRANS[1]_i_21\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \M_AHB_HTRANS[1]_i_22\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \M_AHB_HTRANS[1]_i_23\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \M_AHB_HTRANS[1]_i_26\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \M_AHB_HTRANS[1]_i_27\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \M_AHB_HTRANS[1]_i_9\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of WREADY_i_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of WREADY_i_i_4 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of one_kb_in_progress_i_13 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of one_kb_in_progress_i_3 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of one_kb_in_progress_i_4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of one_kb_in_progress_i_7 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of one_kb_in_progress_i_8 : label is "soft_lutpair8";
  attribute ADDER_THRESHOLD of \p_0_out_inferred__0/i__carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \p_0_out_inferred__0/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \p_0_out_inferred__0/i__carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \p_0_out_inferred__0/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  AWREADY_i_reg <= \^awready_i_reg\;
  \FSM_sequential_ahb_wr_rd_cs_reg[1]_0\(0) <= \^fsm_sequential_ahb_wr_rd_cs_reg[1]_0\(0);
  \FSM_sequential_ahb_wr_rd_cs_reg[1]_1\ <= \^fsm_sequential_ahb_wr_rd_cs_reg[1]_1\;
  \FSM_sequential_ahb_wr_rd_cs_reg[3]_0\(1 downto 0) <= \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1 downto 0);
  \FSM_sequential_ahb_wr_rd_cs_reg[3]_1\ <= \^fsm_sequential_ahb_wr_rd_cs_reg[3]_1\;
  \FSM_sequential_ahb_wr_rd_cs_reg[3]_2\ <= \^fsm_sequential_ahb_wr_rd_cs_reg[3]_2\;
  m_ahb_haddr(31 downto 0) <= \^m_ahb_haddr\(31 downto 0);
  m_ahb_hsize(2 downto 0) <= \^m_ahb_hsize\(2 downto 0);
  m_ahb_htrans(1 downto 0) <= \^m_ahb_htrans\(1 downto 0);
  one_kb_cross <= \^one_kb_cross\;
  one_kb_in_progress <= \^one_kb_in_progress\;
  one_kb_in_progress_reg_0 <= \^one_kb_in_progress_reg_0\;
  onekb_cross_access_reg_0 <= \^onekb_cross_access_reg_0\;
  s_axi_wvalid_0 <= \^s_axi_wvalid_0\;
  single_ahb_wr <= \^single_ahb_wr\;
  \wrap_brst_count_reg[1]_0\ <= \^wrap_brst_count_reg[1]_0\;
  wrap_in_progress <= \^wrap_in_progress\;
BVALID_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040004000400"
    )
        port map (
      I0 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I1 => m_ahb_hready,
      I2 => ahb_wr_rd_cs(2),
      I3 => ahb_wr_rd_cs(1),
      I4 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I5 => \^wrap_brst_count_reg[1]_0\,
      O => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_1\
    );
\FSM_sequential_ahb_wr_rd_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33F088FFFFF0FFF0"
    )
        port map (
      I0 => \out\,
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I2 => \FSM_sequential_ahb_wr_rd_cs[0]_i_2_n_0\,
      I3 => ahb_wr_rd_cs(2),
      I4 => ahb_wr_rd_cs(1),
      I5 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      O => \FSM_sequential_ahb_wr_rd_cs[0]_i_1_n_0\
    );
\FSM_sequential_ahb_wr_rd_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D050D050D000D05"
    )
        port map (
      I0 => ahb_wr_rd_cs(1),
      I1 => \^wrap_brst_count_reg[1]_0\,
      I2 => \FSM_sequential_ahb_wr_rd_cs[0]_i_3_n_0\,
      I3 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I4 => single_ahb_rd_xfer,
      I5 => \FSM_sequential_ahb_wr_rd_cs_reg[3]_3\,
      O => \FSM_sequential_ahb_wr_rd_cs[0]_i_2_n_0\
    );
\FSM_sequential_ahb_wr_rd_cs[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"080808F8"
    )
        port map (
      I0 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I1 => \^single_ahb_wr\,
      I2 => ahb_wr_rd_cs(1),
      I3 => s_axi_wvalid,
      I4 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      O => \FSM_sequential_ahb_wr_rd_cs[0]_i_3_n_0\
    );
\FSM_sequential_ahb_wr_rd_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8FFFAAAAAFFFAAA"
    )
        port map (
      I0 => \FSM_sequential_ahb_wr_rd_cs[1]_i_2_n_0\,
      I1 => s_axi_wvalid,
      I2 => ahb_wr_rd_cs(2),
      I3 => ahb_wr_rd_cs(1),
      I4 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I5 => \FSM_sequential_ahb_wr_rd_cs_reg[1]_2\,
      O => \FSM_sequential_ahb_wr_rd_cs[1]_i_1_n_0\
    );
\FSM_sequential_ahb_wr_rd_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555500155555501"
    )
        port map (
      I0 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I1 => \FSM_sequential_ahb_wr_rd_cs_reg[3]_3\,
      I2 => ahb_wr_rd_cs(1),
      I3 => ahb_wr_rd_cs(2),
      I4 => \FSM_sequential_ahb_wr_rd_cs[2]_i_2_n_0\,
      I5 => \FSM_sequential_ahb_wr_rd_cs_reg[0]_0\,
      O => \FSM_sequential_ahb_wr_rd_cs[1]_i_2_n_0\
    );
\FSM_sequential_ahb_wr_rd_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003F0C3FF0A0F0A0"
    )
        port map (
      I0 => \FSM_sequential_ahb_wr_rd_cs[2]_i_2_n_0\,
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I2 => ahb_wr_rd_cs(1),
      I3 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I4 => \out\,
      I5 => ahb_wr_rd_cs(2),
      O => \FSM_sequential_ahb_wr_rd_cs[2]_i_1_n_0\
    );
\FSM_sequential_ahb_wr_rd_cs[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I1 => wrap_brst_count_reg(2),
      I2 => wrap_brst_count_reg(3),
      I3 => wrap_brst_count_reg(1),
      I4 => wrap_brst_count_reg(0),
      I5 => WREADY_i_i_6_n_0,
      O => \FSM_sequential_ahb_wr_rd_cs[2]_i_2_n_0\
    );
\FSM_sequential_ahb_wr_rd_cs[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABABABAAAAAABA"
    )
        port map (
      I0 => \FSM_sequential_ahb_wr_rd_cs[3]_i_3_n_0\,
      I1 => \FSM_sequential_ahb_wr_rd_cs_reg[0]_0\,
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I3 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I4 => ahb_wr_rd_cs(1),
      I5 => ahb_wr_rd_cs(2),
      O => \FSM_sequential_ahb_wr_rd_cs[3]_i_1_n_0\
    );
\FSM_sequential_ahb_wr_rd_cs[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CF300C100010001"
    )
        port map (
      I0 => \FSM_sequential_ahb_wr_rd_cs_reg[3]_3\,
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I2 => ahb_wr_rd_cs(1),
      I3 => ahb_wr_rd_cs(2),
      I4 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I5 => \FSM_sequential_ahb_wr_rd_cs[3]_i_5_n_0\,
      O => \FSM_sequential_ahb_wr_rd_cs[3]_i_2_n_0\
    );
\FSM_sequential_ahb_wr_rd_cs[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAEAAAAAAAA"
    )
        port map (
      I0 => \FSM_sequential_ahb_wr_rd_cs[3]_i_6_n_0\,
      I1 => ahb_wr_rd_cs(2),
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I3 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I4 => ahb_wr_rd_cs(1),
      I5 => \^one_kb_in_progress_reg_0\,
      O => \FSM_sequential_ahb_wr_rd_cs[3]_i_3_n_0\
    );
\FSM_sequential_ahb_wr_rd_cs[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEF"
    )
        port map (
      I0 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I1 => WREADY_i_i_6_n_0,
      I2 => wrap_brst_count_reg(0),
      I3 => wrap_brst_count_reg(1),
      I4 => wrap_brst_count_reg(3),
      I5 => wrap_brst_count_reg(2),
      O => \FSM_sequential_ahb_wr_rd_cs[3]_i_5_n_0\
    );
\FSM_sequential_ahb_wr_rd_cs[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEEEEEFEEEFEE"
    )
        port map (
      I0 => \FSM_sequential_ahb_wr_rd_cs[3]_i_8_n_0\,
      I1 => \FSM_sequential_ahb_wr_rd_cs[3]_i_3_0\,
      I2 => \M_AHB_HTRANS[1]_i_16_n_0\,
      I3 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I4 => ahb_wr_rd_cs(2),
      I5 => ahb_wr_rd_cs(1),
      O => \FSM_sequential_ahb_wr_rd_cs[3]_i_6_n_0\
    );
\FSM_sequential_ahb_wr_rd_cs[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => \^one_kb_in_progress\,
      I1 => one_kb_in_progress_reg_1,
      I2 => one_kb_in_progress_i_10_n_0,
      I3 => one_kb_in_progress_i_9_n_0,
      I4 => one_kb_in_progress_i_8_n_0,
      I5 => one_kb_in_progress_i_7_n_0,
      O => \^one_kb_in_progress_reg_0\
    );
\FSM_sequential_ahb_wr_rd_cs[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7430402030304020"
    )
        port map (
      I0 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I1 => ahb_wr_rd_cs(2),
      I2 => m_ahb_hready,
      I3 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I4 => ahb_wr_rd_cs(1),
      I5 => \out\,
      O => \FSM_sequential_ahb_wr_rd_cs[3]_i_8_n_0\
    );
\FSM_sequential_ahb_wr_rd_cs_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_ahb_wr_rd_cs[3]_i_1_n_0\,
      D => \FSM_sequential_ahb_wr_rd_cs[0]_i_1_n_0\,
      Q => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      R => SR(0)
    );
\FSM_sequential_ahb_wr_rd_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_ahb_wr_rd_cs[3]_i_1_n_0\,
      D => \FSM_sequential_ahb_wr_rd_cs[1]_i_1_n_0\,
      Q => ahb_wr_rd_cs(1),
      R => SR(0)
    );
\FSM_sequential_ahb_wr_rd_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_ahb_wr_rd_cs[3]_i_1_n_0\,
      D => \FSM_sequential_ahb_wr_rd_cs[2]_i_1_n_0\,
      Q => ahb_wr_rd_cs(2),
      R => SR(0)
    );
\FSM_sequential_ahb_wr_rd_cs_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_ahb_wr_rd_cs[3]_i_1_n_0\,
      D => \FSM_sequential_ahb_wr_rd_cs[3]_i_2_n_0\,
      Q => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      R => SR(0)
    );
\FSM_sequential_axi_read_cs[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => ahb_wr_rd_cs(1),
      I1 => m_ahb_hready,
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I3 => ahb_wr_rd_cs(2),
      O => \^fsm_sequential_ahb_wr_rd_cs_reg[1]_1\
    );
\FSM_sequential_axi_write_cs[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_1\,
      I1 => s_axi_wlast,
      I2 => s_axi_wvalid,
      O => s_axi_wlast_0
    );
\GEN_32_DATA_WIDTH.HADDR_i[2]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_ahb_haddr\(2),
      O => \GEN_32_DATA_WIDTH.HADDR_i[2]_i_5_n_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEFFFFFFAE000000"
    )
        port map (
      I0 => \GEN_32_DATA_WIDTH.HADDR_i[4]_i_2_n_0\,
      I1 => Q(4),
      I2 => \GEN_32_DATA_WIDTH.HADDR_i_reg[4]_0\,
      I3 => \GEN_32_DATA_WIDTH.HADDR_i_reg[4]_1\,
      I4 => \^fsm_sequential_ahb_wr_rd_cs_reg[1]_0\(0),
      I5 => \^m_ahb_haddr\(4),
      O => \GEN_32_DATA_WIDTH.HADDR_i[4]_i_1_n_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A006A00FF000000"
    )
        port map (
      I0 => \^m_ahb_haddr\(4),
      I1 => \^m_ahb_haddr\(3),
      I2 => \^m_ahb_haddr\(2),
      I3 => \GEN_32_DATA_WIDTH.HADDR_i_reg[4]_2\,
      I4 => data5(4),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i_reg[4]_3\,
      O => \GEN_32_DATA_WIDTH.HADDR_i[4]_i_2_n_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50101010FFFFFFFF"
    )
        port map (
      I0 => \GEN_32_DATA_WIDTH.HADDR_i[4]_i_5_n_0\,
      I1 => ahb_wr_rd_cs(1),
      I2 => m_ahb_hready,
      I3 => \^wrap_brst_count_reg[1]_0\,
      I4 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i_reg[4]_0\,
      O => \^fsm_sequential_ahb_wr_rd_cs_reg[1]_0\(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF0DFFFFFFFF"
    )
        port map (
      I0 => m_ahb_hready,
      I1 => \^single_ahb_wr\,
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I3 => \GEN_32_DATA_WIDTH.HADDR_i[4]_i_4_0\,
      I4 => ahb_wr_rd_cs(2),
      I5 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      O => \GEN_32_DATA_WIDTH.HADDR_i[4]_i_5_n_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A333A3330333F33"
    )
        port map (
      I0 => \GEN_32_DATA_WIDTH.HADDR_i[5]_i_4_n_0\,
      I1 => data5(5),
      I2 => \GEN_32_DATA_WIDTH.HADDR_i[5]_i_2\,
      I3 => \^wrap_in_progress\,
      I4 => \^m_ahb_haddr\(5),
      I5 => \wrap_brst_count_reg[7]_0\(3),
      O => wrap_in_progress_reg_0
    );
\GEN_32_DATA_WIDTH.HADDR_i[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9555"
    )
        port map (
      I0 => \^m_ahb_haddr\(5),
      I1 => \^m_ahb_haddr\(2),
      I2 => \^m_ahb_haddr\(3),
      I3 => \^m_ahb_haddr\(4),
      O => \GEN_32_DATA_WIDTH.HADDR_i[5]_i_4_n_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[0]_0\,
      Q => \^m_ahb_haddr\(0),
      R => '0'
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[10]_0\,
      Q => \^m_ahb_haddr\(10),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[11]_0\,
      Q => \^m_ahb_haddr\(11),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[12]_0\,
      Q => \^m_ahb_haddr\(12),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_32_DATA_WIDTH.HADDR_i_reg[8]_i_2_n_0\,
      CO(3) => \GEN_32_DATA_WIDTH.HADDR_i_reg[12]_i_2_n_0\,
      CO(2) => \GEN_32_DATA_WIDTH.HADDR_i_reg[12]_i_2_n_1\,
      CO(1) => \GEN_32_DATA_WIDTH.HADDR_i_reg[12]_i_2_n_2\,
      CO(0) => \GEN_32_DATA_WIDTH.HADDR_i_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]_0\(9 downto 6),
      S(3 downto 0) => \^m_ahb_haddr\(12 downto 9)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[13]_0\,
      Q => \^m_ahb_haddr\(13),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[14]_0\,
      Q => \^m_ahb_haddr\(14),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[15]_0\,
      Q => \^m_ahb_haddr\(15),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[16]_0\,
      Q => \^m_ahb_haddr\(16),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_32_DATA_WIDTH.HADDR_i_reg[12]_i_2_n_0\,
      CO(3) => \GEN_32_DATA_WIDTH.HADDR_i_reg[16]_i_2_n_0\,
      CO(2) => \GEN_32_DATA_WIDTH.HADDR_i_reg[16]_i_2_n_1\,
      CO(1) => \GEN_32_DATA_WIDTH.HADDR_i_reg[16]_i_2_n_2\,
      CO(0) => \GEN_32_DATA_WIDTH.HADDR_i_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]_0\(13 downto 10),
      S(3 downto 0) => \^m_ahb_haddr\(16 downto 13)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[17]_0\,
      Q => \^m_ahb_haddr\(17),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[18]_0\,
      Q => \^m_ahb_haddr\(18),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[19]_0\,
      Q => \^m_ahb_haddr\(19),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[1]_0\,
      Q => \^m_ahb_haddr\(1),
      R => '0'
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[20]_0\,
      Q => \^m_ahb_haddr\(20),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_32_DATA_WIDTH.HADDR_i_reg[16]_i_2_n_0\,
      CO(3) => \GEN_32_DATA_WIDTH.HADDR_i_reg[20]_i_2_n_0\,
      CO(2) => \GEN_32_DATA_WIDTH.HADDR_i_reg[20]_i_2_n_1\,
      CO(1) => \GEN_32_DATA_WIDTH.HADDR_i_reg[20]_i_2_n_2\,
      CO(0) => \GEN_32_DATA_WIDTH.HADDR_i_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]_0\(17 downto 14),
      S(3 downto 0) => \^m_ahb_haddr\(20 downto 17)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[21]_0\,
      Q => \^m_ahb_haddr\(21),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[22]_0\,
      Q => \^m_ahb_haddr\(22),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[23]_0\,
      Q => \^m_ahb_haddr\(23),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[24]_0\,
      Q => \^m_ahb_haddr\(24),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_32_DATA_WIDTH.HADDR_i_reg[20]_i_2_n_0\,
      CO(3) => \GEN_32_DATA_WIDTH.HADDR_i_reg[24]_i_2_n_0\,
      CO(2) => \GEN_32_DATA_WIDTH.HADDR_i_reg[24]_i_2_n_1\,
      CO(1) => \GEN_32_DATA_WIDTH.HADDR_i_reg[24]_i_2_n_2\,
      CO(0) => \GEN_32_DATA_WIDTH.HADDR_i_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]_0\(21 downto 18),
      S(3 downto 0) => \^m_ahb_haddr\(24 downto 21)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[25]_0\,
      Q => \^m_ahb_haddr\(25),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[26]_0\,
      Q => \^m_ahb_haddr\(26),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[27]_0\,
      Q => \^m_ahb_haddr\(27),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[28]_0\,
      Q => \^m_ahb_haddr\(28),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_32_DATA_WIDTH.HADDR_i_reg[24]_i_2_n_0\,
      CO(3) => \GEN_32_DATA_WIDTH.HADDR_i_reg[28]_i_2_n_0\,
      CO(2) => \GEN_32_DATA_WIDTH.HADDR_i_reg[28]_i_2_n_1\,
      CO(1) => \GEN_32_DATA_WIDTH.HADDR_i_reg[28]_i_2_n_2\,
      CO(0) => \GEN_32_DATA_WIDTH.HADDR_i_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]_0\(25 downto 22),
      S(3 downto 0) => \^m_ahb_haddr\(28 downto 25)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[29]_0\,
      Q => \^m_ahb_haddr\(29),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[2]_0\,
      Q => \^m_ahb_haddr\(2),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \GEN_32_DATA_WIDTH.HADDR_i_reg[2]_i_3_n_0\,
      CO(2) => \GEN_32_DATA_WIDTH.HADDR_i_reg[2]_i_3_n_1\,
      CO(1) => \GEN_32_DATA_WIDTH.HADDR_i_reg[2]_i_3_n_2\,
      CO(0) => \GEN_32_DATA_WIDTH.HADDR_i_reg[2]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^m_ahb_haddr\(2),
      DI(0) => '0',
      O(3) => data5(4),
      O(2 downto 0) => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]_0\(2 downto 0),
      S(3 downto 2) => \^m_ahb_haddr\(4 downto 3),
      S(1) => \GEN_32_DATA_WIDTH.HADDR_i[2]_i_5_n_0\,
      S(0) => \^m_ahb_haddr\(1)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[30]_0\,
      Q => \^m_ahb_haddr\(30),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]_1\,
      Q => \^m_ahb_haddr\(31),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[31]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_32_DATA_WIDTH.HADDR_i_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_GEN_32_DATA_WIDTH.HADDR_i_reg[31]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]_i_5_n_2\,
      CO(0) => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_GEN_32_DATA_WIDTH.HADDR_i_reg[31]_i_5_O_UNCONNECTED\(3),
      O(2 downto 0) => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]_0\(28 downto 26),
      S(3) => '0',
      S(2 downto 0) => \^m_ahb_haddr\(31 downto 29)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[3]_0\,
      Q => \^m_ahb_haddr\(3),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_32_DATA_WIDTH.HADDR_i[4]_i_1_n_0\,
      Q => \^m_ahb_haddr\(4),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[5]_0\,
      Q => \^m_ahb_haddr\(5),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[6]_0\,
      Q => \^m_ahb_haddr\(6),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[7]_0\,
      Q => \^m_ahb_haddr\(7),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[8]_0\,
      Q => \^m_ahb_haddr\(8),
      R => SR(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_32_DATA_WIDTH.HADDR_i_reg[2]_i_3_n_0\,
      CO(3) => \GEN_32_DATA_WIDTH.HADDR_i_reg[8]_i_2_n_0\,
      CO(2) => \GEN_32_DATA_WIDTH.HADDR_i_reg[8]_i_2_n_1\,
      CO(1) => \GEN_32_DATA_WIDTH.HADDR_i_reg[8]_i_2_n_2\,
      CO(0) => \GEN_32_DATA_WIDTH.HADDR_i_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]_0\(5 downto 3),
      O(0) => data5(5),
      S(3 downto 0) => \^m_ahb_haddr\(8 downto 5)
    );
\GEN_32_DATA_WIDTH.HADDR_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => HADDR_i(0),
      D => \GEN_32_DATA_WIDTH.HADDR_i_reg[9]_0\,
      Q => \^m_ahb_haddr\(9),
      R => SR(0)
    );
\HBURST_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \HBURST_i_reg[0]_0\,
      Q => m_ahb_hburst(0),
      R => '0'
    );
\HBURST_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ahb_burst(0),
      Q => m_ahb_hburst(1),
      R => SR(0)
    );
\HBURST_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ahb_burst(1),
      Q => m_ahb_hburst(2),
      R => SR(0)
    );
HLOCK_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_lock,
      Q => m_ahb_hmastlock,
      R => SR(0)
    );
\HPROT_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \HPROT_i_reg[0]_0\,
      Q => m_ahb_hprot(0),
      S => SR(0)
    );
\HPROT_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \HPROT_i_reg[1]_0\,
      Q => m_ahb_hprot(1),
      S => SR(0)
    );
\HPROT_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \HPROT_i_reg[2]_0\,
      Q => m_ahb_hprot(2),
      R => SR(0)
    );
\HSIZE_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_size(0),
      Q => \^m_ahb_hsize\(0),
      R => SR(0)
    );
\HSIZE_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_size(1),
      Q => \^m_ahb_hsize\(1),
      R => SR(0)
    );
\HSIZE_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_size(2),
      Q => \^m_ahb_hsize\(2),
      R => SR(0)
    );
\HWDATA_i[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000088"
    )
        port map (
      I0 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I1 => m_ahb_hready,
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I3 => ahb_wr_rd_cs(2),
      I4 => ahb_wr_rd_cs(1),
      O => \HWDATA_i[31]_i_1_n_0\
    );
\HWDATA_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(0),
      Q => m_ahb_hwdata(0),
      R => SR(0)
    );
\HWDATA_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(10),
      Q => m_ahb_hwdata(10),
      R => SR(0)
    );
\HWDATA_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(11),
      Q => m_ahb_hwdata(11),
      R => SR(0)
    );
\HWDATA_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(12),
      Q => m_ahb_hwdata(12),
      R => SR(0)
    );
\HWDATA_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(13),
      Q => m_ahb_hwdata(13),
      R => SR(0)
    );
\HWDATA_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(14),
      Q => m_ahb_hwdata(14),
      R => SR(0)
    );
\HWDATA_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(15),
      Q => m_ahb_hwdata(15),
      R => SR(0)
    );
\HWDATA_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(16),
      Q => m_ahb_hwdata(16),
      R => SR(0)
    );
\HWDATA_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(17),
      Q => m_ahb_hwdata(17),
      R => SR(0)
    );
\HWDATA_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(18),
      Q => m_ahb_hwdata(18),
      R => SR(0)
    );
\HWDATA_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(19),
      Q => m_ahb_hwdata(19),
      R => SR(0)
    );
\HWDATA_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(1),
      Q => m_ahb_hwdata(1),
      R => SR(0)
    );
\HWDATA_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(20),
      Q => m_ahb_hwdata(20),
      R => SR(0)
    );
\HWDATA_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(21),
      Q => m_ahb_hwdata(21),
      R => SR(0)
    );
\HWDATA_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(22),
      Q => m_ahb_hwdata(22),
      R => SR(0)
    );
\HWDATA_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(23),
      Q => m_ahb_hwdata(23),
      R => SR(0)
    );
\HWDATA_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(24),
      Q => m_ahb_hwdata(24),
      R => SR(0)
    );
\HWDATA_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(25),
      Q => m_ahb_hwdata(25),
      R => SR(0)
    );
\HWDATA_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(26),
      Q => m_ahb_hwdata(26),
      R => SR(0)
    );
\HWDATA_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(27),
      Q => m_ahb_hwdata(27),
      R => SR(0)
    );
\HWDATA_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(28),
      Q => m_ahb_hwdata(28),
      R => SR(0)
    );
\HWDATA_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(29),
      Q => m_ahb_hwdata(29),
      R => SR(0)
    );
\HWDATA_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(2),
      Q => m_ahb_hwdata(2),
      R => SR(0)
    );
\HWDATA_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(30),
      Q => m_ahb_hwdata(30),
      R => SR(0)
    );
\HWDATA_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(31),
      Q => m_ahb_hwdata(31),
      R => SR(0)
    );
\HWDATA_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(3),
      Q => m_ahb_hwdata(3),
      R => SR(0)
    );
\HWDATA_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(4),
      Q => m_ahb_hwdata(4),
      R => SR(0)
    );
\HWDATA_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(5),
      Q => m_ahb_hwdata(5),
      R => SR(0)
    );
\HWDATA_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(6),
      Q => m_ahb_hwdata(6),
      R => SR(0)
    );
\HWDATA_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(7),
      Q => m_ahb_hwdata(7),
      R => SR(0)
    );
\HWDATA_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(8),
      Q => m_ahb_hwdata(8),
      R => SR(0)
    );
\HWDATA_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \HWDATA_i[31]_i_1_n_0\,
      D => \HWDATA_i_reg[31]_0\(9),
      Q => m_ahb_hwdata(9),
      R => SR(0)
    );
HWRITE_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => HWRITE_i_reg_0,
      Q => m_ahb_hwrite,
      R => '0'
    );
\M_AHB_HTRANS[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEC0000"
    )
        port map (
      I0 => \M_AHB_HTRANS[0]_i_2_n_0\,
      I1 => \M_AHB_HTRANS[1]_i_2_n_0\,
      I2 => \M_AHB_HTRANS[1]_i_4_n_0\,
      I3 => \^m_ahb_htrans\(0),
      I4 => s_axi_aresetn,
      I5 => \M_AHB_HTRANS[1]_i_3_n_0\,
      O => \M_AHB_HTRANS[0]_i_1_n_0\
    );
\M_AHB_HTRANS[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000053500000"
    )
        port map (
      I0 => \M_AHB_HTRANS[0]_i_3_n_0\,
      I1 => \M_AHB_HTRANS[0]_i_4_n_0\,
      I2 => ahb_wr_rd_cs(1),
      I3 => m_ahb_hready,
      I4 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I5 => ahb_wr_rd_cs(2),
      O => \M_AHB_HTRANS[0]_i_2_n_0\
    );
\M_AHB_HTRANS[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF30FFFFFFFD"
    )
        port map (
      I0 => \M_AHB_HTRANS[0]_i_5_n_0\,
      I1 => \^one_kb_cross\,
      I2 => \^one_kb_in_progress\,
      I3 => \M_AHB_HTRANS[0]_i_2_0\,
      I4 => \GEN_32_DATA_WIDTH.HADDR_i[4]_i_4_0\,
      I5 => \M_AHB_HTRANS[0]_i_7_n_0\,
      O => \M_AHB_HTRANS[0]_i_3_n_0\
    );
\M_AHB_HTRANS[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF55FFFFFF54"
    )
        port map (
      I0 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I1 => \^single_ahb_wr\,
      I2 => \M_AHB_HTRANS[0]_i_2_0\,
      I3 => \GEN_32_DATA_WIDTH.HADDR_i[4]_i_4_0\,
      I4 => \^one_kb_in_progress\,
      I5 => \^one_kb_cross\,
      O => \M_AHB_HTRANS[0]_i_4_n_0\
    );
\M_AHB_HTRANS[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8AA00000000"
    )
        port map (
      I0 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I1 => WREADY_i_i_6_n_0,
      I2 => wrap_brst_count_reg(1),
      I3 => wrap_brst_count_reg(0),
      I4 => \M_AHB_HTRANS[0]_i_8_n_0\,
      I5 => m_ahb_hready,
      O => \M_AHB_HTRANS[0]_i_5_n_0\
    );
\M_AHB_HTRANS[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => m_ahb_hready,
      I1 => WREADY_i_i_6_n_0,
      I2 => wrap_brst_count_reg(0),
      I3 => wrap_brst_count_reg(1),
      I4 => \M_AHB_HTRANS[0]_i_8_n_0\,
      I5 => \M_AHB_HTRANS[0]_i_9_n_0\,
      O => \M_AHB_HTRANS[0]_i_7_n_0\
    );
\M_AHB_HTRANS[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => wrap_brst_count_reg(3),
      I1 => wrap_brst_count_reg(2),
      O => \M_AHB_HTRANS[0]_i_8_n_0\
    );
\M_AHB_HTRANS[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      O => \M_AHB_HTRANS[0]_i_9_n_0\
    );
\M_AHB_HTRANS[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \M_AHB_HTRANS[1]_i_2_n_0\,
      I1 => \M_AHB_HTRANS[1]_i_3_n_0\,
      I2 => \M_AHB_HTRANS[1]_i_4_n_0\,
      I3 => \^m_ahb_htrans\(1),
      O => \M_AHB_HTRANS[1]_i_1_n_0\
    );
\M_AHB_HTRANS[1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \out\,
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[1]_1\,
      I3 => \FSM_sequential_ahb_wr_rd_cs_reg[1]_2\,
      O => \M_AHB_HTRANS[1]_i_10_n_0\
    );
\M_AHB_HTRANS[1]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0005000"
    )
        port map (
      I0 => \M_AHB_HTRANS[1]_i_22_n_0\,
      I1 => \^s_axi_wvalid_0\,
      I2 => \^wrap_brst_count_reg[1]_0\,
      I3 => \FSM_sequential_ahb_wr_rd_cs_reg[1]_2\,
      I4 => \M_AHB_HTRANS[1]_i_20_n_0\,
      O => \M_AHB_HTRANS[1]_i_11_n_0\
    );
\M_AHB_HTRANS[1]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15111510"
    )
        port map (
      I0 => one_kb_in_progress_i_5_n_0,
      I1 => ahb_wr_rd_cs(1),
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I3 => \M_AHB_HTRANS[1]_i_3_0\,
      I4 => \^one_kb_in_progress_reg_0\,
      O => \M_AHB_HTRANS[1]_i_12_n_0\
    );
\M_AHB_HTRANS[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555755575557FF57"
    )
        port map (
      I0 => \M_AHB_HTRANS[1]_i_23_n_0\,
      I1 => \M_AHB_HTRANS[1]_i_4_0\,
      I2 => \^single_ahb_wr\,
      I3 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I4 => \GEN_32_DATA_WIDTH.HADDR_i[4]_i_4_0\,
      I5 => \^one_kb_in_progress\,
      O => \M_AHB_HTRANS[1]_i_13_n_0\
    );
\M_AHB_HTRANS[1]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20002222"
    )
        port map (
      I0 => ahb_wr_rd_cs(1),
      I1 => ahb_wr_rd_cs(2),
      I2 => \M_AHB_HTRANS[1]_i_4_0\,
      I3 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I4 => \^wrap_brst_count_reg[1]_0\,
      O => \M_AHB_HTRANS[1]_i_14_n_0\
    );
\M_AHB_HTRANS[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0B00000A0A0"
    )
        port map (
      I0 => ahb_wr_rd_cs(2),
      I1 => \M_AHB_HTRANS[1]_i_25_n_0\,
      I2 => ahb_wr_rd_cs(1),
      I3 => s_axi_wvalid,
      I4 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I5 => \FSM_sequential_ahb_wr_rd_cs_reg[1]_2\,
      O => \M_AHB_HTRANS[1]_i_15_n_0\
    );
\M_AHB_HTRANS[1]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => m_ahb_hready,
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      O => \M_AHB_HTRANS[1]_i_16_n_0\
    );
\M_AHB_HTRANS[1]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8080000"
    )
        port map (
      I0 => \GEN_32_DATA_WIDTH.HADDR_i[4]_i_4_0\,
      I1 => \FSM_sequential_ahb_wr_rd_cs_reg[0]_0\,
      I2 => ahb_wr_rd_cs(1),
      I3 => m_ahb_hready,
      I4 => \M_AHB_HTRANS[1]_i_26_n_0\,
      I5 => ahb_wr_rd_cs(2),
      O => \M_AHB_HTRANS[1]_i_17_n_0\
    );
\M_AHB_HTRANS[1]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => \out\,
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[1]_1\,
      I3 => \^s_axi_wvalid_0\,
      I4 => \^wrap_brst_count_reg[1]_0\,
      O => sig_s_ready_out_reg
    );
\M_AHB_HTRANS[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF1000"
    )
        port map (
      I0 => \M_AHB_HTRANS_reg[0]_0\,
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I2 => ahb_wr_rd_cs(2),
      I3 => ahb_wr_rd_cs(1),
      I4 => \M_AHB_HTRANS_reg[0]_1\,
      I5 => \M_AHB_HTRANS[1]_i_7_n_0\,
      O => \M_AHB_HTRANS[1]_i_2_n_0\
    );
\M_AHB_HTRANS[1]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEF"
    )
        port map (
      I0 => \^one_kb_in_progress_reg_0\,
      I1 => \M_AHB_HTRANS[1]_i_27_n_0\,
      I2 => \M_AHB_HTRANS[1]_i_11_0\(0),
      I3 => \M_AHB_HTRANS[1]_i_11_0\(1),
      O => \M_AHB_HTRANS[1]_i_20_n_0\
    );
\M_AHB_HTRANS[1]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \FSM_sequential_ahb_wr_rd_cs_reg[0]_0\,
      I1 => ahb_wr_rd_cs(1),
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I3 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I4 => ahb_wr_rd_cs(2),
      O => \M_AHB_HTRANS[1]_i_21_n_0\
    );
\M_AHB_HTRANS[1]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => ahb_wr_rd_cs(2),
      I1 => ahb_wr_rd_cs(1),
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I3 => \out\,
      O => \M_AHB_HTRANS[1]_i_22_n_0\
    );
\M_AHB_HTRANS[1]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ahb_wr_rd_cs(1),
      I1 => ahb_wr_rd_cs(2),
      O => \M_AHB_HTRANS[1]_i_23_n_0\
    );
\M_AHB_HTRANS[1]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555455"
    )
        port map (
      I0 => \GEN_32_DATA_WIDTH.HADDR_i[4]_i_4_0\,
      I1 => wrap_brst_count_reg(2),
      I2 => wrap_brst_count_reg(3),
      I3 => wrap_brst_count_reg(1),
      I4 => wrap_brst_count_reg(0),
      I5 => WREADY_i_i_6_n_0,
      O => \M_AHB_HTRANS[1]_i_25_n_0\
    );
\M_AHB_HTRANS[1]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      O => \M_AHB_HTRANS[1]_i_26_n_0\
    );
\M_AHB_HTRANS[1]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => WREADY_i_i_6_n_0,
      I1 => wrap_brst_count_reg(0),
      I2 => wrap_brst_count_reg(1),
      I3 => wrap_brst_count_reg(3),
      I4 => wrap_brst_count_reg(2),
      O => \M_AHB_HTRANS[1]_i_27_n_0\
    );
\M_AHB_HTRANS[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \^awready_i_reg\,
      I1 => \M_AHB_HTRANS_reg[0]_2\,
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_2\,
      I3 => \M_AHB_HTRANS[1]_i_10_n_0\,
      I4 => \M_AHB_HTRANS[1]_i_11_n_0\,
      I5 => \M_AHB_HTRANS[1]_i_12_n_0\,
      O => \M_AHB_HTRANS[1]_i_3_n_0\
    );
\M_AHB_HTRANS[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF00FD"
    )
        port map (
      I0 => \M_AHB_HTRANS[1]_i_13_n_0\,
      I1 => \M_AHB_HTRANS[1]_i_14_n_0\,
      I2 => \M_AHB_HTRANS[1]_i_15_n_0\,
      I3 => \M_AHB_HTRANS[1]_i_16_n_0\,
      I4 => \M_AHB_HTRANS[1]_i_17_n_0\,
      I5 => \M_AHB_HTRANS[0]_i_2_n_0\,
      O => \M_AHB_HTRANS[1]_i_4_n_0\
    );
\M_AHB_HTRANS[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^wrap_brst_count_reg[1]_0\,
      I1 => \^s_axi_wvalid_0\,
      I2 => \M_AHB_HTRANS[1]_i_20_n_0\,
      I3 => \FSM_sequential_ahb_wr_rd_cs_reg[1]_2\,
      I4 => \M_AHB_HTRANS[1]_i_21_n_0\,
      O => \M_AHB_HTRANS[1]_i_7_n_0\
    );
\M_AHB_HTRANS[1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \FSM_sequential_ahb_wr_rd_cs_reg[0]_0\,
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I3 => ahb_wr_rd_cs(1),
      I4 => ahb_wr_rd_cs(2),
      O => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_2\
    );
\M_AHB_HTRANS_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \M_AHB_HTRANS[0]_i_1_n_0\,
      Q => \^m_ahb_htrans\(0),
      R => '0'
    );
\M_AHB_HTRANS_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \M_AHB_HTRANS[1]_i_1_n_0\,
      Q => \^m_ahb_htrans\(1),
      R => SR(0)
    );
RRESP_1_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010800000"
    )
        port map (
      I0 => ahb_wr_rd_cs(2),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I2 => m_ahb_hready,
      I3 => ahb_wr_rd_cs(1),
      I4 => m_ahb_hresp,
      I5 => RRESP_1_i_reg,
      O => RRESP_1_i
    );
\S_AXI_RDATA[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => ahb_wr_rd_cs(1),
      I1 => m_ahb_hready,
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I3 => ahb_wr_rd_cs(2),
      I4 => m_ahb_hrdata(0),
      I5 => RRESP_1_i_reg,
      O => D(0)
    );
\S_AXI_RDATA[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => ahb_wr_rd_cs(1),
      I1 => m_ahb_hready,
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I3 => ahb_wr_rd_cs(2),
      I4 => m_ahb_hrdata(2),
      I5 => RRESP_1_i_reg,
      O => D(2)
    );
\S_AXI_RDATA[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => ahb_wr_rd_cs(1),
      I1 => m_ahb_hready,
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I3 => ahb_wr_rd_cs(2),
      I4 => m_ahb_hrdata(3),
      I5 => RRESP_1_i_reg,
      O => D(3)
    );
\S_AXI_RDATA[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => ahb_wr_rd_cs(1),
      I1 => m_ahb_hready,
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I3 => ahb_wr_rd_cs(2),
      I4 => m_ahb_hrdata(4),
      I5 => RRESP_1_i_reg,
      O => D(4)
    );
\S_AXI_RDATA[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => ahb_wr_rd_cs(1),
      I1 => m_ahb_hready,
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I3 => ahb_wr_rd_cs(2),
      I4 => m_ahb_hrdata(5),
      I5 => RRESP_1_i_reg,
      O => D(5)
    );
\S_AXI_RDATA[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => ahb_wr_rd_cs(1),
      I1 => m_ahb_hready,
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I3 => ahb_wr_rd_cs(2),
      I4 => m_ahb_hrdata(6),
      I5 => RRESP_1_i_reg,
      O => D(6)
    );
\S_AXI_RDATA[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => ahb_wr_rd_cs(1),
      I1 => m_ahb_hready,
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I3 => ahb_wr_rd_cs(2),
      I4 => m_ahb_hrdata(1),
      I5 => RRESP_1_i_reg,
      O => D(1)
    );
WREADY_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFFFF"
    )
        port map (
      I0 => m_ahb_hready,
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I2 => ahb_wr_rd_cs(2),
      I3 => ahb_wr_rd_cs(1),
      I4 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      O => m_ahb_hready_0
    );
WREADY_i_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => WREADY_i_i_6_n_0,
      I1 => wrap_brst_count_reg(1),
      I2 => wrap_brst_count_reg(0),
      I3 => wrap_brst_count_reg(3),
      I4 => wrap_brst_count_reg(2),
      O => \^wrap_brst_count_reg[1]_0\
    );
WREADY_i_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I2 => ahb_wr_rd_cs(1),
      I3 => ahb_wr_rd_cs(2),
      I4 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I5 => m_ahb_hready,
      O => \^s_axi_wvalid_0\
    );
WREADY_i_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wrap_brst_count_reg(7),
      I1 => wrap_brst_count_reg(5),
      I2 => wrap_brst_count_reg(4),
      I3 => wrap_brst_count_reg(6),
      O => WREADY_i_i_6_n_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wrap_brst_count_reg[7]_0\(5),
      I1 => load_counter,
      I2 => wrap_brst_count_reg(5),
      O => A(5)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wrap_brst_count_reg[7]_0\(4),
      I1 => load_counter,
      I2 => wrap_brst_count_reg(4),
      O => A(4)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => wrap_brst_count_reg(6),
      I1 => \wrap_brst_count_reg[7]_0\(6),
      I2 => wrap_brst_count_reg(7),
      I3 => load_counter,
      I4 => \wrap_brst_count_reg[7]_0\(7),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => wrap_brst_count_reg(5),
      I1 => \wrap_brst_count_reg[7]_0\(5),
      I2 => wrap_brst_count_reg(6),
      I3 => load_counter,
      I4 => \wrap_brst_count_reg[7]_0\(6),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => wrap_brst_count_reg(4),
      I1 => \wrap_brst_count_reg[7]_0\(4),
      I2 => wrap_brst_count_reg(5),
      I3 => load_counter,
      I4 => \wrap_brst_count_reg[7]_0\(5),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wrap_brst_count_reg[7]_0\(0),
      I1 => load_counter,
      I2 => wrap_brst_count_reg(0),
      O => A(0)
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wrap_brst_count_reg[7]_0\(3),
      I1 => load_counter,
      I2 => wrap_brst_count_reg(3),
      O => A(3)
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wrap_brst_count_reg[7]_0\(2),
      I1 => load_counter,
      I2 => wrap_brst_count_reg(2),
      O => A(2)
    );
\i__carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wrap_brst_count_reg[7]_0\(1),
      I1 => load_counter,
      I2 => wrap_brst_count_reg(1),
      O => A(1)
    );
\i__carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => wrap_brst_count_reg(3),
      I1 => \wrap_brst_count_reg[7]_0\(3),
      I2 => wrap_brst_count_reg(4),
      I3 => load_counter,
      I4 => \wrap_brst_count_reg[7]_0\(4),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => wrap_brst_count_reg(2),
      I1 => \wrap_brst_count_reg[7]_0\(2),
      I2 => wrap_brst_count_reg(3),
      I3 => load_counter,
      I4 => \wrap_brst_count_reg[7]_0\(3),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => wrap_brst_count_reg(1),
      I1 => \wrap_brst_count_reg[7]_0\(1),
      I2 => wrap_brst_count_reg(2),
      I3 => load_counter,
      I4 => \wrap_brst_count_reg[7]_0\(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => wrap_brst_count_reg(1),
      I1 => \wrap_brst_count_reg[7]_0\(1),
      I2 => load_counter,
      O => \i__carry_i_8_n_0\
    );
load_counter_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000000E"
    )
        port map (
      I0 => \FSM_sequential_ahb_wr_rd_cs_reg[3]_3\,
      I1 => load_counter_reg_0,
      I2 => ahb_wr_rd_cs(1),
      I3 => ahb_wr_rd_cs(2),
      I4 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I5 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      O => \^awready_i_reg\
    );
load_counter_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => load_counter_sm,
      Q => load_counter,
      R => SR(0)
    );
one_kb_in_progress_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEAEAAAAAAAAAAAA"
    )
        port map (
      I0 => \^one_kb_cross\,
      I1 => one_kb_in_progress_i_3_n_0,
      I2 => one_kb_in_progress_i_4_n_0,
      I3 => one_kb_in_progress_i_5_n_0,
      I4 => one_kb_in_progress_i_6_n_0,
      I5 => \^one_kb_in_progress\,
      O => one_kb_in_progress_i_1_n_0
    );
one_kb_in_progress_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \^m_ahb_haddr\(7),
      I1 => \^m_ahb_haddr\(9),
      I2 => \^m_ahb_haddr\(3),
      I3 => \^m_ahb_hsize\(2),
      O => one_kb_in_progress_i_10_n_0
    );
one_kb_in_progress_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC8C8C8C8C8C8C8"
    )
        port map (
      I0 => one_kb_in_progress_i_13_n_0,
      I1 => \^wrap_brst_count_reg[1]_0\,
      I2 => \^s_axi_wvalid_0\,
      I3 => \^fsm_sequential_ahb_wr_rd_cs_reg[1]_1\,
      I4 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I5 => \out\,
      O => one_kb_in_progress_i_12_n_0
    );
one_kb_in_progress_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I1 => \out\,
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I3 => ahb_wr_rd_cs(1),
      I4 => ahb_wr_rd_cs(2),
      O => one_kb_in_progress_i_13_n_0
    );
one_kb_in_progress_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => one_kb_in_progress_i_7_n_0,
      I1 => one_kb_in_progress_i_8_n_0,
      I2 => one_kb_in_progress_i_9_n_0,
      I3 => one_kb_in_progress_i_10_n_0,
      I4 => one_kb_in_progress_reg_1,
      O => \^one_kb_cross\
    );
one_kb_in_progress_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I2 => ahb_wr_rd_cs(2),
      I3 => ahb_wr_rd_cs(1),
      O => one_kb_in_progress_i_3_n_0
    );
one_kb_in_progress_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I1 => ahb_wr_rd_cs(1),
      O => one_kb_in_progress_i_4_n_0
    );
one_kb_in_progress_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \FSM_sequential_ahb_wr_rd_cs_reg[0]_0\,
      I1 => ahb_wr_rd_cs(2),
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      O => one_kb_in_progress_i_5_n_0
    );
one_kb_in_progress_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555541"
    )
        port map (
      I0 => one_kb_in_progress_i_12_n_0,
      I1 => ahb_wr_rd_cs(2),
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I3 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I4 => ahb_wr_rd_cs(1),
      I5 => \FSM_sequential_ahb_wr_rd_cs_reg[0]_0\,
      O => one_kb_in_progress_i_6_n_0
    );
one_kb_in_progress_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => \^m_ahb_hsize\(0),
      I1 => \^m_ahb_hsize\(1),
      I2 => \^m_ahb_haddr\(0),
      I3 => \^m_ahb_haddr\(2),
      O => one_kb_in_progress_i_7_n_0
    );
one_kb_in_progress_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \^m_ahb_haddr\(2),
      I1 => \^m_ahb_haddr\(1),
      I2 => \^m_ahb_hsize\(1),
      O => one_kb_in_progress_i_8_n_0
    );
one_kb_in_progress_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^onekb_cross_access_reg_0\,
      I1 => \^wrap_in_progress\,
      I2 => \^m_ahb_haddr\(5),
      I3 => \^m_ahb_haddr\(8),
      O => one_kb_in_progress_i_9_n_0
    );
one_kb_in_progress_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => one_kb_in_progress_i_1_n_0,
      Q => \^one_kb_in_progress\,
      R => SR(0)
    );
onekb_cross_access_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => Q(5),
      I1 => onekb_cross_access_reg_i_3_0,
      I2 => axi_size(2),
      I3 => \wrap_brst_count_reg[7]_0\(5),
      O => \axi_address_reg[7]\(1)
    );
onekb_cross_access_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => Q(4),
      I1 => onekb_cross_access_reg_i_3,
      I2 => axi_size(2),
      I3 => \wrap_brst_count_reg[7]_0\(4),
      O => \axi_address_reg[7]\(0)
    );
onekb_cross_access_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => Q(3),
      I1 => onekb_cross_access_reg_i_7_0,
      I2 => axi_size(2),
      I3 => \wrap_brst_count_reg[7]_0\(3),
      O => S(3)
    );
onekb_cross_access_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(2),
      I1 => onekb_cross_access_reg_i_7,
      O => S(2)
    );
onekb_cross_access_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66665565AAAA9AAA"
    )
        port map (
      I0 => Q(1),
      I1 => axi_size(2),
      I2 => axi_size(0),
      I3 => \wrap_brst_count_reg[7]_0\(0),
      I4 => axi_size(1),
      I5 => \wrap_brst_count_reg[7]_0\(1),
      O => S(1)
    );
onekb_cross_access_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A59AAAA"
    )
        port map (
      I0 => Q(0),
      I1 => axi_size(0),
      I2 => axi_size(2),
      I3 => axi_size(1),
      I4 => \wrap_brst_count_reg[7]_0\(0),
      O => S(0)
    );
onekb_cross_access_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA666AAAAAAA6A"
    )
        port map (
      I0 => Q(9),
      I1 => axi_size(1),
      I2 => \wrap_brst_count_reg[7]_0\(7),
      I3 => axi_size(0),
      I4 => axi_size(2),
      I5 => \wrap_brst_count_reg[7]_0\(6),
      O => \axi_address_reg[9]\(1)
    );
onekb_cross_access_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA556AAAAAAA6A"
    )
        port map (
      I0 => Q(8),
      I1 => axi_size(1),
      I2 => \wrap_brst_count_reg[7]_0\(6),
      I3 => axi_size(0),
      I4 => axi_size(2),
      I5 => onekb_cross_access_reg_i_2,
      O => \axi_address_reg[9]\(0)
    );
onekb_cross_access_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => Q(7),
      I1 => onekb_cross_access_reg_i_3_2,
      I2 => axi_size(2),
      I3 => \wrap_brst_count_reg[7]_0\(7),
      O => \axi_address_reg[7]\(3)
    );
onekb_cross_access_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => Q(6),
      I1 => onekb_cross_access_reg_i_3_1,
      I2 => axi_size(2),
      I3 => \wrap_brst_count_reg[7]_0\(6),
      O => \axi_address_reg[7]\(2)
    );
onekb_cross_access_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => onekb_cross_access_reg_1,
      Q => \^onekb_cross_access_reg_0\,
      R => '0'
    );
\p_0_out_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \p_0_out_inferred__0/i__carry_n_0\,
      CO(2) => \p_0_out_inferred__0/i__carry_n_1\,
      CO(1) => \p_0_out_inferred__0/i__carry_n_2\,
      CO(0) => \p_0_out_inferred__0/i__carry_n_3\,
      CYINIT => A(0),
      DI(3 downto 1) => A(3 downto 1),
      DI(0) => load_counter,
      O(3) => \p_0_out_inferred__0/i__carry_n_4\,
      O(2) => \p_0_out_inferred__0/i__carry_n_5\,
      O(1) => \p_0_out_inferred__0/i__carry_n_6\,
      O(0) => \p_0_out_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\p_0_out_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_0_out_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_p_0_out_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \p_0_out_inferred__0/i__carry__0_n_2\,
      CO(0) => \p_0_out_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => A(5 downto 4),
      O(3) => \NLW_p_0_out_inferred__0/i__carry__0_O_UNCONNECTED\(3),
      O(2) => \p_0_out_inferred__0/i__carry__0_n_5\,
      O(1) => \p_0_out_inferred__0/i__carry__0_n_6\,
      O(0) => \p_0_out_inferred__0/i__carry__0_n_7\,
      S(3) => '0',
      S(2) => \i__carry__0_i_3_n_0\,
      S(1) => \i__carry__0_i_4_n_0\,
      S(0) => \i__carry__0_i_5_n_0\
    );
single_ahb_wr_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => single_ahb_wr_reg_0,
      Q => \^single_ahb_wr\,
      R => SR(0)
    );
wr_err_occured_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200800000000000"
    )
        port map (
      I0 => write_in_progress,
      I1 => ahb_wr_rd_cs(2),
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I3 => m_ahb_hready,
      I4 => ahb_wr_rd_cs(1),
      I5 => m_ahb_hresp,
      O => wr_err_occured0
    );
\wrap_brst_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => wrap_brst_count_reg(0),
      I1 => load_counter,
      I2 => \wrap_brst_count_reg[7]_0\(0),
      O => \wrap_brst_count[0]_i_1_n_0\
    );
\wrap_brst_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAAAAEA"
    )
        port map (
      I0 => load_counter,
      I1 => ahb_wr_rd_cs(1),
      I2 => m_ahb_hready,
      I3 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(1),
      I4 => ahb_wr_rd_cs(2),
      O => \wrap_brst_count[7]_i_1_n_0\
    );
\wrap_brst_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \wrap_brst_count[7]_i_1_n_0\,
      D => \wrap_brst_count[0]_i_1_n_0\,
      Q => wrap_brst_count_reg(0),
      R => SR(0)
    );
\wrap_brst_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \wrap_brst_count[7]_i_1_n_0\,
      D => \p_0_out_inferred__0/i__carry_n_7\,
      Q => wrap_brst_count_reg(1),
      R => SR(0)
    );
\wrap_brst_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \wrap_brst_count[7]_i_1_n_0\,
      D => \p_0_out_inferred__0/i__carry_n_6\,
      Q => wrap_brst_count_reg(2),
      R => SR(0)
    );
\wrap_brst_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \wrap_brst_count[7]_i_1_n_0\,
      D => \p_0_out_inferred__0/i__carry_n_5\,
      Q => wrap_brst_count_reg(3),
      R => SR(0)
    );
\wrap_brst_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \wrap_brst_count[7]_i_1_n_0\,
      D => \p_0_out_inferred__0/i__carry_n_4\,
      Q => wrap_brst_count_reg(4),
      R => SR(0)
    );
\wrap_brst_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \wrap_brst_count[7]_i_1_n_0\,
      D => \p_0_out_inferred__0/i__carry__0_n_7\,
      Q => wrap_brst_count_reg(5),
      R => SR(0)
    );
\wrap_brst_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \wrap_brst_count[7]_i_1_n_0\,
      D => \p_0_out_inferred__0/i__carry__0_n_6\,
      Q => wrap_brst_count_reg(6),
      R => SR(0)
    );
\wrap_brst_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \wrap_brst_count[7]_i_1_n_0\,
      D => \p_0_out_inferred__0/i__carry__0_n_5\,
      Q => wrap_brst_count_reg(7),
      R => SR(0)
    );
wrap_in_progress_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDCDCCCC"
    )
        port map (
      I0 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_1\,
      I1 => send_wrap_burst,
      I2 => \^fsm_sequential_ahb_wr_rd_cs_reg[1]_1\,
      I3 => \^fsm_sequential_ahb_wr_rd_cs_reg[3]_0\(0),
      I4 => \^wrap_in_progress\,
      O => wrap_in_progress_i_1_n_0
    );
wrap_in_progress_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => wrap_in_progress_i_1_n_0,
      Q => \^wrap_in_progress\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ahb_skid_buf is
  port (
    \out\ : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rlast_int : in STD_LOGIC;
    s_axi_rresp_int : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid_int : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \sig_data_skid_reg_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RRESP_1_i_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ahb_skid_buf;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ahb_skid_buf is
  signal sig_data_reg_out_en : STD_LOGIC;
  signal sig_data_skid_mux_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sig_data_skid_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sig_last_skid_mux_out : STD_LOGIC;
  signal sig_last_skid_reg : STD_LOGIC;
  signal sig_m_valid_dup : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_m_valid_dup : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_m_valid_dup : signal is "no";
  signal sig_m_valid_dup_i_1_n_0 : STD_LOGIC;
  signal sig_m_valid_out : STD_LOGIC;
  attribute RTL_KEEP of sig_m_valid_out : signal is "true";
  attribute equivalent_register_removal of sig_m_valid_out : signal is "no";
  signal sig_reset_reg : STD_LOGIC;
  signal sig_resp_skid_mux_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal sig_resp_skid_reg : STD_LOGIC_VECTOR ( 1 to 1 );
  signal sig_rid_skid_mux_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal sig_rid_skid_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal sig_s_ready_dup : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_dup : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_dup : signal is "no";
  signal sig_s_ready_dup_i_1_n_0 : STD_LOGIC;
  signal sig_s_ready_out : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_out : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_out : signal is "no";
  attribute KEEP : string;
  attribute KEEP of sig_m_valid_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_dup_reg : label is "no";
  attribute KEEP of sig_m_valid_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_out_reg : label is "no";
  attribute KEEP of sig_s_ready_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_dup_reg : label is "no";
  attribute KEEP of sig_s_ready_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_out_reg : label is "no";
begin
  \out\ <= sig_s_ready_out;
  s_axi_rvalid <= sig_m_valid_out;
\S_AXI_RDATA[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_s_ready_out,
      I1 => RRESP_1_i_reg,
      O => E(0)
    );
\sig_data_reg_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(0),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(0),
      O => sig_data_skid_mux_out(0)
    );
\sig_data_reg_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(10),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(10),
      O => sig_data_skid_mux_out(10)
    );
\sig_data_reg_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(11),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(11),
      O => sig_data_skid_mux_out(11)
    );
\sig_data_reg_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(12),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(12),
      O => sig_data_skid_mux_out(12)
    );
\sig_data_reg_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(13),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(13),
      O => sig_data_skid_mux_out(13)
    );
\sig_data_reg_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(14),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(14),
      O => sig_data_skid_mux_out(14)
    );
\sig_data_reg_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(15),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(15),
      O => sig_data_skid_mux_out(15)
    );
\sig_data_reg_out[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(16),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(16),
      O => sig_data_skid_mux_out(16)
    );
\sig_data_reg_out[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(17),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(17),
      O => sig_data_skid_mux_out(17)
    );
\sig_data_reg_out[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(18),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(18),
      O => sig_data_skid_mux_out(18)
    );
\sig_data_reg_out[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(19),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(19),
      O => sig_data_skid_mux_out(19)
    );
\sig_data_reg_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(1),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(1),
      O => sig_data_skid_mux_out(1)
    );
\sig_data_reg_out[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(20),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(20),
      O => sig_data_skid_mux_out(20)
    );
\sig_data_reg_out[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(21),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(21),
      O => sig_data_skid_mux_out(21)
    );
\sig_data_reg_out[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(22),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(22),
      O => sig_data_skid_mux_out(22)
    );
\sig_data_reg_out[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(23),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(23),
      O => sig_data_skid_mux_out(23)
    );
\sig_data_reg_out[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(24),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(24),
      O => sig_data_skid_mux_out(24)
    );
\sig_data_reg_out[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(25),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(25),
      O => sig_data_skid_mux_out(25)
    );
\sig_data_reg_out[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(26),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(26),
      O => sig_data_skid_mux_out(26)
    );
\sig_data_reg_out[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(27),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(27),
      O => sig_data_skid_mux_out(27)
    );
\sig_data_reg_out[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(28),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(28),
      O => sig_data_skid_mux_out(28)
    );
\sig_data_reg_out[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(29),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(29),
      O => sig_data_skid_mux_out(29)
    );
\sig_data_reg_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(2),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(2),
      O => sig_data_skid_mux_out(2)
    );
\sig_data_reg_out[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(30),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(30),
      O => sig_data_skid_mux_out(30)
    );
\sig_data_reg_out[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(31),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(31),
      O => sig_data_skid_mux_out(31)
    );
\sig_data_reg_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(3),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(3),
      O => sig_data_skid_mux_out(3)
    );
\sig_data_reg_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(4),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(4),
      O => sig_data_skid_mux_out(4)
    );
\sig_data_reg_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(5),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(5),
      O => sig_data_skid_mux_out(5)
    );
\sig_data_reg_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(6),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(6),
      O => sig_data_skid_mux_out(6)
    );
\sig_data_reg_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(7),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(7),
      O => sig_data_skid_mux_out(7)
    );
\sig_data_reg_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(8),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(8),
      O => sig_data_skid_mux_out(8)
    );
\sig_data_reg_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_data_skid_reg_reg[31]_0\(9),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(9),
      O => sig_data_skid_mux_out(9)
    );
\sig_data_reg_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(0),
      Q => s_axi_rdata(0),
      R => SR(0)
    );
\sig_data_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(10),
      Q => s_axi_rdata(10),
      R => SR(0)
    );
\sig_data_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(11),
      Q => s_axi_rdata(11),
      R => SR(0)
    );
\sig_data_reg_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(12),
      Q => s_axi_rdata(12),
      R => SR(0)
    );
\sig_data_reg_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(13),
      Q => s_axi_rdata(13),
      R => SR(0)
    );
\sig_data_reg_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(14),
      Q => s_axi_rdata(14),
      R => SR(0)
    );
\sig_data_reg_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(15),
      Q => s_axi_rdata(15),
      R => SR(0)
    );
\sig_data_reg_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(16),
      Q => s_axi_rdata(16),
      R => SR(0)
    );
\sig_data_reg_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(17),
      Q => s_axi_rdata(17),
      R => SR(0)
    );
\sig_data_reg_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(18),
      Q => s_axi_rdata(18),
      R => SR(0)
    );
\sig_data_reg_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(19),
      Q => s_axi_rdata(19),
      R => SR(0)
    );
\sig_data_reg_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(1),
      Q => s_axi_rdata(1),
      R => SR(0)
    );
\sig_data_reg_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(20),
      Q => s_axi_rdata(20),
      R => SR(0)
    );
\sig_data_reg_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(21),
      Q => s_axi_rdata(21),
      R => SR(0)
    );
\sig_data_reg_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(22),
      Q => s_axi_rdata(22),
      R => SR(0)
    );
\sig_data_reg_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(23),
      Q => s_axi_rdata(23),
      R => SR(0)
    );
\sig_data_reg_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(24),
      Q => s_axi_rdata(24),
      R => SR(0)
    );
\sig_data_reg_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(25),
      Q => s_axi_rdata(25),
      R => SR(0)
    );
\sig_data_reg_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(26),
      Q => s_axi_rdata(26),
      R => SR(0)
    );
\sig_data_reg_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(27),
      Q => s_axi_rdata(27),
      R => SR(0)
    );
\sig_data_reg_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(28),
      Q => s_axi_rdata(28),
      R => SR(0)
    );
\sig_data_reg_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(29),
      Q => s_axi_rdata(29),
      R => SR(0)
    );
\sig_data_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(2),
      Q => s_axi_rdata(2),
      R => SR(0)
    );
\sig_data_reg_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(30),
      Q => s_axi_rdata(30),
      R => SR(0)
    );
\sig_data_reg_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(31),
      Q => s_axi_rdata(31),
      R => SR(0)
    );
\sig_data_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(3),
      Q => s_axi_rdata(3),
      R => SR(0)
    );
\sig_data_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(4),
      Q => s_axi_rdata(4),
      R => SR(0)
    );
\sig_data_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(5),
      Q => s_axi_rdata(5),
      R => SR(0)
    );
\sig_data_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(6),
      Q => s_axi_rdata(6),
      R => SR(0)
    );
\sig_data_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(7),
      Q => s_axi_rdata(7),
      R => SR(0)
    );
\sig_data_reg_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(8),
      Q => s_axi_rdata(8),
      R => SR(0)
    );
\sig_data_reg_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(9),
      Q => s_axi_rdata(9),
      R => SR(0)
    );
\sig_data_skid_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(0),
      Q => sig_data_skid_reg(0),
      R => SR(0)
    );
\sig_data_skid_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(10),
      Q => sig_data_skid_reg(10),
      R => SR(0)
    );
\sig_data_skid_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(11),
      Q => sig_data_skid_reg(11),
      R => SR(0)
    );
\sig_data_skid_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(12),
      Q => sig_data_skid_reg(12),
      R => SR(0)
    );
\sig_data_skid_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(13),
      Q => sig_data_skid_reg(13),
      R => SR(0)
    );
\sig_data_skid_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(14),
      Q => sig_data_skid_reg(14),
      R => SR(0)
    );
\sig_data_skid_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(15),
      Q => sig_data_skid_reg(15),
      R => SR(0)
    );
\sig_data_skid_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(16),
      Q => sig_data_skid_reg(16),
      R => SR(0)
    );
\sig_data_skid_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(17),
      Q => sig_data_skid_reg(17),
      R => SR(0)
    );
\sig_data_skid_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(18),
      Q => sig_data_skid_reg(18),
      R => SR(0)
    );
\sig_data_skid_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(19),
      Q => sig_data_skid_reg(19),
      R => SR(0)
    );
\sig_data_skid_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(1),
      Q => sig_data_skid_reg(1),
      R => SR(0)
    );
\sig_data_skid_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(20),
      Q => sig_data_skid_reg(20),
      R => SR(0)
    );
\sig_data_skid_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(21),
      Q => sig_data_skid_reg(21),
      R => SR(0)
    );
\sig_data_skid_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(22),
      Q => sig_data_skid_reg(22),
      R => SR(0)
    );
\sig_data_skid_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(23),
      Q => sig_data_skid_reg(23),
      R => SR(0)
    );
\sig_data_skid_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(24),
      Q => sig_data_skid_reg(24),
      R => SR(0)
    );
\sig_data_skid_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(25),
      Q => sig_data_skid_reg(25),
      R => SR(0)
    );
\sig_data_skid_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(26),
      Q => sig_data_skid_reg(26),
      R => SR(0)
    );
\sig_data_skid_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(27),
      Q => sig_data_skid_reg(27),
      R => SR(0)
    );
\sig_data_skid_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(28),
      Q => sig_data_skid_reg(28),
      R => SR(0)
    );
\sig_data_skid_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(29),
      Q => sig_data_skid_reg(29),
      R => SR(0)
    );
\sig_data_skid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(2),
      Q => sig_data_skid_reg(2),
      R => SR(0)
    );
\sig_data_skid_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(30),
      Q => sig_data_skid_reg(30),
      R => SR(0)
    );
\sig_data_skid_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(31),
      Q => sig_data_skid_reg(31),
      R => SR(0)
    );
\sig_data_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(3),
      Q => sig_data_skid_reg(3),
      R => SR(0)
    );
\sig_data_skid_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(4),
      Q => sig_data_skid_reg(4),
      R => SR(0)
    );
\sig_data_skid_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(5),
      Q => sig_data_skid_reg(5),
      R => SR(0)
    );
\sig_data_skid_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(6),
      Q => sig_data_skid_reg(6),
      R => SR(0)
    );
\sig_data_skid_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(7),
      Q => sig_data_skid_reg(7),
      R => SR(0)
    );
\sig_data_skid_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(8),
      Q => sig_data_skid_reg(8),
      R => SR(0)
    );
\sig_data_skid_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => \sig_data_skid_reg_reg[31]_0\(9),
      Q => sig_data_skid_reg(9),
      R => SR(0)
    );
sig_last_reg_out_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_rlast_int,
      I1 => sig_s_ready_dup,
      I2 => sig_last_skid_reg,
      O => sig_last_skid_mux_out
    );
sig_last_reg_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_last_skid_mux_out,
      Q => s_axi_rlast,
      R => SR(0)
    );
sig_last_skid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => s_axi_rlast_int,
      Q => sig_last_skid_reg,
      R => SR(0)
    );
sig_m_valid_dup_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BAFA0000"
    )
        port map (
      I0 => s_axi_rvalid_int,
      I1 => sig_s_ready_dup,
      I2 => sig_m_valid_dup,
      I3 => s_axi_rready,
      I4 => s_axi_aresetn,
      I5 => sig_reset_reg,
      O => sig_m_valid_dup_i_1_n_0
    );
sig_m_valid_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_m_valid_dup_i_1_n_0,
      Q => sig_m_valid_dup,
      R => '0'
    );
sig_m_valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_m_valid_dup_i_1_n_0,
      Q => sig_m_valid_out,
      R => '0'
    );
sig_reset_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => SR(0),
      Q => sig_reset_reg,
      R => '0'
    );
\sig_resp_reg_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_rresp_int(0),
      I1 => sig_s_ready_dup,
      I2 => sig_resp_skid_reg(1),
      O => sig_resp_skid_mux_out(1)
    );
\sig_resp_reg_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_resp_skid_mux_out(1),
      Q => s_axi_rresp(0),
      R => SR(0)
    );
\sig_resp_skid_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => s_axi_rresp_int(0),
      Q => sig_resp_skid_reg(1),
      R => SR(0)
    );
\sig_rid_reg_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(0),
      I1 => sig_s_ready_dup,
      I2 => sig_rid_skid_reg(0),
      O => sig_rid_skid_mux_out(0)
    );
\sig_rid_reg_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(10),
      I1 => sig_s_ready_dup,
      I2 => sig_rid_skid_reg(10),
      O => sig_rid_skid_mux_out(10)
    );
\sig_rid_reg_out[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axi_rready,
      I1 => sig_m_valid_dup,
      O => sig_data_reg_out_en
    );
\sig_rid_reg_out[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(11),
      I1 => sig_s_ready_dup,
      I2 => sig_rid_skid_reg(11),
      O => sig_rid_skid_mux_out(11)
    );
\sig_rid_reg_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(1),
      I1 => sig_s_ready_dup,
      I2 => sig_rid_skid_reg(1),
      O => sig_rid_skid_mux_out(1)
    );
\sig_rid_reg_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(2),
      I1 => sig_s_ready_dup,
      I2 => sig_rid_skid_reg(2),
      O => sig_rid_skid_mux_out(2)
    );
\sig_rid_reg_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(3),
      I1 => sig_s_ready_dup,
      I2 => sig_rid_skid_reg(3),
      O => sig_rid_skid_mux_out(3)
    );
\sig_rid_reg_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(4),
      I1 => sig_s_ready_dup,
      I2 => sig_rid_skid_reg(4),
      O => sig_rid_skid_mux_out(4)
    );
\sig_rid_reg_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(5),
      I1 => sig_s_ready_dup,
      I2 => sig_rid_skid_reg(5),
      O => sig_rid_skid_mux_out(5)
    );
\sig_rid_reg_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(6),
      I1 => sig_s_ready_dup,
      I2 => sig_rid_skid_reg(6),
      O => sig_rid_skid_mux_out(6)
    );
\sig_rid_reg_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(7),
      I1 => sig_s_ready_dup,
      I2 => sig_rid_skid_reg(7),
      O => sig_rid_skid_mux_out(7)
    );
\sig_rid_reg_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(8),
      I1 => sig_s_ready_dup,
      I2 => sig_rid_skid_reg(8),
      O => sig_rid_skid_mux_out(8)
    );
\sig_rid_reg_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(9),
      I1 => sig_s_ready_dup,
      I2 => sig_rid_skid_reg(9),
      O => sig_rid_skid_mux_out(9)
    );
\sig_rid_reg_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_rid_skid_mux_out(0),
      Q => s_axi_rid(0),
      R => SR(0)
    );
\sig_rid_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_rid_skid_mux_out(10),
      Q => s_axi_rid(10),
      R => SR(0)
    );
\sig_rid_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_rid_skid_mux_out(11),
      Q => s_axi_rid(11),
      R => SR(0)
    );
\sig_rid_reg_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_rid_skid_mux_out(1),
      Q => s_axi_rid(1),
      R => SR(0)
    );
\sig_rid_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_rid_skid_mux_out(2),
      Q => s_axi_rid(2),
      R => SR(0)
    );
\sig_rid_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_rid_skid_mux_out(3),
      Q => s_axi_rid(3),
      R => SR(0)
    );
\sig_rid_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_rid_skid_mux_out(4),
      Q => s_axi_rid(4),
      R => SR(0)
    );
\sig_rid_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_rid_skid_mux_out(5),
      Q => s_axi_rid(5),
      R => SR(0)
    );
\sig_rid_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_rid_skid_mux_out(6),
      Q => s_axi_rid(6),
      R => SR(0)
    );
\sig_rid_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_rid_skid_mux_out(7),
      Q => s_axi_rid(7),
      R => SR(0)
    );
\sig_rid_reg_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_rid_skid_mux_out(8),
      Q => s_axi_rid(8),
      R => SR(0)
    );
\sig_rid_reg_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_rid_skid_mux_out(9),
      Q => s_axi_rid(9),
      R => SR(0)
    );
\sig_rid_skid_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => D(0),
      Q => sig_rid_skid_reg(0),
      R => SR(0)
    );
\sig_rid_skid_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => D(10),
      Q => sig_rid_skid_reg(10),
      R => SR(0)
    );
\sig_rid_skid_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => D(11),
      Q => sig_rid_skid_reg(11),
      R => SR(0)
    );
\sig_rid_skid_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => D(1),
      Q => sig_rid_skid_reg(1),
      R => SR(0)
    );
\sig_rid_skid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => D(2),
      Q => sig_rid_skid_reg(2),
      R => SR(0)
    );
\sig_rid_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => D(3),
      Q => sig_rid_skid_reg(3),
      R => SR(0)
    );
\sig_rid_skid_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => D(4),
      Q => sig_rid_skid_reg(4),
      R => SR(0)
    );
\sig_rid_skid_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => D(5),
      Q => sig_rid_skid_reg(5),
      R => SR(0)
    );
\sig_rid_skid_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => D(6),
      Q => sig_rid_skid_reg(6),
      R => SR(0)
    );
\sig_rid_skid_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => D(7),
      Q => sig_rid_skid_reg(7),
      R => SR(0)
    );
\sig_rid_skid_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => D(8),
      Q => sig_rid_skid_reg(8),
      R => SR(0)
    );
\sig_rid_skid_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sig_s_ready_dup,
      D => D(9),
      Q => sig_rid_skid_reg(9),
      R => SR(0)
    );
sig_s_ready_dup_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8AAA8AAA8AAA8"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_rready,
      I2 => sig_reset_reg,
      I3 => sig_s_ready_dup,
      I4 => s_axi_rvalid_int,
      I5 => sig_m_valid_dup,
      O => sig_s_ready_dup_i_1_n_0
    );
sig_s_ready_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_s_ready_dup_i_1_n_0,
      Q => sig_s_ready_dup,
      R => '0'
    );
sig_s_ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_s_ready_dup_i_1_n_0,
      Q => sig_s_ready_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slv_if is
  port (
    AWREADY_i_reg_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    ahb_rd_request_reg_0 : out STD_LOGIC;
    s_axi_rvalid_int : out STD_LOGIC;
    s_axi_rlast_int : out STD_LOGIC;
    s_axi_rresp_int : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_lock : out STD_LOGIC;
    write_in_progress : out STD_LOGIC;
    single_ahb_rd_xfer : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_length_reg[3]_0\ : out STD_LOGIC;
    ahb_rd_request_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wrap_in_progress_reg : out STD_LOGIC;
    ahb_rd_request_reg_2 : out STD_LOGIC;
    \axi_length_reg[1]_0\ : out STD_LOGIC;
    wrap_in_progress_reg_0 : out STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[2]\ : out STD_LOGIC;
    wrap_in_progress_reg_1 : out STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[1]\ : out STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[0]\ : out STD_LOGIC;
    \axi_prot_reg[2]_0\ : out STD_LOGIC;
    \axi_cache_reg[0]_0\ : out STD_LOGIC;
    \axi_prot_reg[0]_0\ : out STD_LOGIC;
    onekb_cross_access_reg : out STD_LOGIC;
    \FSM_sequential_ahb_wr_rd_cs_reg[0]\ : out STD_LOGIC;
    sig_s_ready_out_reg : out STD_LOGIC;
    \axi_length_reg[1]_1\ : out STD_LOGIC;
    \axi_length_reg[2]_0\ : out STD_LOGIC;
    \FSM_sequential_axi_write_cs_reg[0]_0\ : out STD_LOGIC;
    \axi_length_reg[1]_2\ : out STD_LOGIC;
    \axi_burst_reg[1]_0\ : out STD_LOGIC;
    \axi_address_reg[31]_0\ : out STD_LOGIC;
    \axi_address_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \axi_address_reg[30]_0\ : out STD_LOGIC;
    \axi_address_reg[29]_0\ : out STD_LOGIC;
    \axi_address_reg[28]_0\ : out STD_LOGIC;
    \axi_address_reg[27]_0\ : out STD_LOGIC;
    \axi_address_reg[26]_0\ : out STD_LOGIC;
    \axi_address_reg[25]_0\ : out STD_LOGIC;
    \axi_address_reg[24]_0\ : out STD_LOGIC;
    \axi_address_reg[23]_0\ : out STD_LOGIC;
    \axi_address_reg[22]_0\ : out STD_LOGIC;
    \axi_address_reg[21]_0\ : out STD_LOGIC;
    \axi_address_reg[20]_0\ : out STD_LOGIC;
    \axi_address_reg[19]_0\ : out STD_LOGIC;
    \axi_address_reg[18]_0\ : out STD_LOGIC;
    \axi_address_reg[17]_0\ : out STD_LOGIC;
    \axi_address_reg[16]_0\ : out STD_LOGIC;
    \axi_address_reg[15]_0\ : out STD_LOGIC;
    \axi_address_reg[14]_0\ : out STD_LOGIC;
    \axi_address_reg[13]_0\ : out STD_LOGIC;
    \axi_address_reg[12]_0\ : out STD_LOGIC;
    \axi_address_reg[11]_0\ : out STD_LOGIC;
    \axi_address_reg[10]_0\ : out STD_LOGIC;
    \axi_address_reg[9]_1\ : out STD_LOGIC;
    \axi_address_reg[8]_0\ : out STD_LOGIC;
    \axi_address_reg[7]_0\ : out STD_LOGIC;
    \axi_address_reg[6]_0\ : out STD_LOGIC;
    load_counter_sm : out STD_LOGIC;
    \axi_burst_reg[1]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    send_wrap_burst : out STD_LOGIC;
    single_axi_rd_xfer_reg_0 : out STD_LOGIC;
    ahb_burst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    one_kb_in_progress_reg : out STD_LOGIC;
    \axi_burst_reg[1]_2\ : out STD_LOGIC;
    \axi_burst_reg[0]_0\ : out STD_LOGIC;
    HWRITE_i_reg : out STD_LOGIC;
    \axi_length_reg[0]_0\ : out STD_LOGIC;
    \axi_length_reg[0]_1\ : out STD_LOGIC;
    axi_size : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \axi_length_reg[4]_0\ : out STD_LOGIC;
    \axi_length_reg[5]_0\ : out STD_LOGIC;
    \axi_length_reg[3]_1\ : out STD_LOGIC;
    \axi_length_reg[2]_1\ : out STD_LOGIC;
    \axi_length_reg[1]_3\ : out STD_LOGIC;
    \axi_length_reg[0]_2\ : out STD_LOGIC;
    \axi_size_reg[2]_0\ : out STD_LOGIC;
    \axi_length_reg[1]_4\ : out STD_LOGIC;
    single_axi_wr_xfer_reg_0 : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \RID_i_reg[11]_0\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \S_AXI_RDATA_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_wdata_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    RRESP_1_i : in STD_LOGIC;
    \GEN_32_DATA_WIDTH.HADDR_i_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ahb_haddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\ : in STD_LOGIC_VECTOR ( 28 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    m_ahb_hprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    onekb_cross_access_reg_0 : in STD_LOGIC;
    onekb_cross_access_reg_1 : in STD_LOGIC;
    \axi_wdata_reg[0]_0\ : in STD_LOGIC;
    \axi_wdata_reg[0]_1\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    \FSM_sequential_axi_write_cs_reg[0]_1\ : in STD_LOGIC;
    s_axi_awlock : in STD_LOGIC;
    s_axi_arlock : in STD_LOGIC;
    s_axi_awprot : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \M_AHB_HTRANS[1]_i_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \out\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    wrap_in_progress : in STD_LOGIC;
    \M_AHB_HTRANS[1]_i_2_0\ : in STD_LOGIC;
    \M_AHB_HTRANS[1]_i_2_1\ : in STD_LOGIC;
    \FSM_sequential_axi_read_cs_reg[2]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_ahb_hrdata : in STD_LOGIC_VECTOR ( 24 downto 0 );
    \GEN_32_DATA_WIDTH.HADDR_i_reg[5]\ : in STD_LOGIC;
    load_counter_reg : in STD_LOGIC;
    \FSM_sequential_ahb_wr_rd_cs_reg[1]\ : in STD_LOGIC;
    one_kb_cross : in STD_LOGIC;
    one_kb_in_progress : in STD_LOGIC;
    m_ahb_hwrite : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    onekb_cross_access_reg_i_2_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    onekb_cross_access_reg_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wr_err_occured0 : in STD_LOGIC;
    single_ahb_wr : in STD_LOGIC;
    \FSM_sequential_axi_write_cs_reg[2]_0\ : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slv_if;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slv_if is
  signal \AHB_MSTR_IF_MODULE/HADDR_i\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \AHB_MSTR_IF_MODULE/p_0_in1_in\ : STD_LOGIC;
  signal \^awready_i_reg_0\ : STD_LOGIC;
  signal BVALID_sm : STD_LOGIC;
  signal \^fsm_sequential_ahb_wr_rd_cs_reg[0]\ : STD_LOGIC;
  signal \FSM_sequential_axi_read_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_read_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_read_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_read_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_read_cs[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_read_cs[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_read_cs[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_write_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_write_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_write_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_write_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_write_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_write_cs[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_write_cs[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_write_cs[2]_i_5_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_axi_write_cs_reg[0]_0\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i[2]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_32_DATA_WIDTH.HADDR_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \HBURST_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \HBURST_i[0]_i_3_n_0\ : STD_LOGIC;
  signal \HBURST_i[0]_i_4_n_0\ : STD_LOGIC;
  signal \HBURST_i[2]_i_2_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RLAST_sm : STD_LOGIC;
  signal RVALID_sm : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal WREADY_i_i_2_n_0 : STD_LOGIC;
  signal \^ahb_rd_request_reg_0\ : STD_LOGIC;
  signal \^ahb_rd_request_reg_2\ : STD_LOGIC;
  signal axi_address : STD_LOGIC_VECTOR ( 31 downto 10 );
  signal \^axi_address_reg[9]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \axi_burst[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_burst[1]_i_1_n_0\ : STD_LOGIC;
  signal \^axi_burst_reg[0]_0\ : STD_LOGIC;
  signal \^axi_burst_reg[1]_0\ : STD_LOGIC;
  signal \^axi_burst_reg[1]_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \axi_cache[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_cache[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_cache[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_length[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_length[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_length[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_length[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_length[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_length[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_length[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_length[7]_i_1_n_0\ : STD_LOGIC;
  signal \^axi_length_reg[1]_1\ : STD_LOGIC;
  signal \^axi_length_reg[2]_0\ : STD_LOGIC;
  signal axi_lock_i_1_n_0 : STD_LOGIC;
  signal axi_prot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \axi_prot[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_prot[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_prot[2]_i_2_n_0\ : STD_LOGIC;
  signal axi_read_cs : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_rid : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^axi_size\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \axi_size[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_size[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_size[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_size[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_size[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_size[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_size[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_size[2]_i_4_n_0\ : STD_LOGIC;
  signal axi_wid : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_write_cs : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal onekb_cross_access_i_4_n_0 : STD_LOGIC;
  signal onekb_cross_access_reg_i_2_n_0 : STD_LOGIC;
  signal onekb_cross_access_reg_i_2_n_2 : STD_LOGIC;
  signal onekb_cross_access_reg_i_2_n_3 : STD_LOGIC;
  signal onekb_cross_access_reg_i_3_n_0 : STD_LOGIC;
  signal onekb_cross_access_reg_i_3_n_1 : STD_LOGIC;
  signal onekb_cross_access_reg_i_3_n_2 : STD_LOGIC;
  signal onekb_cross_access_reg_i_3_n_3 : STD_LOGIC;
  signal onekb_cross_access_reg_i_7_n_0 : STD_LOGIC;
  signal onekb_cross_access_reg_i_7_n_1 : STD_LOGIC;
  signal onekb_cross_access_reg_i_7_n_2 : STD_LOGIC;
  signal onekb_cross_access_reg_i_7_n_3 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal rd_request : STD_LOGIC;
  signal read_in_progress : STD_LOGIC;
  signal read_in_progress_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^single_ahb_rd_xfer\ : STD_LOGIC;
  signal single_ahb_wr_xfer : STD_LOGIC;
  signal single_axi_rd_xfer_i_1_n_0 : STD_LOGIC;
  signal single_axi_rd_xfer_i_2_n_0 : STD_LOGIC;
  signal single_axi_rd_xfer_i_3_n_0 : STD_LOGIC;
  signal single_axi_rd_xfer_i_4_n_0 : STD_LOGIC;
  signal single_axi_wr_xfer_i_1_n_0 : STD_LOGIC;
  signal single_axi_wr_xfer_i_2_n_0 : STD_LOGIC;
  signal single_axi_wr_xfer_i_3_n_0 : STD_LOGIC;
  signal wr_addr_ready_sm : STD_LOGIC;
  signal wr_err_occured_i_1_n_0 : STD_LOGIC;
  signal \^wrap_in_progress_reg\ : STD_LOGIC;
  signal \^wrap_in_progress_reg_0\ : STD_LOGIC;
  signal \^wrap_in_progress_reg_1\ : STD_LOGIC;
  signal \^write_in_progress\ : STD_LOGIC;
  signal write_in_progress_i_1_n_0 : STD_LOGIC;
  signal write_in_progress_i_2_n_0 : STD_LOGIC;
  signal write_in_progress_i_3_n_0 : STD_LOGIC;
  signal write_pending : STD_LOGIC;
  signal write_pending_i_1_n_0 : STD_LOGIC;
  signal write_ready_sm : STD_LOGIC;
  signal write_waiting : STD_LOGIC;
  signal NLW_onekb_cross_access_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_onekb_cross_access_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_onekb_cross_access_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_onekb_cross_access_reg_i_7_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of BVALID_i_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_ahb_wr_rd_cs[1]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_sequential_ahb_wr_rd_cs[3]_i_9\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_sequential_axi_read_cs[1]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_sequential_axi_read_cs[2]_i_4\ : label is "soft_lutpair16";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_axi_read_cs_reg[0]\ : label is "axi_rd_idle:000,axi_reading:010,axi_read_last:001,axi_wait_rready:100,rd_resp:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_axi_read_cs_reg[1]\ : label is "axi_rd_idle:000,axi_reading:010,axi_read_last:001,axi_wait_rready:100,rd_resp:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_axi_read_cs_reg[2]\ : label is "axi_rd_idle:000,axi_reading:010,axi_read_last:001,axi_wait_rready:100,rd_resp:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_axi_write_cs_reg[0]\ : label is "axi_wr_idle:000,axi_wvalids_wait:001,axi_wr_resp:101,axi_writing:010,axi_wvalid_wait:110,axi_write_last:100,axi_wr_resp_wait:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_axi_write_cs_reg[1]\ : label is "axi_wr_idle:000,axi_wvalids_wait:001,axi_wr_resp:101,axi_writing:010,axi_wvalid_wait:110,axi_write_last:100,axi_wr_resp_wait:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_axi_write_cs_reg[2]\ : label is "axi_wr_idle:000,axi_wvalids_wait:001,axi_wr_resp:101,axi_writing:010,axi_wvalid_wait:110,axi_write_last:100,axi_wr_resp_wait:011";
  attribute SOFT_HLUTNM of \GEN_32_DATA_WIDTH.HADDR_i[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \GEN_32_DATA_WIDTH.HADDR_i[4]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \GEN_32_DATA_WIDTH.HADDR_i[5]_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \HBURST_i[0]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \HBURST_i[0]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \HBURST_i[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \HBURST_i[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \HBURST_i[2]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of HWRITE_i_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \M_AHB_HTRANS[0]_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \M_AHB_HTRANS[1]_i_8\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of RVALID_i_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[10]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[11]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[12]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[13]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[14]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[15]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[16]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[17]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[18]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[1]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[21]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[22]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[23]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[24]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[27]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[28]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[29]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[2]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[31]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[4]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[5]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[7]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[8]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[9]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \axi_address[0]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \axi_address[10]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \axi_address[11]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \axi_address[12]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \axi_address[13]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \axi_address[14]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \axi_address[15]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \axi_address[16]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \axi_address[17]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \axi_address[18]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \axi_address[19]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \axi_address[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \axi_address[20]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \axi_address[21]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \axi_address[22]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \axi_address[23]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \axi_address[24]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \axi_address[25]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \axi_address[26]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \axi_address[27]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \axi_address[28]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \axi_address[29]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \axi_address[2]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \axi_address[30]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \axi_address[31]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \axi_address[3]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \axi_address[4]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \axi_address[5]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \axi_address[6]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \axi_address[7]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \axi_address[8]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \axi_address[9]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \axi_burst[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \axi_burst[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \axi_cache[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \axi_cache[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \axi_cache[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \axi_length[0]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \axi_length[1]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \axi_length[2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \axi_length[3]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \axi_length[4]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \axi_length[5]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \axi_length[6]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \axi_length[7]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of axi_lock_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \axi_prot[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \axi_prot[2]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of load_counter_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of onekb_cross_access_i_12 : label is "soft_lutpair19";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of onekb_cross_access_reg_i_2 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of onekb_cross_access_reg_i_3 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of onekb_cross_access_reg_i_7 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of wrap_in_progress_i_2 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of write_in_progress_i_3 : label is "soft_lutpair13";
begin
  AWREADY_i_reg_0 <= \^awready_i_reg_0\;
  \FSM_sequential_ahb_wr_rd_cs_reg[0]\ <= \^fsm_sequential_ahb_wr_rd_cs_reg[0]\;
  \FSM_sequential_axi_write_cs_reg[0]_0\ <= \^fsm_sequential_axi_write_cs_reg[0]_0\;
  Q(7 downto 0) <= \^q\(7 downto 0);
  SR(0) <= \^sr\(0);
  ahb_rd_request_reg_0 <= \^ahb_rd_request_reg_0\;
  ahb_rd_request_reg_2 <= \^ahb_rd_request_reg_2\;
  \axi_address_reg[9]_0\(9 downto 0) <= \^axi_address_reg[9]_0\(9 downto 0);
  \axi_burst_reg[0]_0\ <= \^axi_burst_reg[0]_0\;
  \axi_burst_reg[1]_0\ <= \^axi_burst_reg[1]_0\;
  \axi_burst_reg[1]_1\(1 downto 0) <= \^axi_burst_reg[1]_1\(1 downto 0);
  \axi_length_reg[1]_1\ <= \^axi_length_reg[1]_1\;
  \axi_length_reg[2]_0\ <= \^axi_length_reg[2]_0\;
  axi_size(2 downto 0) <= \^axi_size\(2 downto 0);
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  single_ahb_rd_xfer <= \^single_ahb_rd_xfer\;
  wrap_in_progress_reg <= \^wrap_in_progress_reg\;
  wrap_in_progress_reg_0 <= \^wrap_in_progress_reg_0\;
  wrap_in_progress_reg_1 <= \^wrap_in_progress_reg_1\;
  write_in_progress <= \^write_in_progress\;
AWREADY_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^sr\(0)
    );
AWREADY_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => axi_write_cs(0),
      I3 => axi_write_cs(1),
      I4 => axi_write_cs(2),
      O => wr_addr_ready_sm
    );
AWREADY_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => wr_addr_ready_sm,
      Q => \^awready_i_reg_0\,
      R => \^sr\(0)
    );
\BID_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wid(0),
      Q => s_axi_bid(0),
      R => \^sr\(0)
    );
\BID_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wid(10),
      Q => s_axi_bid(10),
      R => \^sr\(0)
    );
\BID_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wid(11),
      Q => s_axi_bid(11),
      R => \^sr\(0)
    );
\BID_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wid(1),
      Q => s_axi_bid(1),
      R => \^sr\(0)
    );
\BID_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wid(2),
      Q => s_axi_bid(2),
      R => \^sr\(0)
    );
\BID_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wid(3),
      Q => s_axi_bid(3),
      R => \^sr\(0)
    );
\BID_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wid(4),
      Q => s_axi_bid(4),
      R => \^sr\(0)
    );
\BID_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wid(5),
      Q => s_axi_bid(5),
      R => \^sr\(0)
    );
\BID_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wid(6),
      Q => s_axi_bid(6),
      R => \^sr\(0)
    );
\BID_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wid(7),
      Q => s_axi_bid(7),
      R => \^sr\(0)
    );
\BID_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wid(8),
      Q => s_axi_bid(8),
      R => \^sr\(0)
    );
\BID_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wid(9),
      Q => s_axi_bid(9),
      R => \^sr\(0)
    );
BVALID_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02C00EC0"
    )
        port map (
      I0 => \FSM_sequential_axi_write_cs_reg[0]_1\,
      I1 => axi_write_cs(0),
      I2 => axi_write_cs(1),
      I3 => axi_write_cs(2),
      I4 => s_axi_bready,
      O => BVALID_sm
    );
BVALID_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => BVALID_sm,
      Q => s_axi_bvalid,
      R => \^sr\(0)
    );
\FSM_sequential_ahb_wr_rd_cs[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABABABFF"
    )
        port map (
      I0 => \FSM_sequential_ahb_wr_rd_cs_reg[1]\,
      I1 => \^q\(1),
      I2 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      I3 => \^axi_burst_reg[1]_1\(0),
      I4 => \^axi_burst_reg[1]_1\(1),
      O => \^axi_length_reg[1]_1\
    );
\FSM_sequential_ahb_wr_rd_cs[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEBBFF"
    )
        port map (
      I0 => axi_write_cs(0),
      I1 => axi_write_cs(1),
      I2 => s_axi_wvalid,
      I3 => \axi_wdata_reg[0]_1\,
      I4 => axi_write_cs(2),
      O => \^fsm_sequential_axi_write_cs_reg[0]_0\
    );
\FSM_sequential_ahb_wr_rd_cs[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => load_counter_reg,
      I1 => \^single_ahb_rd_xfer\,
      I2 => \^axi_burst_reg[1]_1\(1),
      I3 => \^axi_burst_reg[1]_1\(0),
      I4 => \^awready_i_reg_0\,
      O => single_axi_rd_xfer_reg_0
    );
\FSM_sequential_axi_read_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFFFFFAAAE0000"
    )
        port map (
      I0 => \FSM_sequential_axi_read_cs[1]_i_2_n_0\,
      I1 => \^single_ahb_rd_xfer\,
      I2 => axi_read_cs(1),
      I3 => axi_read_cs(2),
      I4 => \FSM_sequential_axi_read_cs[2]_i_3_n_0\,
      I5 => axi_read_cs(0),
      O => \FSM_sequential_axi_read_cs[0]_i_1_n_0\
    );
\FSM_sequential_axi_read_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFFBEBF0000"
    )
        port map (
      I0 => \FSM_sequential_axi_read_cs[1]_i_2_n_0\,
      I1 => axi_read_cs(2),
      I2 => axi_read_cs(0),
      I3 => \^single_ahb_rd_xfer\,
      I4 => \FSM_sequential_axi_read_cs[2]_i_3_n_0\,
      I5 => axi_read_cs(1),
      O => \FSM_sequential_axi_read_cs[1]_i_1_n_0\
    );
\FSM_sequential_axi_read_cs[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => axi_read_cs(0),
      I1 => axi_read_cs(1),
      I2 => axi_read_cs(2),
      I3 => \FSM_sequential_axi_read_cs_reg[2]_0\,
      I4 => \M_AHB_HTRANS[1]_i_2\(0),
      O => \FSM_sequential_axi_read_cs[1]_i_2_n_0\
    );
\FSM_sequential_axi_read_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00B00000"
    )
        port map (
      I0 => \M_AHB_HTRANS[1]_i_2\(0),
      I1 => \FSM_sequential_axi_read_cs_reg[2]_0\,
      I2 => axi_read_cs(1),
      I3 => axi_read_cs(0),
      I4 => \FSM_sequential_axi_read_cs[2]_i_3_n_0\,
      I5 => axi_read_cs(2),
      O => \FSM_sequential_axi_read_cs[2]_i_1_n_0\
    );
\FSM_sequential_axi_read_cs[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF1FFF5F5"
    )
        port map (
      I0 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      I1 => \M_AHB_HTRANS[1]_i_2\(0),
      I2 => \FSM_sequential_axi_read_cs[2]_i_4_n_0\,
      I3 => \FSM_sequential_axi_read_cs[2]_i_5_n_0\,
      I4 => \out\,
      I5 => rd_request,
      O => \FSM_sequential_axi_read_cs[2]_i_3_n_0\
    );
\FSM_sequential_axi_read_cs[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \out\,
      I1 => axi_read_cs(1),
      I2 => axi_read_cs(2),
      I3 => axi_read_cs(0),
      O => \FSM_sequential_axi_read_cs[2]_i_4_n_0\
    );
\FSM_sequential_axi_read_cs[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => axi_read_cs(1),
      I1 => axi_read_cs(2),
      I2 => axi_read_cs(0),
      O => \FSM_sequential_axi_read_cs[2]_i_5_n_0\
    );
\FSM_sequential_axi_read_cs_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_axi_read_cs[0]_i_1_n_0\,
      Q => axi_read_cs(0),
      R => \^sr\(0)
    );
\FSM_sequential_axi_read_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_axi_read_cs[1]_i_1_n_0\,
      Q => axi_read_cs(1),
      R => \^sr\(0)
    );
\FSM_sequential_axi_read_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_axi_read_cs[2]_i_1_n_0\,
      Q => axi_read_cs(2),
      R => \^sr\(0)
    );
\FSM_sequential_axi_write_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5500FFFF40FF0000"
    )
        port map (
      I0 => axi_write_cs(2),
      I1 => \FSM_sequential_axi_write_cs_reg[0]_1\,
      I2 => \FSM_sequential_axi_write_cs[0]_i_2_n_0\,
      I3 => axi_write_cs(1),
      I4 => \FSM_sequential_axi_write_cs[2]_i_3_n_0\,
      I5 => axi_write_cs(0),
      O => \FSM_sequential_axi_write_cs[0]_i_1_n_0\
    );
\FSM_sequential_axi_write_cs[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_wlast,
      O => \FSM_sequential_axi_write_cs[0]_i_2_n_0\
    );
\FSM_sequential_axi_write_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFFABAA0000"
    )
        port map (
      I0 => \FSM_sequential_axi_write_cs[1]_i_2_n_0\,
      I1 => axi_write_cs(2),
      I2 => single_ahb_wr_xfer,
      I3 => axi_write_cs(0),
      I4 => \FSM_sequential_axi_write_cs[2]_i_3_n_0\,
      I5 => axi_write_cs(1),
      O => \FSM_sequential_axi_write_cs[1]_i_1_n_0\
    );
\FSM_sequential_axi_write_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440444444"
    )
        port map (
      I0 => axi_write_cs(0),
      I1 => axi_write_cs(1),
      I2 => \FSM_sequential_axi_write_cs_reg[0]_1\,
      I3 => s_axi_wlast,
      I4 => s_axi_wvalid,
      I5 => axi_write_cs(2),
      O => \FSM_sequential_axi_write_cs[1]_i_2_n_0\
    );
\FSM_sequential_axi_write_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0303FFFFC8F80000"
    )
        port map (
      I0 => single_ahb_wr_xfer,
      I1 => axi_write_cs(0),
      I2 => axi_write_cs(1),
      I3 => \FSM_sequential_axi_write_cs_reg[2]_0\,
      I4 => \FSM_sequential_axi_write_cs[2]_i_3_n_0\,
      I5 => axi_write_cs(2),
      O => \FSM_sequential_axi_write_cs[2]_i_1_n_0\
    );
\FSM_sequential_axi_write_cs[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8ABABABA8A8A8A"
    )
        port map (
      I0 => \FSM_sequential_axi_write_cs[2]_i_4_n_0\,
      I1 => axi_write_cs(1),
      I2 => axi_write_cs(2),
      I3 => s_axi_bready,
      I4 => axi_write_cs(0),
      I5 => \FSM_sequential_axi_write_cs_reg[0]_1\,
      O => \FSM_sequential_axi_write_cs[2]_i_3_n_0\
    );
\FSM_sequential_axi_write_cs[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF8AAAAF0F8F0F0"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \FSM_sequential_axi_write_cs[2]_i_5_n_0\,
      I3 => axi_write_cs(1),
      I4 => axi_write_cs(0),
      I5 => axi_write_cs(2),
      O => \FSM_sequential_axi_write_cs[2]_i_4_n_0\
    );
\FSM_sequential_axi_write_cs[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBABAAAAAAAA"
    )
        port map (
      I0 => write_in_progress_i_2_n_0,
      I1 => \axi_wdata_reg[0]_0\,
      I2 => s_axi_wvalid,
      I3 => s_axi_wlast,
      I4 => axi_write_cs(0),
      I5 => axi_write_cs(1),
      O => \FSM_sequential_axi_write_cs[2]_i_5_n_0\
    );
\FSM_sequential_axi_write_cs_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_axi_write_cs[0]_i_1_n_0\,
      Q => axi_write_cs(0),
      R => \^sr\(0)
    );
\FSM_sequential_axi_write_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_axi_write_cs[1]_i_1_n_0\,
      Q => axi_write_cs(1),
      R => \^sr\(0)
    );
\FSM_sequential_axi_write_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_axi_write_cs[2]_i_1_n_0\,
      Q => axi_write_cs(2),
      R => \^sr\(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => m_ahb_haddr(0),
      I1 => \^ahb_rd_request_reg_0\,
      I2 => \^awready_i_reg_0\,
      I3 => s_axi_aresetn,
      O => \GEN_32_DATA_WIDTH.HADDR_i_reg[0]\
    );
\GEN_32_DATA_WIDTH.HADDR_i[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(7),
      I2 => axi_address(10),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(10),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[10]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(8),
      I2 => axi_address(11),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(11),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[11]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(9),
      I2 => axi_address(12),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(12),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[12]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(10),
      I2 => axi_address(13),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(13),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[13]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(11),
      I2 => axi_address(14),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(14),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[14]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(12),
      I2 => axi_address(15),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(15),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[15]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(13),
      I2 => axi_address(16),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(16),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[16]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(14),
      I2 => axi_address(17),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(17),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[17]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(15),
      I2 => axi_address(18),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(18),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[18]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(16),
      I2 => axi_address(19),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(19),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[19]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E200000000"
    )
        port map (
      I0 => m_ahb_haddr(1),
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[3]\(0),
      I2 => \GEN_32_DATA_WIDTH.HADDR_i[1]_i_2_n_0\,
      I3 => \^ahb_rd_request_reg_0\,
      I4 => \^awready_i_reg_0\,
      I5 => s_axi_aresetn,
      O => \GEN_32_DATA_WIDTH.HADDR_i_reg[1]\
    );
\GEN_32_DATA_WIDTH.HADDR_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFF4FFFFFFF0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(0),
      I2 => \^ahb_rd_request_reg_0\,
      I3 => \^awready_i_reg_0\,
      I4 => m_ahb_haddr(1),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \GEN_32_DATA_WIDTH.HADDR_i[1]_i_2_n_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(17),
      I2 => axi_address(20),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(20),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[20]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(18),
      I2 => axi_address(21),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(21),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[21]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(19),
      I2 => axi_address(22),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(22),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[22]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(20),
      I2 => axi_address(23),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(23),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[23]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(21),
      I2 => axi_address(24),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(24),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[24]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(22),
      I2 => axi_address(25),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(25),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[25]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(23),
      I2 => axi_address(26),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(26),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[26]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(24),
      I2 => axi_address(27),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(27),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[27]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(25),
      I2 => axi_address(28),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(28),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[28]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(26),
      I2 => axi_address(29),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(29),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[29]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF40FFFFFFC80000"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \^wrap_in_progress_reg_1\,
      I2 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(1),
      I3 => \GEN_32_DATA_WIDTH.HADDR_i[2]_i_4_n_0\,
      I4 => \GEN_32_DATA_WIDTH.HADDR_i_reg[3]\(0),
      I5 => m_ahb_haddr(2),
      O => \GEN_32_DATA_WIDTH.HADDR_i_reg[2]\
    );
\GEN_32_DATA_WIDTH.HADDR_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFF7"
    )
        port map (
      I0 => wrap_in_progress,
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^awready_i_reg_0\,
      I5 => \^ahb_rd_request_reg_0\,
      O => \^wrap_in_progress_reg_1\
    );
\GEN_32_DATA_WIDTH.HADDR_i[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF11111"
    )
        port map (
      I0 => \^wrap_in_progress_reg_0\,
      I1 => m_ahb_haddr(2),
      I2 => \^ahb_rd_request_reg_0\,
      I3 => \^awready_i_reg_0\,
      I4 => \^axi_address_reg[9]_0\(2),
      O => \GEN_32_DATA_WIDTH.HADDR_i[2]_i_4_n_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(27),
      I2 => axi_address(30),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(30),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[30]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => \AHB_MSTR_IF_MODULE/HADDR_i\(4),
      I1 => \^ahb_rd_request_reg_0\,
      I2 => \^awready_i_reg_0\,
      I3 => \^wrap_in_progress_reg\,
      O => ahb_rd_request_reg_1(0)
    );
\GEN_32_DATA_WIDTH.HADDR_i[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(28),
      I2 => axi_address(31),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(31),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[31]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFF00000000"
    )
        port map (
      I0 => \^ahb_rd_request_reg_2\,
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => wrap_in_progress,
      I5 => \GEN_32_DATA_WIDTH.HADDR_i_reg[3]\(0),
      O => \AHB_MSTR_IF_MODULE/HADDR_i\(4)
    );
\GEN_32_DATA_WIDTH.HADDR_i[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => wrap_in_progress,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \^wrap_in_progress_reg\
    );
\GEN_32_DATA_WIDTH.HADDR_i[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ahb_rd_request_reg_0\,
      I1 => \^awready_i_reg_0\,
      O => \^ahb_rd_request_reg_2\
    );
\GEN_32_DATA_WIDTH.HADDR_i[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => wrap_in_progress,
      O => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFFFE0E0E000"
    )
        port map (
      I0 => \GEN_32_DATA_WIDTH.HADDR_i[3]_i_2_n_0\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i[3]_i_3_n_0\,
      I2 => \GEN_32_DATA_WIDTH.HADDR_i_reg[3]\(0),
      I3 => \^wrap_in_progress_reg_0\,
      I4 => \^q\(1),
      I5 => m_ahb_haddr(3),
      O => \axi_length_reg[1]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0FFE0E0E0E0E0E0"
    )
        port map (
      I0 => \^ahb_rd_request_reg_0\,
      I1 => \^awready_i_reg_0\,
      I2 => \^axi_address_reg[9]_0\(3),
      I3 => \^wrap_in_progress_reg\,
      I4 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(2),
      I5 => \^wrap_in_progress_reg_1\,
      O => \GEN_32_DATA_WIDTH.HADDR_i[3]_i_2_n_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FE0000015400000"
    )
        port map (
      I0 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      I1 => \^q\(1),
      I2 => m_ahb_haddr(2),
      I3 => m_ahb_haddr(3),
      I4 => \^ahb_rd_request_reg_2\,
      I5 => \^wrap_in_progress_reg\,
      O => \GEN_32_DATA_WIDTH.HADDR_i[3]_i_3_n_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => wrap_in_progress,
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^awready_i_reg_0\,
      I5 => \^ahb_rd_request_reg_0\,
      O => \^wrap_in_progress_reg_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axi_burst_reg[1]_1\(0),
      I1 => \^axi_burst_reg[1]_1\(1),
      O => \^axi_burst_reg[0]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBBBBBB80888888"
    )
        port map (
      I0 => \GEN_32_DATA_WIDTH.HADDR_i[5]_i_2_n_0\,
      I1 => \AHB_MSTR_IF_MODULE/HADDR_i\(4),
      I2 => \^q\(3),
      I3 => \^wrap_in_progress_reg\,
      I4 => \^ahb_rd_request_reg_2\,
      I5 => m_ahb_haddr(5),
      O => \axi_length_reg[3]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \GEN_32_DATA_WIDTH.HADDR_i_reg[5]\,
      I1 => \^wrap_in_progress_reg_1\,
      I2 => m_ahb_haddr(5),
      I3 => \^wrap_in_progress_reg_0\,
      I4 => \^axi_address_reg[9]_0\(5),
      I5 => \^ahb_rd_request_reg_2\,
      O => \GEN_32_DATA_WIDTH.HADDR_i[5]_i_2_n_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \axi_length_reg[0]_1\
    );
\GEN_32_DATA_WIDTH.HADDR_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(3),
      I2 => \^axi_address_reg[9]_0\(6),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(6),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[6]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(4),
      I2 => \^axi_address_reg[9]_0\(7),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(7),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[7]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(5),
      I2 => \^axi_address_reg[9]_0\(8),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(8),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[8]_0\
    );
\GEN_32_DATA_WIDTH.HADDR_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF044F0FFF000F0"
    )
        port map (
      I0 => \^wrap_in_progress_reg\,
      I1 => \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(6),
      I2 => \^axi_address_reg[9]_0\(9),
      I3 => \^ahb_rd_request_reg_2\,
      I4 => m_ahb_haddr(9),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => \axi_address_reg[9]_1\
    );
\HBURST_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFF0000"
    )
        port map (
      I0 => \HBURST_i[0]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \HBURST_i[0]_i_3_n_0\,
      I4 => s_axi_aresetn,
      I5 => \HBURST_i[0]_i_4_n_0\,
      O => \axi_length_reg[0]_0\
    );
\HBURST_i[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      O => \HBURST_i[0]_i_2_n_0\
    );
\HBURST_i[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(7),
      I3 => \^q\(6),
      O => \HBURST_i[0]_i_3_n_0\
    );
\HBURST_i[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^axi_burst_reg[1]_1\(1),
      I1 => \^axi_burst_reg[1]_1\(0),
      O => \HBURST_i[0]_i_4_n_0\
    );
\HBURST_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000000"
    )
        port map (
      I0 => \HBURST_i[2]_i_2_n_0\,
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => ahb_burst(0)
    );
\HBURST_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \HBURST_i[2]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => ahb_burst(1)
    );
\HBURST_i[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA0200"
    )
        port map (
      I0 => \HBURST_i[0]_i_3_n_0\,
      I1 => \AHB_MSTR_IF_MODULE/p_0_in1_in\,
      I2 => onekb_cross_access_reg_i_2_n_0,
      I3 => \^axi_burst_reg[1]_1\(0),
      I4 => \^axi_burst_reg[1]_1\(1),
      O => \HBURST_i[2]_i_2_n_0\
    );
\HPROT_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5754"
    )
        port map (
      I0 => axi_prot(2),
      I1 => \^awready_i_reg_0\,
      I2 => \^ahb_rd_request_reg_0\,
      I3 => m_ahb_hprot(0),
      O => \axi_prot_reg[2]_0\
    );
\HPROT_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => axi_prot(0),
      I1 => \^awready_i_reg_0\,
      I2 => \^ahb_rd_request_reg_0\,
      I3 => m_ahb_hprot(1),
      O => \axi_prot_reg[0]_0\
    );
\HPROT_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020202FF02020200"
    )
        port map (
      I0 => axi_cache(0),
      I1 => axi_cache(2),
      I2 => axi_cache(3),
      I3 => \^awready_i_reg_0\,
      I4 => \^ahb_rd_request_reg_0\,
      I5 => m_ahb_hprot(2),
      O => \axi_cache_reg[0]_0\
    );
HWRITE_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => m_ahb_hwrite,
      I1 => \^awready_i_reg_0\,
      I2 => s_axi_aresetn,
      I3 => \^ahb_rd_request_reg_0\,
      O => HWRITE_i_reg
    );
\M_AHB_HTRANS[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \^q\(1),
      I1 => wrap_in_progress,
      I2 => \^q\(0),
      I3 => \^q\(3),
      I4 => \^q\(2),
      O => \axi_length_reg[1]_4\
    );
\M_AHB_HTRANS[1]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAABAAAAAA"
    )
        port map (
      I0 => \^axi_burst_reg[0]_0\,
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => wrap_in_progress,
      I5 => \^q\(1),
      O => \^axi_length_reg[2]_0\
    );
\M_AHB_HTRANS[1]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEEEFEEEFFFFF"
    )
        port map (
      I0 => one_kb_cross,
      I1 => one_kb_in_progress,
      I2 => \^axi_burst_reg[1]_1\(1),
      I3 => \^axi_burst_reg[1]_1\(0),
      I4 => \^q\(1),
      I5 => \GEN_32_DATA_WIDTH.HADDR_i[31]_i_7_n_0\,
      O => one_kb_in_progress_reg
    );
\M_AHB_HTRANS[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8FFFFF8F8FFF00"
    )
        port map (
      I0 => onekb_cross_access_reg_0,
      I1 => \^axi_length_reg[1]_1\,
      I2 => \out\,
      I3 => \^axi_length_reg[2]_0\,
      I4 => \M_AHB_HTRANS[1]_i_2\(1),
      I5 => \^fsm_sequential_axi_write_cs_reg[0]_0\,
      O => sig_s_ready_out_reg
    );
\M_AHB_HTRANS[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^axi_length_reg[1]_1\,
      I1 => \M_AHB_HTRANS[1]_i_2_0\,
      I2 => \^axi_burst_reg[1]_0\,
      I3 => \M_AHB_HTRANS[1]_i_2_1\,
      O => \axi_length_reg[1]_2\
    );
\M_AHB_HTRANS[1]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => \^axi_burst_reg[1]_1\(1),
      I1 => \^axi_burst_reg[1]_1\(0),
      I2 => \FSM_sequential_ahb_wr_rd_cs_reg[1]\,
      O => \^axi_burst_reg[1]_0\
    );
\RID_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rid(0),
      Q => \RID_i_reg[11]_0\(0),
      R => \^sr\(0)
    );
\RID_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rid(10),
      Q => \RID_i_reg[11]_0\(10),
      R => \^sr\(0)
    );
\RID_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rid(11),
      Q => \RID_i_reg[11]_0\(11),
      R => \^sr\(0)
    );
\RID_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rid(1),
      Q => \RID_i_reg[11]_0\(1),
      R => \^sr\(0)
    );
\RID_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rid(2),
      Q => \RID_i_reg[11]_0\(2),
      R => \^sr\(0)
    );
\RID_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rid(3),
      Q => \RID_i_reg[11]_0\(3),
      R => \^sr\(0)
    );
\RID_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rid(4),
      Q => \RID_i_reg[11]_0\(4),
      R => \^sr\(0)
    );
\RID_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rid(5),
      Q => \RID_i_reg[11]_0\(5),
      R => \^sr\(0)
    );
\RID_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rid(6),
      Q => \RID_i_reg[11]_0\(6),
      R => \^sr\(0)
    );
\RID_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rid(7),
      Q => \RID_i_reg[11]_0\(7),
      R => \^sr\(0)
    );
\RID_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rid(8),
      Q => \RID_i_reg[11]_0\(8),
      R => \^sr\(0)
    );
\RID_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rid(9),
      Q => \RID_i_reg[11]_0\(9),
      R => \^sr\(0)
    );
RLAST_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000404000F040400"
    )
        port map (
      I0 => \M_AHB_HTRANS[1]_i_2\(0),
      I1 => \FSM_sequential_axi_read_cs_reg[2]_0\,
      I2 => axi_read_cs(2),
      I3 => axi_read_cs(1),
      I4 => axi_read_cs(0),
      I5 => \out\,
      O => RLAST_sm
    );
RLAST_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => RLAST_sm,
      Q => s_axi_rlast_int,
      R => \^sr\(0)
    );
RRESP_1_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => RRESP_1_i,
      Q => s_axi_rresp_int(0),
      R => \^sr\(0)
    );
RVALID_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0410FFFF"
    )
        port map (
      I0 => \out\,
      I1 => axi_read_cs(0),
      I2 => axi_read_cs(2),
      I3 => axi_read_cs(1),
      I4 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => RVALID_sm
    );
RVALID_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => RVALID_sm,
      Q => s_axi_rvalid_int,
      R => \^sr\(0)
    );
\S_AXI_RDATA[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(8),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(10)
    );
\S_AXI_RDATA[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(9),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(11)
    );
\S_AXI_RDATA[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(10),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(12)
    );
\S_AXI_RDATA[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(11),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(13)
    );
\S_AXI_RDATA[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(12),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(14)
    );
\S_AXI_RDATA[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(13),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(15)
    );
\S_AXI_RDATA[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(14),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(16)
    );
\S_AXI_RDATA[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(15),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(17)
    );
\S_AXI_RDATA[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(16),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(18)
    );
\S_AXI_RDATA[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(0),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(1)
    );
\S_AXI_RDATA[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(17),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(21)
    );
\S_AXI_RDATA[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(18),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(22)
    );
\S_AXI_RDATA[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(19),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(23)
    );
\S_AXI_RDATA[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(20),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(24)
    );
\S_AXI_RDATA[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(21),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(27)
    );
\S_AXI_RDATA[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(22),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(28)
    );
\S_AXI_RDATA[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(23),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(29)
    );
\S_AXI_RDATA[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(1),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(2)
    );
\S_AXI_RDATA[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(24),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(31)
    );
\S_AXI_RDATA[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCBFFFF"
    )
        port map (
      I0 => \M_AHB_HTRANS[1]_i_2\(0),
      I1 => axi_read_cs(0),
      I2 => axi_read_cs(1),
      I3 => axi_read_cs(2),
      I4 => \FSM_sequential_axi_read_cs_reg[2]_0\,
      O => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\
    );
\S_AXI_RDATA[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(2),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(3)
    );
\S_AXI_RDATA[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(3),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(4)
    );
\S_AXI_RDATA[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(4),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(5)
    );
\S_AXI_RDATA[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(5),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(7)
    );
\S_AXI_RDATA[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(6),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(8)
    );
\S_AXI_RDATA[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_ahb_hrdata(7),
      I1 => \^fsm_sequential_ahb_wr_rd_cs_reg[0]\,
      O => p_2_in(9)
    );
\S_AXI_RDATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(0),
      Q => \S_AXI_RDATA_reg[31]_0\(0),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(10),
      Q => \S_AXI_RDATA_reg[31]_0\(10),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(11),
      Q => \S_AXI_RDATA_reg[31]_0\(11),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(12),
      Q => \S_AXI_RDATA_reg[31]_0\(12),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(13),
      Q => \S_AXI_RDATA_reg[31]_0\(13),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(14),
      Q => \S_AXI_RDATA_reg[31]_0\(14),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(15),
      Q => \S_AXI_RDATA_reg[31]_0\(15),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(16),
      Q => \S_AXI_RDATA_reg[31]_0\(16),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(17),
      Q => \S_AXI_RDATA_reg[31]_0\(17),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(18),
      Q => \S_AXI_RDATA_reg[31]_0\(18),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(2),
      Q => \S_AXI_RDATA_reg[31]_0\(19),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(1),
      Q => \S_AXI_RDATA_reg[31]_0\(1),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(3),
      Q => \S_AXI_RDATA_reg[31]_0\(20),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(21),
      Q => \S_AXI_RDATA_reg[31]_0\(21),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(22),
      Q => \S_AXI_RDATA_reg[31]_0\(22),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(23),
      Q => \S_AXI_RDATA_reg[31]_0\(23),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(24),
      Q => \S_AXI_RDATA_reg[31]_0\(24),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(4),
      Q => \S_AXI_RDATA_reg[31]_0\(25),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(5),
      Q => \S_AXI_RDATA_reg[31]_0\(26),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(27),
      Q => \S_AXI_RDATA_reg[31]_0\(27),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(28),
      Q => \S_AXI_RDATA_reg[31]_0\(28),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(29),
      Q => \S_AXI_RDATA_reg[31]_0\(29),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(2),
      Q => \S_AXI_RDATA_reg[31]_0\(2),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(6),
      Q => \S_AXI_RDATA_reg[31]_0\(30),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(31),
      Q => \S_AXI_RDATA_reg[31]_0\(31),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(3),
      Q => \S_AXI_RDATA_reg[31]_0\(3),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(4),
      Q => \S_AXI_RDATA_reg[31]_0\(4),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(5),
      Q => \S_AXI_RDATA_reg[31]_0\(5),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(1),
      Q => \S_AXI_RDATA_reg[31]_0\(6),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(7),
      Q => \S_AXI_RDATA_reg[31]_0\(7),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(8),
      Q => \S_AXI_RDATA_reg[31]_0\(8),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_2_in(9),
      Q => \S_AXI_RDATA_reg[31]_0\(9),
      R => \^sr\(0)
    );
WREADY_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABAAAAAAAAA"
    )
        port map (
      I0 => WREADY_i_i_2_n_0,
      I1 => \axi_wdata_reg[0]_0\,
      I2 => axi_write_cs(2),
      I3 => axi_write_cs(0),
      I4 => axi_write_cs(1),
      I5 => onekb_cross_access_reg_0,
      O => write_ready_sm
    );
WREADY_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC38CC0800080008"
    )
        port map (
      I0 => \axi_wdata_reg[0]_1\,
      I1 => axi_write_cs(1),
      I2 => axi_write_cs(0),
      I3 => axi_write_cs(2),
      I4 => s_axi_awvalid,
      I5 => s_axi_wvalid,
      O => WREADY_i_i_2_n_0
    );
WREADY_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => write_ready_sm,
      Q => s_axi_wready,
      R => \^sr\(0)
    );
ahb_rd_request_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => write_pending,
      I1 => s_axi_arvalid,
      I2 => axi_read_cs(0),
      I3 => \^write_in_progress\,
      I4 => axi_read_cs(1),
      I5 => axi_read_cs(2),
      O => rd_request
    );
ahb_rd_request_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rd_request,
      Q => \^ahb_rd_request_reg_0\,
      R => \^sr\(0)
    );
\axi_address[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(0),
      O => p_1_in(0)
    );
\axi_address[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(10),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(10),
      O => p_1_in(10)
    );
\axi_address[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(11),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(11),
      O => p_1_in(11)
    );
\axi_address[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(12),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(12),
      O => p_1_in(12)
    );
\axi_address[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(13),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(13),
      O => p_1_in(13)
    );
\axi_address[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(14),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(14),
      O => p_1_in(14)
    );
\axi_address[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(15),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(15),
      O => p_1_in(15)
    );
\axi_address[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(16),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(16),
      O => p_1_in(16)
    );
\axi_address[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(17),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(17),
      O => p_1_in(17)
    );
\axi_address[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(18),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(18),
      O => p_1_in(18)
    );
\axi_address[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(19),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(19),
      O => p_1_in(19)
    );
\axi_address[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(1),
      O => p_1_in(1)
    );
\axi_address[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(20),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(20),
      O => p_1_in(20)
    );
\axi_address[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(21),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(21),
      O => p_1_in(21)
    );
\axi_address[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(22),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(22),
      O => p_1_in(22)
    );
\axi_address[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(23),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(23),
      O => p_1_in(23)
    );
\axi_address[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(24),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(24),
      O => p_1_in(24)
    );
\axi_address[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(25),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(25),
      O => p_1_in(25)
    );
\axi_address[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(26),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(26),
      O => p_1_in(26)
    );
\axi_address[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(27),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(27),
      O => p_1_in(27)
    );
\axi_address[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(28),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(28),
      O => p_1_in(28)
    );
\axi_address[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(29),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(29),
      O => p_1_in(29)
    );
\axi_address[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(2),
      O => p_1_in(2)
    );
\axi_address[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(30),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(30),
      O => p_1_in(30)
    );
\axi_address[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(31),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(31),
      O => p_1_in(31)
    );
\axi_address[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(3),
      O => p_1_in(3)
    );
\axi_address[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(4),
      O => p_1_in(4)
    );
\axi_address[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(5),
      O => p_1_in(5)
    );
\axi_address[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(6),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(6),
      O => p_1_in(6)
    );
\axi_address[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(7),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(7),
      O => p_1_in(7)
    );
\axi_address[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(8),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(8),
      O => p_1_in(8)
    );
\axi_address[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(9),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_araddr(9),
      O => p_1_in(9)
    );
\axi_address_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(0),
      Q => \^axi_address_reg[9]_0\(0),
      R => \^sr\(0)
    );
\axi_address_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(10),
      Q => axi_address(10),
      R => \^sr\(0)
    );
\axi_address_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(11),
      Q => axi_address(11),
      R => \^sr\(0)
    );
\axi_address_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(12),
      Q => axi_address(12),
      R => \^sr\(0)
    );
\axi_address_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(13),
      Q => axi_address(13),
      R => \^sr\(0)
    );
\axi_address_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(14),
      Q => axi_address(14),
      R => \^sr\(0)
    );
\axi_address_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(15),
      Q => axi_address(15),
      R => \^sr\(0)
    );
\axi_address_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(16),
      Q => axi_address(16),
      R => \^sr\(0)
    );
\axi_address_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(17),
      Q => axi_address(17),
      R => \^sr\(0)
    );
\axi_address_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(18),
      Q => axi_address(18),
      R => \^sr\(0)
    );
\axi_address_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(19),
      Q => axi_address(19),
      R => \^sr\(0)
    );
\axi_address_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(1),
      Q => \^axi_address_reg[9]_0\(1),
      R => \^sr\(0)
    );
\axi_address_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(20),
      Q => axi_address(20),
      R => \^sr\(0)
    );
\axi_address_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(21),
      Q => axi_address(21),
      R => \^sr\(0)
    );
\axi_address_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(22),
      Q => axi_address(22),
      R => \^sr\(0)
    );
\axi_address_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(23),
      Q => axi_address(23),
      R => \^sr\(0)
    );
\axi_address_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(24),
      Q => axi_address(24),
      R => \^sr\(0)
    );
\axi_address_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(25),
      Q => axi_address(25),
      R => \^sr\(0)
    );
\axi_address_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(26),
      Q => axi_address(26),
      R => \^sr\(0)
    );
\axi_address_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(27),
      Q => axi_address(27),
      R => \^sr\(0)
    );
\axi_address_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(28),
      Q => axi_address(28),
      R => \^sr\(0)
    );
\axi_address_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(29),
      Q => axi_address(29),
      R => \^sr\(0)
    );
\axi_address_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(2),
      Q => \^axi_address_reg[9]_0\(2),
      R => \^sr\(0)
    );
\axi_address_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(30),
      Q => axi_address(30),
      R => \^sr\(0)
    );
\axi_address_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(31),
      Q => axi_address(31),
      R => \^sr\(0)
    );
\axi_address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(3),
      Q => \^axi_address_reg[9]_0\(3),
      R => \^sr\(0)
    );
\axi_address_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(4),
      Q => \^axi_address_reg[9]_0\(4),
      R => \^sr\(0)
    );
\axi_address_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(5),
      Q => \^axi_address_reg[9]_0\(5),
      R => \^sr\(0)
    );
\axi_address_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(6),
      Q => \^axi_address_reg[9]_0\(6),
      R => \^sr\(0)
    );
\axi_address_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(7),
      Q => \^axi_address_reg[9]_0\(7),
      R => \^sr\(0)
    );
\axi_address_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(8),
      Q => \^axi_address_reg[9]_0\(8),
      R => \^sr\(0)
    );
\axi_address_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => p_1_in(9),
      Q => \^axi_address_reg[9]_0\(9),
      R => \^sr\(0)
    );
\axi_burst[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awburst(0),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_arburst(0),
      O => \axi_burst[0]_i_1_n_0\
    );
\axi_burst[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awburst(1),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_arburst(1),
      O => \axi_burst[1]_i_1_n_0\
    );
\axi_burst_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => \axi_burst[0]_i_1_n_0\,
      Q => \^axi_burst_reg[1]_1\(0),
      R => \^sr\(0)
    );
\axi_burst_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => \axi_burst[1]_i_1_n_0\,
      Q => \^axi_burst_reg[1]_1\(1),
      R => \^sr\(0)
    );
\axi_cache[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awcache(0),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_arcache(0),
      O => \axi_cache[0]_i_1_n_0\
    );
\axi_cache[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awcache(1),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_arcache(1),
      O => \axi_cache[2]_i_1_n_0\
    );
\axi_cache[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awcache(2),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_arcache(2),
      O => \axi_cache[3]_i_1_n_0\
    );
\axi_cache_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => \axi_cache[0]_i_1_n_0\,
      Q => axi_cache(0),
      R => \^sr\(0)
    );
\axi_cache_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => \axi_cache[2]_i_1_n_0\,
      Q => axi_cache(2),
      R => \^sr\(0)
    );
\axi_cache_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => \axi_cache[3]_i_1_n_0\,
      Q => axi_cache(3),
      R => \^sr\(0)
    );
\axi_length[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_arlen(0),
      O => \axi_length[0]_i_1_n_0\
    );
\axi_length[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_arlen(1),
      O => \axi_length[1]_i_1_n_0\
    );
\axi_length[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_arlen(2),
      O => \axi_length[2]_i_1_n_0\
    );
\axi_length[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_arlen(3),
      O => \axi_length[3]_i_1_n_0\
    );
\axi_length[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(4),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_arlen(4),
      O => \axi_length[4]_i_1_n_0\
    );
\axi_length[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(5),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_arlen(5),
      O => \axi_length[5]_i_1_n_0\
    );
\axi_length[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(6),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_arlen(6),
      O => \axi_length[6]_i_1_n_0\
    );
\axi_length[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(7),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_arlen(7),
      O => \axi_length[7]_i_1_n_0\
    );
\axi_length_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => \axi_length[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \^sr\(0)
    );
\axi_length_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => \axi_length[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \^sr\(0)
    );
\axi_length_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => \axi_length[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \^sr\(0)
    );
\axi_length_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => \axi_length[3]_i_1_n_0\,
      Q => \^q\(3),
      R => \^sr\(0)
    );
\axi_length_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => \axi_length[4]_i_1_n_0\,
      Q => \^q\(4),
      R => \^sr\(0)
    );
\axi_length_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => \axi_length[5]_i_1_n_0\,
      Q => \^q\(5),
      R => \^sr\(0)
    );
\axi_length_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => \axi_length[6]_i_1_n_0\,
      Q => \^q\(6),
      R => \^sr\(0)
    );
\axi_length_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => \axi_length[7]_i_1_n_0\,
      Q => \^q\(7),
      R => \^sr\(0)
    );
axi_lock_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlock,
      I1 => wr_addr_ready_sm,
      I2 => s_axi_arlock,
      O => axi_lock_i_1_n_0
    );
axi_lock_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => axi_lock_i_1_n_0,
      Q => axi_lock,
      R => \^sr\(0)
    );
\axi_prot[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awprot(0),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_arprot(0),
      O => \axi_prot[0]_i_1_n_0\
    );
\axi_prot[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAAAAAAAAAAA"
    )
        port map (
      I0 => rd_request,
      I1 => axi_write_cs(2),
      I2 => axi_write_cs(1),
      I3 => axi_write_cs(0),
      I4 => s_axi_wvalid,
      I5 => s_axi_awvalid,
      O => \axi_prot[2]_i_1_n_0\
    );
\axi_prot[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awprot(1),
      I1 => wr_addr_ready_sm,
      I2 => s_axi_arprot(1),
      O => \axi_prot[2]_i_2_n_0\
    );
\axi_prot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => \axi_prot[0]_i_1_n_0\,
      Q => axi_prot(0),
      R => \^sr\(0)
    );
\axi_prot_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \axi_prot[2]_i_1_n_0\,
      D => \axi_prot[2]_i_2_n_0\,
      Q => axi_prot(2),
      R => \^sr\(0)
    );
\axi_rid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_request,
      D => s_axi_arid(0),
      Q => axi_rid(0),
      R => \^sr\(0)
    );
\axi_rid_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_request,
      D => s_axi_arid(10),
      Q => axi_rid(10),
      R => \^sr\(0)
    );
\axi_rid_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_request,
      D => s_axi_arid(11),
      Q => axi_rid(11),
      R => \^sr\(0)
    );
\axi_rid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_request,
      D => s_axi_arid(1),
      Q => axi_rid(1),
      R => \^sr\(0)
    );
\axi_rid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_request,
      D => s_axi_arid(2),
      Q => axi_rid(2),
      R => \^sr\(0)
    );
\axi_rid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_request,
      D => s_axi_arid(3),
      Q => axi_rid(3),
      R => \^sr\(0)
    );
\axi_rid_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_request,
      D => s_axi_arid(4),
      Q => axi_rid(4),
      R => \^sr\(0)
    );
\axi_rid_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_request,
      D => s_axi_arid(5),
      Q => axi_rid(5),
      R => \^sr\(0)
    );
\axi_rid_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_request,
      D => s_axi_arid(6),
      Q => axi_rid(6),
      R => \^sr\(0)
    );
\axi_rid_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_request,
      D => s_axi_arid(7),
      Q => axi_rid(7),
      R => \^sr\(0)
    );
\axi_rid_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_request,
      D => s_axi_arid(8),
      Q => axi_rid(8),
      R => \^sr\(0)
    );
\axi_rid_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_request,
      D => s_axi_arid(9),
      Q => axi_rid(9),
      R => \^sr\(0)
    );
\axi_size[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5CFF00005C000000"
    )
        port map (
      I0 => \axi_size[0]_i_2_n_0\,
      I1 => s_axi_arsize(0),
      I2 => wr_addr_ready_sm,
      I3 => \axi_prot[2]_i_1_n_0\,
      I4 => s_axi_aresetn,
      I5 => \^axi_size\(0),
      O => \axi_size[0]_i_1_n_0\
    );
\axi_size[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"81160000EFF7FFFF"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => s_axi_wstrb(0),
      I2 => s_axi_wstrb(2),
      I3 => s_axi_wstrb(3),
      I4 => single_axi_wr_xfer_i_2_n_0,
      I5 => s_axi_awsize(0),
      O => \axi_size[0]_i_2_n_0\
    );
\axi_size[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \axi_size[1]_i_2_n_0\,
      I1 => \axi_prot[2]_i_1_n_0\,
      I2 => s_axi_aresetn,
      I3 => \^axi_size\(1),
      O => \axi_size[1]_i_1_n_0\
    );
\axi_size[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA08AA08AA080808"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_arsize(1),
      I2 => wr_addr_ready_sm,
      I3 => \axi_size[2]_i_3_n_0\,
      I4 => \axi_size[2]_i_4_n_0\,
      I5 => s_axi_awsize(1),
      O => \axi_size[1]_i_2_n_0\
    );
\axi_size[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \axi_size[2]_i_2_n_0\,
      I1 => \axi_prot[2]_i_1_n_0\,
      I2 => s_axi_aresetn,
      I3 => \^axi_size\(2),
      O => \axi_size[2]_i_1_n_0\
    );
\axi_size[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080AAAA00800080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \axi_size[2]_i_3_n_0\,
      I2 => s_axi_awsize(2),
      I3 => \axi_size[2]_i_4_n_0\,
      I4 => wr_addr_ready_sm,
      I5 => s_axi_arsize(2),
      O => \axi_size[2]_i_2_n_0\
    );
\axi_size[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A802AAAAAAAA"
    )
        port map (
      I0 => wr_addr_ready_sm,
      I1 => s_axi_wstrb(3),
      I2 => s_axi_wstrb(2),
      I3 => s_axi_wstrb(0),
      I4 => s_axi_wstrb(1),
      I5 => single_axi_wr_xfer_i_2_n_0,
      O => \axi_size[2]_i_3_n_0\
    );
\axi_size[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => single_axi_wr_xfer_i_2_n_0,
      I1 => s_axi_wstrb(1),
      I2 => s_axi_wstrb(0),
      I3 => s_axi_wstrb(2),
      I4 => s_axi_wstrb(3),
      O => \axi_size[2]_i_4_n_0\
    );
\axi_size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_size[0]_i_1_n_0\,
      Q => \^axi_size\(0),
      R => '0'
    );
\axi_size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_size[1]_i_1_n_0\,
      Q => \^axi_size\(1),
      R => '0'
    );
\axi_size_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_size[2]_i_1_n_0\,
      Q => \^axi_size\(2),
      R => '0'
    );
\axi_wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(0),
      Q => \axi_wdata_reg[31]_0\(0),
      R => \^sr\(0)
    );
\axi_wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(10),
      Q => \axi_wdata_reg[31]_0\(10),
      R => \^sr\(0)
    );
\axi_wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(11),
      Q => \axi_wdata_reg[31]_0\(11),
      R => \^sr\(0)
    );
\axi_wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(12),
      Q => \axi_wdata_reg[31]_0\(12),
      R => \^sr\(0)
    );
\axi_wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(13),
      Q => \axi_wdata_reg[31]_0\(13),
      R => \^sr\(0)
    );
\axi_wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(14),
      Q => \axi_wdata_reg[31]_0\(14),
      R => \^sr\(0)
    );
\axi_wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(15),
      Q => \axi_wdata_reg[31]_0\(15),
      R => \^sr\(0)
    );
\axi_wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(16),
      Q => \axi_wdata_reg[31]_0\(16),
      R => \^sr\(0)
    );
\axi_wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(17),
      Q => \axi_wdata_reg[31]_0\(17),
      R => \^sr\(0)
    );
\axi_wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(18),
      Q => \axi_wdata_reg[31]_0\(18),
      R => \^sr\(0)
    );
\axi_wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(19),
      Q => \axi_wdata_reg[31]_0\(19),
      R => \^sr\(0)
    );
\axi_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(1),
      Q => \axi_wdata_reg[31]_0\(1),
      R => \^sr\(0)
    );
\axi_wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(20),
      Q => \axi_wdata_reg[31]_0\(20),
      R => \^sr\(0)
    );
\axi_wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(21),
      Q => \axi_wdata_reg[31]_0\(21),
      R => \^sr\(0)
    );
\axi_wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(22),
      Q => \axi_wdata_reg[31]_0\(22),
      R => \^sr\(0)
    );
\axi_wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(23),
      Q => \axi_wdata_reg[31]_0\(23),
      R => \^sr\(0)
    );
\axi_wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(24),
      Q => \axi_wdata_reg[31]_0\(24),
      R => \^sr\(0)
    );
\axi_wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(25),
      Q => \axi_wdata_reg[31]_0\(25),
      R => \^sr\(0)
    );
\axi_wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(26),
      Q => \axi_wdata_reg[31]_0\(26),
      R => \^sr\(0)
    );
\axi_wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(27),
      Q => \axi_wdata_reg[31]_0\(27),
      R => \^sr\(0)
    );
\axi_wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(28),
      Q => \axi_wdata_reg[31]_0\(28),
      R => \^sr\(0)
    );
\axi_wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(29),
      Q => \axi_wdata_reg[31]_0\(29),
      R => \^sr\(0)
    );
\axi_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(2),
      Q => \axi_wdata_reg[31]_0\(2),
      R => \^sr\(0)
    );
\axi_wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(30),
      Q => \axi_wdata_reg[31]_0\(30),
      R => \^sr\(0)
    );
\axi_wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(31),
      Q => \axi_wdata_reg[31]_0\(31),
      R => \^sr\(0)
    );
\axi_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(3),
      Q => \axi_wdata_reg[31]_0\(3),
      R => \^sr\(0)
    );
\axi_wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(4),
      Q => \axi_wdata_reg[31]_0\(4),
      R => \^sr\(0)
    );
\axi_wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(5),
      Q => \axi_wdata_reg[31]_0\(5),
      R => \^sr\(0)
    );
\axi_wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(6),
      Q => \axi_wdata_reg[31]_0\(6),
      R => \^sr\(0)
    );
\axi_wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(7),
      Q => \axi_wdata_reg[31]_0\(7),
      R => \^sr\(0)
    );
\axi_wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(8),
      Q => \axi_wdata_reg[31]_0\(8),
      R => \^sr\(0)
    );
\axi_wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => write_ready_sm,
      D => s_axi_wdata(9),
      Q => \axi_wdata_reg[31]_0\(9),
      R => \^sr\(0)
    );
\axi_wid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_addr_ready_sm,
      D => s_axi_awid(0),
      Q => axi_wid(0),
      R => \^sr\(0)
    );
\axi_wid_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_addr_ready_sm,
      D => s_axi_awid(10),
      Q => axi_wid(10),
      R => \^sr\(0)
    );
\axi_wid_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_addr_ready_sm,
      D => s_axi_awid(11),
      Q => axi_wid(11),
      R => \^sr\(0)
    );
\axi_wid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_addr_ready_sm,
      D => s_axi_awid(1),
      Q => axi_wid(1),
      R => \^sr\(0)
    );
\axi_wid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_addr_ready_sm,
      D => s_axi_awid(2),
      Q => axi_wid(2),
      R => \^sr\(0)
    );
\axi_wid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_addr_ready_sm,
      D => s_axi_awid(3),
      Q => axi_wid(3),
      R => \^sr\(0)
    );
\axi_wid_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_addr_ready_sm,
      D => s_axi_awid(4),
      Q => axi_wid(4),
      R => \^sr\(0)
    );
\axi_wid_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_addr_ready_sm,
      D => s_axi_awid(5),
      Q => axi_wid(5),
      R => \^sr\(0)
    );
\axi_wid_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_addr_ready_sm,
      D => s_axi_awid(6),
      Q => axi_wid(6),
      R => \^sr\(0)
    );
\axi_wid_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_addr_ready_sm,
      D => s_axi_awid(7),
      Q => axi_wid(7),
      R => \^sr\(0)
    );
\axi_wid_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_addr_ready_sm,
      D => s_axi_awid(8),
      Q => axi_wid(8),
      R => \^sr\(0)
    );
\axi_wid_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_addr_ready_sm,
      D => s_axi_awid(9),
      Q => axi_wid(9),
      R => \^sr\(0)
    );
load_counter_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A2A2A2"
    )
        port map (
      I0 => load_counter_reg,
      I1 => \^single_ahb_rd_xfer\,
      I2 => \^awready_i_reg_0\,
      I3 => \^axi_burst_reg[1]_1\(0),
      I4 => \^axi_burst_reg[1]_1\(1),
      O => load_counter_sm
    );
one_kb_in_progress_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FFF"
    )
        port map (
      I0 => \^axi_burst_reg[1]_1\(1),
      I1 => \^axi_burst_reg[1]_1\(0),
      I2 => m_ahb_haddr(4),
      I3 => m_ahb_haddr(6),
      O => \axi_burst_reg[1]_2\
    );
onekb_cross_access_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8000000000"
    )
        port map (
      I0 => onekb_cross_access_reg_0,
      I1 => onekb_cross_access_reg_1,
      I2 => \^ahb_rd_request_reg_2\,
      I3 => \AHB_MSTR_IF_MODULE/p_0_in1_in\,
      I4 => onekb_cross_access_reg_i_2_n_0,
      I5 => s_axi_aresetn,
      O => onekb_cross_access_reg
    );
onekb_cross_access_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^axi_size\(1),
      I2 => \^q\(7),
      O => \axi_length_reg[5]_0\
    );
onekb_cross_access_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(6),
      I2 => \^axi_size\(0),
      I3 => \^q\(5),
      I4 => \^axi_size\(1),
      I5 => \^q\(7),
      O => \axi_length_reg[4]_0\
    );
onekb_cross_access_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(5),
      I2 => \^axi_size\(0),
      I3 => \^q\(4),
      I4 => \^axi_size\(1),
      I5 => \^q\(6),
      O => \axi_length_reg[3]_1\
    );
onekb_cross_access_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(4),
      I2 => \^axi_size\(0),
      I3 => \^q\(3),
      I4 => \^axi_size\(1),
      I5 => \^q\(5),
      O => \axi_length_reg[2]_1\
    );
onekb_cross_access_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \^axi_size\(0),
      I3 => \^q\(2),
      I4 => \^axi_size\(1),
      I5 => \^q\(4),
      O => \axi_length_reg[1]_3\
    );
onekb_cross_access_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^axi_size\(0),
      I3 => \^q\(1),
      I4 => \^axi_size\(1),
      I5 => \^q\(3),
      O => \axi_length_reg[0]_2\
    );
onekb_cross_access_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAAEFEF05004040"
    )
        port map (
      I0 => \^axi_size\(2),
      I1 => \^q\(1),
      I2 => \^axi_size\(0),
      I3 => \^q\(0),
      I4 => \^axi_size\(1),
      I5 => \^q\(2),
      O => \axi_size_reg[2]_0\
    );
onekb_cross_access_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^axi_size\(2),
      I1 => \^axi_size\(0),
      I2 => \^axi_size\(1),
      I3 => \^q\(7),
      O => onekb_cross_access_i_4_n_0
    );
onekb_cross_access_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => onekb_cross_access_reg_i_3_n_0,
      CO(3) => onekb_cross_access_reg_i_2_n_0,
      CO(2) => NLW_onekb_cross_access_reg_i_2_CO_UNCONNECTED(2),
      CO(1) => onekb_cross_access_reg_i_2_n_2,
      CO(0) => onekb_cross_access_reg_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^axi_address_reg[9]_0\(9 downto 8),
      O(3) => NLW_onekb_cross_access_reg_i_2_O_UNCONNECTED(3),
      O(2) => \AHB_MSTR_IF_MODULE/p_0_in1_in\,
      O(1 downto 0) => NLW_onekb_cross_access_reg_i_2_O_UNCONNECTED(1 downto 0),
      S(3) => '1',
      S(2) => onekb_cross_access_i_4_n_0,
      S(1 downto 0) => onekb_cross_access_reg_2(1 downto 0)
    );
onekb_cross_access_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => onekb_cross_access_reg_i_7_n_0,
      CO(3) => onekb_cross_access_reg_i_3_n_0,
      CO(2) => onekb_cross_access_reg_i_3_n_1,
      CO(1) => onekb_cross_access_reg_i_3_n_2,
      CO(0) => onekb_cross_access_reg_i_3_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^axi_address_reg[9]_0\(7 downto 4),
      O(3 downto 0) => NLW_onekb_cross_access_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => onekb_cross_access_reg_i_2_0(3 downto 0)
    );
onekb_cross_access_reg_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => onekb_cross_access_reg_i_7_n_0,
      CO(2) => onekb_cross_access_reg_i_7_n_1,
      CO(1) => onekb_cross_access_reg_i_7_n_2,
      CO(0) => onekb_cross_access_reg_i_7_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^axi_address_reg[9]_0\(3 downto 0),
      O(3 downto 0) => NLW_onekb_cross_access_reg_i_7_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
read_in_progress_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => rd_request,
      I1 => single_axi_rd_xfer_i_2_n_0,
      I2 => read_in_progress,
      O => read_in_progress_i_1_n_0
    );
read_in_progress_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_in_progress_i_1_n_0,
      Q => read_in_progress,
      R => \^sr\(0)
    );
single_ahb_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => single_ahb_wr_xfer,
      I1 => \^awready_i_reg_0\,
      I2 => single_ahb_wr,
      O => single_axi_wr_xfer_reg_0
    );
single_axi_rd_xfer_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => single_axi_rd_xfer_i_2_n_0,
      I1 => s_axi_arvalid,
      I2 => single_axi_rd_xfer_i_3_n_0,
      I3 => s_axi_aresetn,
      O => single_axi_rd_xfer_i_1_n_0
    );
single_axi_rd_xfer_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFBFFF83FFBF"
    )
        port map (
      I0 => \out\,
      I1 => axi_read_cs(0),
      I2 => axi_read_cs(1),
      I3 => axi_read_cs(2),
      I4 => \FSM_sequential_axi_read_cs_reg[2]_0\,
      I5 => \M_AHB_HTRANS[1]_i_2\(0),
      O => single_axi_rd_xfer_i_2_n_0
    );
single_axi_rd_xfer_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00010000"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arlen(5),
      I2 => s_axi_arlen(7),
      I3 => single_axi_rd_xfer_i_4_n_0,
      I4 => s_axi_arvalid,
      I5 => \^single_ahb_rd_xfer\,
      O => single_axi_rd_xfer_i_3_n_0
    );
single_axi_rd_xfer_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => s_axi_arlen(6),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arlen(2),
      I4 => s_axi_arlen(4),
      I5 => s_axi_arlen(0),
      O => single_axi_rd_xfer_i_4_n_0
    );
single_axi_rd_xfer_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => single_axi_rd_xfer_i_1_n_0,
      Q => \^single_ahb_rd_xfer\,
      R => '0'
    );
single_axi_wr_xfer_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C550C0000000000"
    )
        port map (
      I0 => BVALID_sm,
      I1 => single_axi_wr_xfer_i_2_n_0,
      I2 => s_axi_awburst(1),
      I3 => s_axi_awvalid,
      I4 => single_ahb_wr_xfer,
      I5 => s_axi_aresetn,
      O => single_axi_wr_xfer_i_1_n_0
    );
single_axi_wr_xfer_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => s_axi_awlen(2),
      I2 => s_axi_awlen(0),
      I3 => s_axi_awlen(3),
      I4 => single_axi_wr_xfer_i_3_n_0,
      O => single_axi_wr_xfer_i_2_n_0
    );
single_axi_wr_xfer_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_awlen(7),
      I1 => s_axi_awlen(5),
      I2 => s_axi_awlen(6),
      I3 => s_axi_awlen(4),
      O => single_axi_wr_xfer_i_3_n_0
    );
single_axi_wr_xfer_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => single_axi_wr_xfer_i_1_n_0,
      Q => single_ahb_wr_xfer,
      R => '0'
    );
wr_err_occured_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFFFFF0000"
    )
        port map (
      I0 => axi_write_cs(2),
      I1 => s_axi_bready,
      I2 => axi_write_cs(1),
      I3 => axi_write_cs(0),
      I4 => wr_err_occured0,
      I5 => \^s_axi_bresp\(0),
      O => wr_err_occured_i_1_n_0
    );
wr_err_occured_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => wr_err_occured_i_1_n_0,
      Q => \^s_axi_bresp\(0),
      R => \^sr\(0)
    );
wrap_in_progress_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A00"
    )
        port map (
      I0 => load_counter_reg,
      I1 => \^awready_i_reg_0\,
      I2 => \^single_ahb_rd_xfer\,
      I3 => \^axi_burst_reg[1]_1\(1),
      I4 => \^axi_burst_reg[1]_1\(0),
      O => send_wrap_burst
    );
write_in_progress_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF3FFFFF22222222"
    )
        port map (
      I0 => write_in_progress_i_2_n_0,
      I1 => axi_write_cs(2),
      I2 => s_axi_bready,
      I3 => axi_write_cs(1),
      I4 => axi_write_cs(0),
      I5 => \^write_in_progress\,
      O => write_in_progress_i_1_n_0
    );
write_in_progress_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4404440444040000"
    )
        port map (
      I0 => read_in_progress,
      I1 => write_in_progress_i_3_n_0,
      I2 => s_axi_arvalid,
      I3 => write_pending,
      I4 => s_axi_awvalid,
      I5 => s_axi_wvalid,
      O => write_in_progress_i_2_n_0
    );
write_in_progress_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_write_cs(0),
      I1 => axi_write_cs(1),
      O => write_in_progress_i_3_n_0
    );
write_in_progress_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => write_in_progress_i_1_n_0,
      Q => \^write_in_progress\,
      R => \^sr\(0)
    );
write_pending_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => write_waiting,
      I1 => BVALID_sm,
      I2 => write_pending,
      O => write_pending_i_1_n_0
    );
write_pending_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000200020000000"
    )
        port map (
      I0 => axi_read_cs(0),
      I1 => axi_read_cs(2),
      I2 => axi_read_cs(1),
      I3 => \out\,
      I4 => s_axi_wvalid,
      I5 => s_axi_awvalid,
      O => write_waiting
    );
write_pending_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => write_pending_i_1_n_0,
      Q => write_pending,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ahblite_bridge is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_awlock : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_ahb_haddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_ahb_hwrite : out STD_LOGIC;
    m_ahb_hsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_ahb_hburst : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_ahb_hprot : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_ahb_htrans : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_ahb_hmastlock : out STD_LOGIC;
    m_ahb_hwdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_ahb_hready : in STD_LOGIC;
    m_ahb_hrdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_ahb_hresp : in STD_LOGIC
  );
  attribute C_DPHASE_TIMEOUT : integer;
  attribute C_DPHASE_TIMEOUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ahblite_bridge : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ahblite_bridge : entity is "zynq";
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ahblite_bridge : entity is "zynq_axi_ahblite_bridge_0_0";
  attribute C_M_AHB_ADDR_WIDTH : integer;
  attribute C_M_AHB_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ahblite_bridge : entity is 32;
  attribute C_M_AHB_DATA_WIDTH : integer;
  attribute C_M_AHB_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ahblite_bridge : entity is 32;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ahblite_bridge : entity is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ahblite_bridge : entity is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ahblite_bridge : entity is 12;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ahblite_bridge : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ahblite_bridge : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ahblite_bridge;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ahblite_bridge is
  signal \<const0>\ : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_101 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_134 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_135 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_136 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_137 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_138 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_139 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_140 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_141 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_142 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_143 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_40 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_49 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_50 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_51 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_53 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_54 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_55 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_56 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_57 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_58 : STD_LOGIC;
  signal AHB_MSTR_IF_MODULE_n_59 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_1 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_100 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_101 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_12 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_22 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_23 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_24 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_25 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_26 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_27 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_28 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_29 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_30 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_31 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_32 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_33 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_34 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_35 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_36 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_37 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_38 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_39 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_40 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_41 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_52 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_53 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_54 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_55 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_56 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_57 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_58 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_59 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_60 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_61 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_62 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_63 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_64 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_65 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_66 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_67 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_68 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_69 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_70 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_71 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_72 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_73 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_74 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_75 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_76 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_81 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_84 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_85 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_86 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_87 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_88 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_89 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_93 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_94 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_95 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_96 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_97 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_98 : STD_LOGIC;
  signal AXI_SLV_IF_MODULE_n_99 : STD_LOGIC;
  signal HADDR_i : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal RRESP_1_i : STD_LOGIC;
  signal VALID_READY_SKID_n_4 : STD_LOGIC;
  signal ahb_burst : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal ahb_wr_rd_cs : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_address : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal axi_burst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_length : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_lock : STD_LOGIC;
  signal axi_size : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_wdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal load_counter_sm : STD_LOGIC;
  signal \^m_ahb_haddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_ahb_hprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^m_ahb_hwrite\ : STD_LOGIC;
  signal one_kb_cross : STD_LOGIC;
  signal one_kb_in_progress : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s_axi_rdata_int : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_rid_int : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s_axi_rlast_int : STD_LOGIC;
  signal s_axi_rready_int : STD_LOGIC;
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s_axi_rresp_int : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s_axi_rvalid_int : STD_LOGIC;
  signal send_wrap_burst : STD_LOGIC;
  signal single_ahb_rd_xfer : STD_LOGIC;
  signal single_ahb_wr : STD_LOGIC;
  signal wr_err_occured0 : STD_LOGIC;
  signal wrap_in_progress : STD_LOGIC;
  signal write_in_progress : STD_LOGIC;
begin
  m_ahb_haddr(31 downto 0) <= \^m_ahb_haddr\(31 downto 0);
  m_ahb_hprot(3) <= \<const0>\;
  m_ahb_hprot(2 downto 0) <= \^m_ahb_hprot\(2 downto 0);
  m_ahb_hwrite <= \^m_ahb_hwrite\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
AHB_MSTR_IF_MODULE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ahb_mstr_if
     port map (
      AWREADY_i_reg => AHB_MSTR_IF_MODULE_n_53,
      D(6) => p_2_in(30),
      D(5 downto 4) => p_2_in(26 downto 25),
      D(3 downto 2) => p_2_in(20 downto 19),
      D(1) => p_2_in(6),
      D(0) => p_2_in(0),
      \FSM_sequential_ahb_wr_rd_cs[3]_i_3_0\ => AXI_SLV_IF_MODULE_n_81,
      \FSM_sequential_ahb_wr_rd_cs_reg[0]_0\ => AXI_SLV_IF_MODULE_n_38,
      \FSM_sequential_ahb_wr_rd_cs_reg[1]_0\(0) => HADDR_i(2),
      \FSM_sequential_ahb_wr_rd_cs_reg[1]_1\ => AHB_MSTR_IF_MODULE_n_56,
      \FSM_sequential_ahb_wr_rd_cs_reg[1]_2\ => AXI_SLV_IF_MODULE_n_36,
      \FSM_sequential_ahb_wr_rd_cs_reg[3]_0\(1) => ahb_wr_rd_cs(3),
      \FSM_sequential_ahb_wr_rd_cs_reg[3]_0\(0) => ahb_wr_rd_cs(0),
      \FSM_sequential_ahb_wr_rd_cs_reg[3]_1\ => AHB_MSTR_IF_MODULE_n_51,
      \FSM_sequential_ahb_wr_rd_cs_reg[3]_2\ => AHB_MSTR_IF_MODULE_n_54,
      \FSM_sequential_ahb_wr_rd_cs_reg[3]_3\ => \^s_axi_awready\,
      \GEN_32_DATA_WIDTH.HADDR_i[4]_i_4_0\ => AXI_SLV_IF_MODULE_n_86,
      \GEN_32_DATA_WIDTH.HADDR_i[5]_i_2\ => AXI_SLV_IF_MODULE_n_89,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[0]_0\ => AXI_SLV_IF_MODULE_n_29,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[10]_0\ => AXI_SLV_IF_MODULE_n_72,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[11]_0\ => AXI_SLV_IF_MODULE_n_71,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[12]_0\ => AXI_SLV_IF_MODULE_n_70,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[13]_0\ => AXI_SLV_IF_MODULE_n_69,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[14]_0\ => AXI_SLV_IF_MODULE_n_68,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[15]_0\ => AXI_SLV_IF_MODULE_n_67,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[16]_0\ => AXI_SLV_IF_MODULE_n_66,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[17]_0\ => AXI_SLV_IF_MODULE_n_65,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[18]_0\ => AXI_SLV_IF_MODULE_n_64,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[19]_0\ => AXI_SLV_IF_MODULE_n_63,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[1]_0\ => AXI_SLV_IF_MODULE_n_28,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[20]_0\ => AXI_SLV_IF_MODULE_n_62,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[21]_0\ => AXI_SLV_IF_MODULE_n_61,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[22]_0\ => AXI_SLV_IF_MODULE_n_60,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[23]_0\ => AXI_SLV_IF_MODULE_n_59,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[24]_0\ => AXI_SLV_IF_MODULE_n_58,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[25]_0\ => AXI_SLV_IF_MODULE_n_57,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[26]_0\ => AXI_SLV_IF_MODULE_n_56,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[27]_0\ => AXI_SLV_IF_MODULE_n_55,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[28]_0\ => AXI_SLV_IF_MODULE_n_54,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[29]_0\ => AXI_SLV_IF_MODULE_n_53,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[2]_0\ => AXI_SLV_IF_MODULE_n_26,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[30]_0\ => AXI_SLV_IF_MODULE_n_52,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[31]_0\(28 downto 3) => data5(31 downto 6),
      \GEN_32_DATA_WIDTH.HADDR_i_reg[31]_0\(2 downto 0) => data5(3 downto 1),
      \GEN_32_DATA_WIDTH.HADDR_i_reg[31]_1\ => AXI_SLV_IF_MODULE_n_41,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[3]_0\ => AXI_SLV_IF_MODULE_n_24,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[4]_0\ => AXI_SLV_IF_MODULE_n_23,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[4]_1\ => AXI_SLV_IF_MODULE_n_25,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[4]_2\ => AXI_SLV_IF_MODULE_n_27,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[4]_3\ => AXI_SLV_IF_MODULE_n_22,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[5]_0\ => AXI_SLV_IF_MODULE_n_12,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[6]_0\ => AXI_SLV_IF_MODULE_n_76,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[7]_0\ => AXI_SLV_IF_MODULE_n_75,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[8]_0\ => AXI_SLV_IF_MODULE_n_74,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[9]_0\ => AXI_SLV_IF_MODULE_n_73,
      HADDR_i(0) => HADDR_i(31),
      \HBURST_i_reg[0]_0\ => AXI_SLV_IF_MODULE_n_88,
      \HPROT_i_reg[0]_0\ => AXI_SLV_IF_MODULE_n_30,
      \HPROT_i_reg[1]_0\ => AXI_SLV_IF_MODULE_n_32,
      \HPROT_i_reg[2]_0\ => AXI_SLV_IF_MODULE_n_31,
      \HWDATA_i_reg[31]_0\(31 downto 0) => axi_wdata(31 downto 0),
      HWRITE_i_reg_0 => AXI_SLV_IF_MODULE_n_87,
      \M_AHB_HTRANS[0]_i_2_0\ => AXI_SLV_IF_MODULE_n_100,
      \M_AHB_HTRANS[1]_i_11_0\(1 downto 0) => axi_burst(1 downto 0),
      \M_AHB_HTRANS[1]_i_3_0\ => AXI_SLV_IF_MODULE_n_37,
      \M_AHB_HTRANS[1]_i_4_0\ => AXI_SLV_IF_MODULE_n_84,
      \M_AHB_HTRANS_reg[0]_0\ => AXI_SLV_IF_MODULE_n_35,
      \M_AHB_HTRANS_reg[0]_1\ => AXI_SLV_IF_MODULE_n_39,
      \M_AHB_HTRANS_reg[0]_2\ => AXI_SLV_IF_MODULE_n_40,
      Q(9 downto 0) => axi_address(9 downto 0),
      RRESP_1_i => RRESP_1_i,
      RRESP_1_i_reg => AXI_SLV_IF_MODULE_n_34,
      S(3) => AHB_MSTR_IF_MODULE_n_134,
      S(2) => AHB_MSTR_IF_MODULE_n_135,
      S(1) => AHB_MSTR_IF_MODULE_n_136,
      S(0) => AHB_MSTR_IF_MODULE_n_137,
      SR(0) => AXI_SLV_IF_MODULE_n_1,
      ahb_burst(1 downto 0) => ahb_burst(2 downto 1),
      \axi_address_reg[7]\(3) => AHB_MSTR_IF_MODULE_n_138,
      \axi_address_reg[7]\(2) => AHB_MSTR_IF_MODULE_n_139,
      \axi_address_reg[7]\(1) => AHB_MSTR_IF_MODULE_n_140,
      \axi_address_reg[7]\(0) => AHB_MSTR_IF_MODULE_n_141,
      \axi_address_reg[9]\(1) => AHB_MSTR_IF_MODULE_n_142,
      \axi_address_reg[9]\(0) => AHB_MSTR_IF_MODULE_n_143,
      axi_lock => axi_lock,
      axi_size(2 downto 0) => axi_size(2 downto 0),
      load_counter_reg_0 => \^s_axi_arready\,
      load_counter_sm => load_counter_sm,
      m_ahb_haddr(31 downto 0) => \^m_ahb_haddr\(31 downto 0),
      m_ahb_hburst(2 downto 0) => m_ahb_hburst(2 downto 0),
      m_ahb_hmastlock => m_ahb_hmastlock,
      m_ahb_hprot(2 downto 0) => \^m_ahb_hprot\(2 downto 0),
      m_ahb_hrdata(6) => m_ahb_hrdata(30),
      m_ahb_hrdata(5 downto 4) => m_ahb_hrdata(26 downto 25),
      m_ahb_hrdata(3 downto 2) => m_ahb_hrdata(20 downto 19),
      m_ahb_hrdata(1) => m_ahb_hrdata(6),
      m_ahb_hrdata(0) => m_ahb_hrdata(0),
      m_ahb_hready => m_ahb_hready,
      m_ahb_hready_0 => AHB_MSTR_IF_MODULE_n_59,
      m_ahb_hresp => m_ahb_hresp,
      m_ahb_hsize(2 downto 0) => m_ahb_hsize(2 downto 0),
      m_ahb_htrans(1 downto 0) => m_ahb_htrans(1 downto 0),
      m_ahb_hwdata(31 downto 0) => m_ahb_hwdata(31 downto 0),
      m_ahb_hwrite => \^m_ahb_hwrite\,
      one_kb_cross => one_kb_cross,
      one_kb_in_progress => one_kb_in_progress,
      one_kb_in_progress_reg_0 => AHB_MSTR_IF_MODULE_n_58,
      one_kb_in_progress_reg_1 => AXI_SLV_IF_MODULE_n_85,
      onekb_cross_access_reg_0 => AHB_MSTR_IF_MODULE_n_40,
      onekb_cross_access_reg_1 => AXI_SLV_IF_MODULE_n_33,
      onekb_cross_access_reg_i_2 => AXI_SLV_IF_MODULE_n_94,
      onekb_cross_access_reg_i_3 => AXI_SLV_IF_MODULE_n_97,
      onekb_cross_access_reg_i_3_0 => AXI_SLV_IF_MODULE_n_96,
      onekb_cross_access_reg_i_3_1 => AXI_SLV_IF_MODULE_n_95,
      onekb_cross_access_reg_i_3_2 => AXI_SLV_IF_MODULE_n_93,
      onekb_cross_access_reg_i_7 => AXI_SLV_IF_MODULE_n_99,
      onekb_cross_access_reg_i_7_0 => AXI_SLV_IF_MODULE_n_98,
      \out\ => s_axi_rready_int,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wlast => s_axi_wlast,
      s_axi_wlast_0 => AHB_MSTR_IF_MODULE_n_50,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wvalid_0 => AHB_MSTR_IF_MODULE_n_55,
      send_wrap_burst => send_wrap_burst,
      sig_s_ready_out_reg => AHB_MSTR_IF_MODULE_n_57,
      single_ahb_rd_xfer => single_ahb_rd_xfer,
      single_ahb_wr => single_ahb_wr,
      single_ahb_wr_reg_0 => AXI_SLV_IF_MODULE_n_101,
      wr_err_occured0 => wr_err_occured0,
      \wrap_brst_count_reg[1]_0\ => AHB_MSTR_IF_MODULE_n_49,
      \wrap_brst_count_reg[7]_0\(7 downto 0) => axi_length(7 downto 0),
      wrap_in_progress => wrap_in_progress,
      wrap_in_progress_reg_0 => AHB_MSTR_IF_MODULE_n_101,
      write_in_progress => write_in_progress
    );
AXI_SLV_IF_MODULE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slv_if
     port map (
      AWREADY_i_reg_0 => \^s_axi_awready\,
      D(6) => p_2_in(30),
      D(5 downto 4) => p_2_in(26 downto 25),
      D(3 downto 2) => p_2_in(20 downto 19),
      D(1) => p_2_in(6),
      D(0) => p_2_in(0),
      E(0) => VALID_READY_SKID_n_4,
      \FSM_sequential_ahb_wr_rd_cs_reg[0]\ => AXI_SLV_IF_MODULE_n_34,
      \FSM_sequential_ahb_wr_rd_cs_reg[1]\ => AHB_MSTR_IF_MODULE_n_58,
      \FSM_sequential_axi_read_cs_reg[2]_0\ => AHB_MSTR_IF_MODULE_n_56,
      \FSM_sequential_axi_write_cs_reg[0]_0\ => AXI_SLV_IF_MODULE_n_38,
      \FSM_sequential_axi_write_cs_reg[0]_1\ => AHB_MSTR_IF_MODULE_n_51,
      \FSM_sequential_axi_write_cs_reg[2]_0\ => AHB_MSTR_IF_MODULE_n_50,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[0]\ => AXI_SLV_IF_MODULE_n_29,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[1]\ => AXI_SLV_IF_MODULE_n_28,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[2]\ => AXI_SLV_IF_MODULE_n_26,
      \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(28 downto 3) => data5(31 downto 6),
      \GEN_32_DATA_WIDTH.HADDR_i_reg[31]\(2 downto 0) => data5(3 downto 1),
      \GEN_32_DATA_WIDTH.HADDR_i_reg[3]\(0) => HADDR_i(2),
      \GEN_32_DATA_WIDTH.HADDR_i_reg[5]\ => AHB_MSTR_IF_MODULE_n_101,
      HWRITE_i_reg => AXI_SLV_IF_MODULE_n_87,
      \M_AHB_HTRANS[1]_i_2\(1) => ahb_wr_rd_cs(3),
      \M_AHB_HTRANS[1]_i_2\(0) => ahb_wr_rd_cs(0),
      \M_AHB_HTRANS[1]_i_2_0\ => AHB_MSTR_IF_MODULE_n_57,
      \M_AHB_HTRANS[1]_i_2_1\ => AHB_MSTR_IF_MODULE_n_54,
      Q(7 downto 0) => axi_length(7 downto 0),
      \RID_i_reg[11]_0\(11 downto 0) => s_axi_rid_int(11 downto 0),
      RRESP_1_i => RRESP_1_i,
      S(3) => AHB_MSTR_IF_MODULE_n_134,
      S(2) => AHB_MSTR_IF_MODULE_n_135,
      S(1) => AHB_MSTR_IF_MODULE_n_136,
      S(0) => AHB_MSTR_IF_MODULE_n_137,
      SR(0) => AXI_SLV_IF_MODULE_n_1,
      \S_AXI_RDATA_reg[31]_0\(31 downto 0) => s_axi_rdata_int(31 downto 0),
      ahb_burst(1 downto 0) => ahb_burst(2 downto 1),
      ahb_rd_request_reg_0 => \^s_axi_arready\,
      ahb_rd_request_reg_1(0) => HADDR_i(31),
      ahb_rd_request_reg_2 => AXI_SLV_IF_MODULE_n_23,
      \axi_address_reg[10]_0\ => AXI_SLV_IF_MODULE_n_72,
      \axi_address_reg[11]_0\ => AXI_SLV_IF_MODULE_n_71,
      \axi_address_reg[12]_0\ => AXI_SLV_IF_MODULE_n_70,
      \axi_address_reg[13]_0\ => AXI_SLV_IF_MODULE_n_69,
      \axi_address_reg[14]_0\ => AXI_SLV_IF_MODULE_n_68,
      \axi_address_reg[15]_0\ => AXI_SLV_IF_MODULE_n_67,
      \axi_address_reg[16]_0\ => AXI_SLV_IF_MODULE_n_66,
      \axi_address_reg[17]_0\ => AXI_SLV_IF_MODULE_n_65,
      \axi_address_reg[18]_0\ => AXI_SLV_IF_MODULE_n_64,
      \axi_address_reg[19]_0\ => AXI_SLV_IF_MODULE_n_63,
      \axi_address_reg[20]_0\ => AXI_SLV_IF_MODULE_n_62,
      \axi_address_reg[21]_0\ => AXI_SLV_IF_MODULE_n_61,
      \axi_address_reg[22]_0\ => AXI_SLV_IF_MODULE_n_60,
      \axi_address_reg[23]_0\ => AXI_SLV_IF_MODULE_n_59,
      \axi_address_reg[24]_0\ => AXI_SLV_IF_MODULE_n_58,
      \axi_address_reg[25]_0\ => AXI_SLV_IF_MODULE_n_57,
      \axi_address_reg[26]_0\ => AXI_SLV_IF_MODULE_n_56,
      \axi_address_reg[27]_0\ => AXI_SLV_IF_MODULE_n_55,
      \axi_address_reg[28]_0\ => AXI_SLV_IF_MODULE_n_54,
      \axi_address_reg[29]_0\ => AXI_SLV_IF_MODULE_n_53,
      \axi_address_reg[30]_0\ => AXI_SLV_IF_MODULE_n_52,
      \axi_address_reg[31]_0\ => AXI_SLV_IF_MODULE_n_41,
      \axi_address_reg[6]_0\ => AXI_SLV_IF_MODULE_n_76,
      \axi_address_reg[7]_0\ => AXI_SLV_IF_MODULE_n_75,
      \axi_address_reg[8]_0\ => AXI_SLV_IF_MODULE_n_74,
      \axi_address_reg[9]_0\(9 downto 0) => axi_address(9 downto 0),
      \axi_address_reg[9]_1\ => AXI_SLV_IF_MODULE_n_73,
      \axi_burst_reg[0]_0\ => AXI_SLV_IF_MODULE_n_86,
      \axi_burst_reg[1]_0\ => AXI_SLV_IF_MODULE_n_40,
      \axi_burst_reg[1]_1\(1 downto 0) => axi_burst(1 downto 0),
      \axi_burst_reg[1]_2\ => AXI_SLV_IF_MODULE_n_85,
      \axi_cache_reg[0]_0\ => AXI_SLV_IF_MODULE_n_31,
      \axi_length_reg[0]_0\ => AXI_SLV_IF_MODULE_n_88,
      \axi_length_reg[0]_1\ => AXI_SLV_IF_MODULE_n_89,
      \axi_length_reg[0]_2\ => AXI_SLV_IF_MODULE_n_98,
      \axi_length_reg[1]_0\ => AXI_SLV_IF_MODULE_n_24,
      \axi_length_reg[1]_1\ => AXI_SLV_IF_MODULE_n_36,
      \axi_length_reg[1]_2\ => AXI_SLV_IF_MODULE_n_39,
      \axi_length_reg[1]_3\ => AXI_SLV_IF_MODULE_n_97,
      \axi_length_reg[1]_4\ => AXI_SLV_IF_MODULE_n_100,
      \axi_length_reg[2]_0\ => AXI_SLV_IF_MODULE_n_37,
      \axi_length_reg[2]_1\ => AXI_SLV_IF_MODULE_n_96,
      \axi_length_reg[3]_0\ => AXI_SLV_IF_MODULE_n_12,
      \axi_length_reg[3]_1\ => AXI_SLV_IF_MODULE_n_95,
      \axi_length_reg[4]_0\ => AXI_SLV_IF_MODULE_n_93,
      \axi_length_reg[5]_0\ => AXI_SLV_IF_MODULE_n_94,
      axi_lock => axi_lock,
      \axi_prot_reg[0]_0\ => AXI_SLV_IF_MODULE_n_32,
      \axi_prot_reg[2]_0\ => AXI_SLV_IF_MODULE_n_30,
      axi_size(2 downto 0) => axi_size(2 downto 0),
      \axi_size_reg[2]_0\ => AXI_SLV_IF_MODULE_n_99,
      \axi_wdata_reg[0]_0\ => AHB_MSTR_IF_MODULE_n_59,
      \axi_wdata_reg[0]_1\ => AHB_MSTR_IF_MODULE_n_55,
      \axi_wdata_reg[31]_0\(31 downto 0) => axi_wdata(31 downto 0),
      load_counter_reg => AHB_MSTR_IF_MODULE_n_53,
      load_counter_sm => load_counter_sm,
      m_ahb_haddr(31 downto 0) => \^m_ahb_haddr\(31 downto 0),
      m_ahb_hprot(2 downto 0) => \^m_ahb_hprot\(2 downto 0),
      m_ahb_hrdata(24) => m_ahb_hrdata(31),
      m_ahb_hrdata(23 downto 21) => m_ahb_hrdata(29 downto 27),
      m_ahb_hrdata(20 downto 17) => m_ahb_hrdata(24 downto 21),
      m_ahb_hrdata(16 downto 5) => m_ahb_hrdata(18 downto 7),
      m_ahb_hrdata(4 downto 0) => m_ahb_hrdata(5 downto 1),
      m_ahb_hwrite => \^m_ahb_hwrite\,
      one_kb_cross => one_kb_cross,
      one_kb_in_progress => one_kb_in_progress,
      one_kb_in_progress_reg => AXI_SLV_IF_MODULE_n_84,
      onekb_cross_access_reg => AXI_SLV_IF_MODULE_n_33,
      onekb_cross_access_reg_0 => AHB_MSTR_IF_MODULE_n_49,
      onekb_cross_access_reg_1 => AHB_MSTR_IF_MODULE_n_40,
      onekb_cross_access_reg_2(1) => AHB_MSTR_IF_MODULE_n_142,
      onekb_cross_access_reg_2(0) => AHB_MSTR_IF_MODULE_n_143,
      onekb_cross_access_reg_i_2_0(3) => AHB_MSTR_IF_MODULE_n_138,
      onekb_cross_access_reg_i_2_0(2) => AHB_MSTR_IF_MODULE_n_139,
      onekb_cross_access_reg_i_2_0(1) => AHB_MSTR_IF_MODULE_n_140,
      onekb_cross_access_reg_i_2_0(0) => AHB_MSTR_IF_MODULE_n_141,
      \out\ => s_axi_rready_int,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(2 downto 1) => s_axi_arcache(3 downto 2),
      s_axi_arcache(0) => s_axi_arcache(0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(11 downto 0) => s_axi_arid(11 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock => s_axi_arlock,
      s_axi_arprot(1) => s_axi_arprot(2),
      s_axi_arprot(0) => s_axi_arprot(0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(2 downto 1) => s_axi_awcache(3 downto 2),
      s_axi_awcache(0) => s_axi_awcache(0),
      s_axi_awid(11 downto 0) => s_axi_awid(11 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock => s_axi_awlock,
      s_axi_awprot(1) => s_axi_awprot(2),
      s_axi_awprot(0) => s_axi_awprot(0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(11 downto 0) => s_axi_bid(11 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rlast_int => s_axi_rlast_int,
      s_axi_rresp_int(0) => s_axi_rresp_int(1),
      s_axi_rvalid_int => s_axi_rvalid_int,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      send_wrap_burst => send_wrap_burst,
      sig_s_ready_out_reg => AXI_SLV_IF_MODULE_n_35,
      single_ahb_rd_xfer => single_ahb_rd_xfer,
      single_ahb_wr => single_ahb_wr,
      single_axi_rd_xfer_reg_0 => AXI_SLV_IF_MODULE_n_81,
      single_axi_wr_xfer_reg_0 => AXI_SLV_IF_MODULE_n_101,
      wr_err_occured0 => wr_err_occured0,
      wrap_in_progress => wrap_in_progress,
      wrap_in_progress_reg => AXI_SLV_IF_MODULE_n_22,
      wrap_in_progress_reg_0 => AXI_SLV_IF_MODULE_n_25,
      wrap_in_progress_reg_1 => AXI_SLV_IF_MODULE_n_27,
      write_in_progress => write_in_progress
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VALID_READY_SKID: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ahb_skid_buf
     port map (
      D(11 downto 0) => s_axi_rid_int(11 downto 0),
      E(0) => VALID_READY_SKID_n_4,
      RRESP_1_i_reg => AXI_SLV_IF_MODULE_n_34,
      SR(0) => AXI_SLV_IF_MODULE_n_1,
      \out\ => s_axi_rready_int,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(11 downto 0) => s_axi_rid(11 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rlast_int => s_axi_rlast_int,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rresp_int(0) => s_axi_rresp_int(1),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_rvalid_int => s_axi_rvalid_int,
      \sig_data_skid_reg_reg[31]_0\(31 downto 0) => s_axi_rdata_int(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_awlock : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_ahb_haddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_ahb_hwrite : out STD_LOGIC;
    m_ahb_hsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_ahb_hburst : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_ahb_hprot : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_ahb_htrans : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_ahb_hmastlock : out STD_LOGIC;
    m_ahb_hwdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_ahb_hready : in STD_LOGIC;
    m_ahb_hrdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_ahb_hresp : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "zynq_axi_ahblite_bridge_0_0,axi_ahblite_bridge,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_ahblite_bridge,Vivado 2024.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_ahb_hprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_U0_m_ahb_hprot_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_DPHASE_TIMEOUT : integer;
  attribute C_DPHASE_TIMEOUT of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of U0 : label is "zynq_axi_ahblite_bridge_0_0";
  attribute C_M_AHB_ADDR_WIDTH : integer;
  attribute C_M_AHB_ADDR_WIDTH of U0 : label is 32;
  attribute C_M_AHB_DATA_WIDTH : integer;
  attribute C_M_AHB_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of U0 : label is 12;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of U0 : label is 0;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of m_ahb_hmastlock : signal is "xilinx.com:interface:ahblite:2.0 M_AHB HMASTLOCK";
  attribute x_interface_info of m_ahb_hready : signal is "xilinx.com:interface:ahblite:2.0 M_AHB HREADY";
  attribute x_interface_info of m_ahb_hresp : signal is "xilinx.com:interface:ahblite:2.0 M_AHB HRESP";
  attribute x_interface_info of m_ahb_hwrite : signal is "xilinx.com:interface:ahblite:2.0 M_AHB HWRITE";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 ACLK CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of s_axi_aclk : signal is "slave ACLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF AXI4:M_AHB, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 ARESETN RST";
  attribute x_interface_mode of s_axi_aresetn : signal is "slave ARESETN";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 AXI4 ARLOCK";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 AXI4 ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI4 ARVALID";
  attribute x_interface_info of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 AXI4 AWLOCK";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 AXI4 AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI4 AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 AXI4 BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI4 BVALID";
  attribute x_interface_info of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 AXI4 RLAST";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 AXI4 RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI4 RVALID";
  attribute x_interface_info of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 AXI4 WLAST";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 AXI4 WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI4 WVALID";
  attribute x_interface_info of m_ahb_haddr : signal is "xilinx.com:interface:ahblite:2.0 M_AHB HADDR";
  attribute x_interface_mode of m_ahb_haddr : signal is "master M_AHB";
  attribute x_interface_info of m_ahb_hburst : signal is "xilinx.com:interface:ahblite:2.0 M_AHB HBURST";
  attribute x_interface_info of m_ahb_hprot : signal is "xilinx.com:interface:ahblite:2.0 M_AHB HPROT";
  attribute x_interface_info of m_ahb_hrdata : signal is "xilinx.com:interface:ahblite:2.0 M_AHB HRDATA";
  attribute x_interface_info of m_ahb_hsize : signal is "xilinx.com:interface:ahblite:2.0 M_AHB HSIZE";
  attribute x_interface_info of m_ahb_htrans : signal is "xilinx.com:interface:ahblite:2.0 M_AHB HTRANS";
  attribute x_interface_info of m_ahb_hwdata : signal is "xilinx.com:interface:ahblite:2.0 M_AHB HWDATA";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI4 ARADDR";
  attribute x_interface_info of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 AXI4 ARBURST";
  attribute x_interface_info of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 AXI4 ARCACHE";
  attribute x_interface_info of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 AXI4 ARID";
  attribute x_interface_info of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 AXI4 ARLEN";
  attribute x_interface_info of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 AXI4 ARPROT";
  attribute x_interface_info of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 AXI4 ARSIZE";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI4 AWADDR";
  attribute x_interface_info of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 AXI4 AWBURST";
  attribute x_interface_info of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 AXI4 AWCACHE";
  attribute x_interface_info of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 AXI4 AWID";
  attribute x_interface_mode of s_axi_awid : signal is "slave AXI4";
  attribute x_interface_parameter of s_axi_awid : signal is "XIL_INTERFACENAME AXI4, BD_ATTRIBUTE.TYPE INTERIOR, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 12, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN zynq_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 AXI4 AWLEN";
  attribute x_interface_info of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 AXI4 AWPROT";
  attribute x_interface_info of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 AXI4 AWSIZE";
  attribute x_interface_info of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 AXI4 BID";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI4 BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI4 RDATA";
  attribute x_interface_info of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 AXI4 RID";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI4 RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI4 WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI4 WSTRB";
begin
  m_ahb_hprot(3) <= \<const0>\;
  m_ahb_hprot(2 downto 0) <= \^m_ahb_hprot\(2 downto 0);
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ahblite_bridge
     port map (
      m_ahb_haddr(31 downto 0) => m_ahb_haddr(31 downto 0),
      m_ahb_hburst(2 downto 0) => m_ahb_hburst(2 downto 0),
      m_ahb_hmastlock => m_ahb_hmastlock,
      m_ahb_hprot(3) => NLW_U0_m_ahb_hprot_UNCONNECTED(3),
      m_ahb_hprot(2 downto 0) => \^m_ahb_hprot\(2 downto 0),
      m_ahb_hrdata(31 downto 0) => m_ahb_hrdata(31 downto 0),
      m_ahb_hready => m_ahb_hready,
      m_ahb_hresp => m_ahb_hresp,
      m_ahb_hsize(2 downto 0) => m_ahb_hsize(2 downto 0),
      m_ahb_htrans(1 downto 0) => m_ahb_htrans(1 downto 0),
      m_ahb_hwdata(31 downto 0) => m_ahb_hwdata(31 downto 0),
      m_ahb_hwrite => m_ahb_hwrite,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 2) => s_axi_arcache(3 downto 2),
      s_axi_arcache(1) => '0',
      s_axi_arcache(0) => s_axi_arcache(0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(11 downto 0) => s_axi_arid(11 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock => s_axi_arlock,
      s_axi_arprot(2) => s_axi_arprot(2),
      s_axi_arprot(1) => '0',
      s_axi_arprot(0) => s_axi_arprot(0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 2) => s_axi_awcache(3 downto 2),
      s_axi_awcache(1) => '0',
      s_axi_awcache(0) => s_axi_awcache(0),
      s_axi_awid(11 downto 0) => s_axi_awid(11 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock => s_axi_awlock,
      s_axi_awprot(2) => s_axi_awprot(2),
      s_axi_awprot(1) => '0',
      s_axi_awprot(0) => s_axi_awprot(0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(11 downto 0) => s_axi_bid(11 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1) => \^s_axi_bresp\(1),
      s_axi_bresp(0) => NLW_U0_s_axi_bresp_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(11 downto 0) => s_axi_rid(11 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1) => \^s_axi_rresp\(1),
      s_axi_rresp(0) => NLW_U0_s_axi_rresp_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
