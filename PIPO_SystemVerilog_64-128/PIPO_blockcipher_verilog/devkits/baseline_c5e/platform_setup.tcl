proc ::setup_project {} {
# -------------------------------------------------------------------------- #
#
# Copyright (C) 1991-2012 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.
#
# -------------------------------------------------------------------------- #
#
# Quartus II 64-Bit
# Version 12.1 Build 243 01/31/2013 SJ Full Version
# Date created = 09:50:21  Nov 19, 2012
#
# -------------------------------------------------------------------------- #
#
# Notes:
#
# 1) The default values for assignments are stored in the file:
#		baseline_c5e_assignment_defaults.qdf
#    If this file doesn't exist, see file:
#		assignment_defaults.qdf
#
# 2) Altera recommends that you do not modify this file. This
#    file is updated automatically by the Quartus II software
#    and any changes you make may be lost or overwritten.
#
# -------------------------------------------------------------------------- #


set_global_assignment -name FAMILY "Cyclone V"
set_global_assignment -name DEVICE 5CEFA7F31I7
set_global_assignment -name ORIGINAL_QUARTUS_VERSION 12.0
set_global_assignment -name PROJECT_CREATION_TIME_DATE "09:50:21  MARCH 19, 2012"
set_global_assignment -name LAST_QUARTUS_VERSION 15.0.0
set_global_assignment -name DEVICE_FILTER_PACKAGE FBGA
set_global_assignment -name DEVICE_FILTER_PIN_COUNT 896
set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 256
set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
set_global_assignment -name MAX_CORE_JUNCTION_TEMP 100
set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "2.5 V"
set_location_assignment PIN_A16 -to ddr3_a[0]
set_location_assignment PIN_G23 -to ddr3_a[1]
set_location_assignment PIN_E21 -to ddr3_a[2]
set_location_assignment PIN_E22 -to ddr3_a[3]
set_location_assignment PIN_A20 -to ddr3_a[4]
set_location_assignment PIN_A26 -to ddr3_a[5]
set_location_assignment PIN_A15 -to ddr3_a[6]
set_location_assignment PIN_B26 -to ddr3_a[7]
set_location_assignment PIN_H17 -to ddr3_a[8]
set_location_assignment PIN_D14 -to ddr3_a[9]
set_location_assignment PIN_E23 -to ddr3_a[10]
set_location_assignment PIN_E20 -to ddr3_a[11]
set_location_assignment PIN_C25 -to ddr3_a[12]
set_location_assignment PIN_J18 -to ddr3_ba[0]
set_location_assignment PIN_F20 -to ddr3_ba[1]
set_location_assignment PIN_D19 -to ddr3_ba[2]
set_location_assignment PIN_L20 -to ddr3_casn
set_location_assignment PIN_H20 -to ddr3_ck_n
set_location_assignment PIN_J20 -to ddr3_ck_p
set_location_assignment PIN_C11 -to ddr3_cke
set_location_assignment PIN_G17 -to ddr3_csn
set_location_assignment PIN_D23 -to ddr3_dm[0]
set_location_assignment PIN_D18 -to ddr3_dm[1]
set_location_assignment PIN_A19 -to ddr3_dm[2]
set_location_assignment PIN_A25 -to ddr3_dq[0]
set_location_assignment PIN_D22 -to ddr3_dq[1]
set_location_assignment PIN_C21 -to ddr3_dq[2]
set_location_assignment PIN_C19 -to ddr3_dq[3]
set_location_assignment PIN_C20 -to ddr3_dq[4]
set_location_assignment PIN_C22 -to ddr3_dq[5]
set_location_assignment PIN_D25 -to ddr3_dq[6]
set_location_assignment PIN_D20 -to ddr3_dq[7]
set_location_assignment PIN_B24 -to ddr3_dq[8]
set_location_assignment PIN_A21 -to ddr3_dq[9]
set_location_assignment PIN_B21 -to ddr3_dq[10]
set_location_assignment PIN_F19 -to ddr3_dq[11]
set_location_assignment PIN_C24 -to ddr3_dq[12]
set_location_assignment PIN_B23 -to ddr3_dq[13]
set_location_assignment PIN_E18 -to ddr3_dq[14]
set_location_assignment PIN_A23 -to ddr3_dq[15]
set_location_assignment PIN_G18 -to ddr3_dq[16]
set_location_assignment PIN_B18 -to ddr3_dq[17]
set_location_assignment PIN_A18 -to ddr3_dq[18]
set_location_assignment PIN_F18 -to ddr3_dq[19]
set_location_assignment PIN_C14 -to ddr3_dq[20]
set_location_assignment PIN_C17 -to ddr3_dq[21]
set_location_assignment PIN_B17 -to ddr3_dq[22]
set_location_assignment PIN_B19 -to ddr3_dq[23]
set_location_assignment PIN_J19 -to ddr3_dqs_n[0]
set_location_assignment PIN_K18 -to ddr3_dqs_n[1]
set_location_assignment PIN_L16 -to ddr3_dqs_n[2]
set_location_assignment PIN_K20 -to ddr3_dqs_p[0]
set_location_assignment PIN_L18 -to ddr3_dqs_p[1]
set_location_assignment PIN_K16 -to ddr3_dqs_p[2]
set_location_assignment PIN_H19 -to ddr3_odt
set_location_assignment PIN_A24 -to ddr3_rasn
set_location_assignment PIN_B12 -to ddr3_oct_rzq
set_location_assignment PIN_L19 -to ddr3_rstn
set_location_assignment PIN_B22 -to ddr3_wen
set_location_assignment PIN_H27 -to eneta_gtx_clk
set_location_assignment PIN_N22 -to eneta_intn
set_location_assignment PIN_J27 -to eneta_mdc
set_location_assignment PIN_G29 -to eneta_mdio
set_location_assignment PIN_M23 -to eneta_resetn
set_location_assignment PIN_T23 -to eneta_rx_clk
set_location_assignment PIN_K27 -to eneta_rx_col
set_location_assignment PIN_R22 -to eneta_rx_crs
set_location_assignment PIN_N26 -to eneta_rx_d[0]
set_location_assignment PIN_N27 -to eneta_rx_d[1]
set_location_assignment PIN_N24 -to eneta_rx_d[2]
set_location_assignment PIN_N25 -to eneta_rx_d[3]
set_location_assignment PIN_L26 -to eneta_rx_dv
set_location_assignment PIN_R21 -to eneta_rx_er
set_location_assignment PIN_G26 -to eneta_tx_clk
set_location_assignment PIN_J28 -to eneta_tx_d[0]
set_location_assignment PIN_J29 -to eneta_tx_d[1]
set_location_assignment PIN_H29 -to eneta_tx_d[2]
set_location_assignment PIN_H30 -to eneta_tx_d[3]
set_location_assignment PIN_F30 -to eneta_tx_en
set_location_assignment PIN_E30 -to eneta_tx_er
set_location_assignment PIN_E28 -to enetb_gtx_clk
set_location_assignment PIN_M21 -to enetb_intn
set_location_assignment PIN_K22 -to enetb_mdc
set_location_assignment PIN_A29 -to enetb_mdio
set_location_assignment PIN_L21 -to enetb_resetn
set_location_assignment PIN_R23 -to enetb_rx_clk
set_location_assignment PIN_K21 -to enetb_rx_col
set_location_assignment PIN_M22 -to enetb_rx_crs
set_location_assignment PIN_F25 -to enetb_rx_d[0]
set_location_assignment PIN_F26 -to enetb_rx_d[1]
set_location_assignment PIN_R20 -to enetb_rx_d[2]
set_location_assignment PIN_T21 -to enetb_rx_d[3]
set_location_assignment PIN_L24 -to enetb_rx_dv
set_location_assignment PIN_N21 -to enetb_rx_er
set_location_assignment PIN_C29 -to enetb_tx_clk
set_location_assignment PIN_F29 -to enetb_tx_d[0]
set_location_assignment PIN_D30 -to enetb_tx_d[1]
set_location_assignment PIN_C30 -to enetb_tx_d[2]
set_location_assignment PIN_F28 -to enetb_tx_d[3]
set_location_assignment PIN_B29 -to enetb_tx_en
set_location_assignment PIN_B28 -to enetb_tx_er
set_location_assignment PIN_K30 -to usb_addr[0]
set_location_assignment PIN_J30 -to usb_addr[1]
set_location_assignment PIN_P29 -to usb_clk
set_location_assignment PIN_L28 -to usb_data[0]
set_location_assignment PIN_K28 -to usb_data[1]
set_location_assignment PIN_M27 -to usb_data[2]
set_location_assignment PIN_M28 -to usb_data[3]
set_location_assignment PIN_K25 -to usb_data[4]
set_location_assignment PIN_K26 -to usb_data[5]
set_location_assignment PIN_L29 -to usb_data[6]
set_location_assignment PIN_L30 -to usb_data[7]
set_location_assignment PIN_G28 -to usb_empty
set_location_assignment PIN_G27 -to usb_full
set_location_assignment PIN_P25 -to usb_oen
set_location_assignment PIN_R25 -to usb_rdn
set_location_assignment PIN_P30 -to usb_resetn
set_location_assignment PIN_P28 -to usb_scl
set_location_assignment PIN_N29 -to usb_sda
set_location_assignment PIN_R27 -to usb_wrn
set_location_assignment PIN_Y12 -to user_dipsw[0]
set_location_assignment PIN_AA13 -to user_dipsw[1]
set_location_assignment PIN_R28 -to fx2_resetn
set_location_assignment PIN_AF8 -to uart_cts
set_location_assignment PIN_AH6 -to uart_rts
set_location_assignment PIN_AG6 -to uart_rxd
set_location_assignment PIN_AB9 -to uart_txd
set_location_assignment PIN_AF11 -to user_dipsw[2]
set_location_assignment PIN_AG11 -to user_dipsw[3]
set_location_assignment PIN_H12 -to flash_advn
set_location_assignment PIN_H14 -to flash_cen
set_location_assignment PIN_N12 -to flash_clk
set_location_assignment PIN_L11 -to flash_oen
set_location_assignment PIN_J14 -to flash_rdybsyn
set_location_assignment PIN_K11 -to flash_resetn
set_location_assignment PIN_P12 -to flash_wen
set_location_assignment PIN_B11 -to fm_a[1]
set_location_assignment PIN_A11 -to fm_a[2]
set_location_assignment PIN_D9 -to fm_a[3]
set_location_assignment PIN_C10 -to fm_a[4]
set_location_assignment PIN_A10 -to fm_a[5]
set_location_assignment PIN_A9 -to fm_a[6]
set_location_assignment PIN_C9 -to fm_a[7]
set_location_assignment PIN_B8 -to fm_a[8]
set_location_assignment PIN_B7 -to fm_a[9]
set_location_assignment PIN_A8 -to fm_a[10]
set_location_assignment PIN_B6 -to fm_a[11]
set_location_assignment PIN_A6 -to fm_a[12]
set_location_assignment PIN_C7 -to fm_a[13]
set_location_assignment PIN_C6 -to fm_a[14]
set_location_assignment PIN_F13 -to fm_a[15]
set_location_assignment PIN_E13 -to fm_a[16]
set_location_assignment PIN_A5 -to fm_a[17]
set_location_assignment PIN_A4 -to fm_a[18]
set_location_assignment PIN_J7 -to fm_a[19]
set_location_assignment PIN_H7 -to fm_a[20]
set_location_assignment PIN_J9 -to fm_a[21]
set_location_assignment PIN_H9 -to fm_a[22]
set_location_assignment PIN_G9 -to fm_a[23]
set_location_assignment PIN_F16 -to fm_d[0]
set_location_assignment PIN_E16 -to fm_d[1]
set_location_assignment PIN_M9 -to fm_d[2]
set_location_assignment PIN_M8 -to fm_d[3]
set_location_assignment PIN_F15 -to fm_d[4]
set_location_assignment PIN_E15 -to fm_d[5]
set_location_assignment PIN_E12 -to fm_d[6]
set_location_assignment PIN_D13 -to fm_d[7]
set_location_assignment PIN_J15 -to fm_d[8]
set_location_assignment PIN_H15 -to fm_d[9]
set_location_assignment PIN_E11 -to fm_d[10]
set_location_assignment PIN_D10 -to fm_d[11]
set_location_assignment PIN_L10 -to fm_d[12]
set_location_assignment PIN_L9 -to fm_d[13]
set_location_assignment PIN_G14 -to fm_d[14]
set_location_assignment PIN_F14 -to fm_d[15]
set_location_assignment PIN_D7 -to sram_cen
set_location_assignment PIN_G6 -to ssram_advn
set_location_assignment PIN_A3 -to ssram_bwan
set_location_assignment PIN_A2 -to ssram_bwbn
set_location_assignment PIN_D6 -to ssram_bwen
set_location_assignment PIN_K10 -to ssram_clk
set_location_assignment PIN_E7 -to ssram_oen
set_location_assignment PIN_F6 -to ssram_zzn
set_location_assignment PIN_AJ12 -to lcd_csn
set_location_assignment PIN_AK11 -to lcd_d_cn
set_location_assignment PIN_AJ7 -to lcd_data[0]
set_location_assignment PIN_AK7 -to lcd_data[1]
set_location_assignment PIN_AJ8 -to lcd_data[2]
set_location_assignment PIN_AK8 -to lcd_data[3]
set_location_assignment PIN_AF9 -to lcd_data[4]
set_location_assignment PIN_AG9 -to lcd_data[5]
set_location_assignment PIN_AH9 -to lcd_data[6]
set_location_assignment PIN_AJ9 -to lcd_data[7]
set_location_assignment PIN_AK10 -to lcd_wen
set_location_assignment PIN_G12 -to max5_ben[0]
set_location_assignment PIN_K13 -to max5_ben[1]
set_location_assignment PIN_J13 -to max5_ben[2]
set_location_assignment PIN_P10 -to max5_ben[3]
set_location_assignment PIN_R12 -to max5_clk
set_location_assignment PIN_N11 -to max5_csn
set_location_assignment PIN_R11 -to max5_oen
set_location_assignment PIN_K12 -to max5_wen
set_location_assignment PIN_Y30 -to lpddr2_a[0]
set_location_assignment PIN_T30 -to lpddr2_a[1]
set_location_assignment PIN_W29 -to lpddr2_a[2]
set_location_assignment PIN_AB29 -to lpddr2_a[3]
set_location_assignment PIN_W30 -to lpddr2_a[4]
set_location_assignment PIN_U29 -to lpddr2_a[5]
set_location_assignment PIN_AC30 -to lpddr2_a[6]
set_location_assignment PIN_R30 -to lpddr2_a[7]
set_location_assignment PIN_T28 -to lpddr2_a[8]
set_location_assignment PIN_T25 -to lpddr2_a[9]
set_location_assignment PIN_V25 -to lpddr2_ck_n
set_location_assignment PIN_V24 -to lpddr2_ck_p
set_location_assignment PIN_T29 -to lpddr2_cke
set_location_assignment PIN_R26 -to lpddr2_csn
set_location_assignment PIN_AG29 -to lpddr2_dm[0]
set_location_assignment PIN_AB27 -to lpddr2_dm[1]
set_location_assignment PIN_AG28 -to lpddr2_dq[0]
set_location_assignment PIN_AH30 -to lpddr2_dq[1]
set_location_assignment PIN_AA28 -to lpddr2_dq[2]
set_location_assignment PIN_AH29 -to lpddr2_dq[3]
set_location_assignment PIN_Y28 -to lpddr2_dq[4]
set_location_assignment PIN_AE30 -to lpddr2_dq[5]
set_location_assignment PIN_AJ28 -to lpddr2_dq[6]
set_location_assignment PIN_AD30 -to lpddr2_dq[7]
set_location_assignment PIN_AC29 -to lpddr2_dq[8]
set_location_assignment PIN_AF30 -to lpddr2_dq[9]
set_location_assignment PIN_AA30 -to lpddr2_dq[10]
set_location_assignment PIN_AE28 -to lpddr2_dq[11]
set_location_assignment PIN_AF29 -to lpddr2_dq[12]
set_location_assignment PIN_AD28 -to lpddr2_dq[13]
set_location_assignment PIN_V27 -to lpddr2_dq[14]
set_location_assignment PIN_W28 -to lpddr2_dq[15]
set_location_assignment PIN_U26 -to lpddr2_dqs_n[0]
set_location_assignment PIN_U28 -to lpddr2_dqs_n[1]
set_location_assignment PIN_V26 -to lpddr2_dqs_p[0]
set_location_assignment PIN_U27 -to lpddr2_dqs_p[1]
set_location_assignment PIN_AD23 -to lpddr2_oct_rzq
set_location_assignment PIN_AB14 -to hsmc_clk_in_p[1]
set_location_assignment PIN_AC14 -to "hsmc_clk_in_p[1](n)"
set_location_assignment PIN_Y15 -to hsmc_clk_in_p[2]
set_location_assignment PIN_AA15 -to "hsmc_clk_in_p[2](n)"
set_location_assignment PIN_AB16 -to hsmc_clk_in0
set_location_assignment PIN_Y16 -to hsmc_rx_d_p[0]
set_location_assignment PIN_AA16 -to "hsmc_rx_d_p[0](n)"
set_location_assignment PIN_Y17 -to hsmc_rx_d_p[1]
set_location_assignment PIN_Y18 -to "hsmc_rx_d_p[1](n)"
set_location_assignment PIN_AA18 -to hsmc_rx_d_p[2]
set_location_assignment PIN_AA19 -to "hsmc_rx_d_p[2](n)"
set_location_assignment PIN_Y20 -to hsmc_rx_d_p[3]
set_location_assignment PIN_AA20 -to "hsmc_rx_d_p[3](n)"
set_location_assignment PIN_AA21 -to hsmc_rx_d_p[4]
set_location_assignment PIN_AB21 -to "hsmc_rx_d_p[4](n)"
set_location_assignment PIN_AB19 -to hsmc_rx_d_p[5]
set_location_assignment PIN_AC19 -to "hsmc_rx_d_p[5](n)"
set_location_assignment PIN_AC21 -to hsmc_rx_d_p[6]
set_location_assignment PIN_AD20 -to "hsmc_rx_d_p[6](n)"
set_location_assignment PIN_AD19 -to hsmc_rx_d_p[7]
set_location_assignment PIN_AE20 -to "hsmc_rx_d_p[7](n)"
set_location_assignment PIN_AF21 -to hsmc_rx_d_p[8]
set_location_assignment PIN_AG22 -to "hsmc_rx_d_p[8](n)"
set_location_assignment PIN_AF20 -to hsmc_rx_d_p[9]
set_location_assignment PIN_AG21 -to "hsmc_rx_d_p[9](n)"
set_location_assignment PIN_AF18 -to hsmc_rx_d_p[10]
set_location_assignment PIN_AF19 -to "hsmc_rx_d_p[10](n)"
set_location_assignment PIN_AG18 -to hsmc_rx_d_p[11]
set_location_assignment PIN_AG19 -to "hsmc_rx_d_p[11](n)"
set_location_assignment PIN_AK16 -to hsmc_rx_d_p[12]
set_location_assignment PIN_AK17 -to "hsmc_rx_d_p[12](n)"
set_location_assignment PIN_AF16 -to hsmc_rx_d_p[13]
set_location_assignment PIN_AG16 -to "hsmc_rx_d_p[13](n)"
set_location_assignment PIN_AE16 -to hsmc_rx_d_p[14]
set_location_assignment PIN_AF15 -to "hsmc_rx_d_p[14](n)"
set_location_assignment PIN_AD17 -to hsmc_rx_d_p[15]
set_location_assignment PIN_AE17 -to "hsmc_rx_d_p[15](n)"
set_location_assignment PIN_AD18 -to hsmc_rx_d_p[16]
set_location_assignment PIN_AE18 -to "hsmc_rx_d_p[16](n)"
set_location_assignment PIN_AK27 -to hsmc_tx_d_p[0]
set_location_assignment PIN_AK28 -to "hsmc_tx_d_p[0](n)"
set_location_assignment PIN_AJ27 -to hsmc_tx_d_p[1]
set_location_assignment PIN_AK26 -to "hsmc_tx_d_p[1](n)"
set_location_assignment PIN_AG26 -to hsmc_tx_d_p[2]
set_location_assignment PIN_AH26 -to "hsmc_tx_d_p[2](n)"
set_location_assignment PIN_AJ25 -to hsmc_tx_d_p[3]
set_location_assignment PIN_AK25 -to "hsmc_tx_d_p[3](n)"
set_location_assignment PIN_AH24 -to hsmc_tx_d_p[4]
set_location_assignment PIN_AJ24 -to "hsmc_tx_d_p[4](n)"
set_location_assignment PIN_AH21 -to hsmc_tx_d_p[5]
set_location_assignment PIN_AJ22 -to "hsmc_tx_d_p[5](n)"
set_location_assignment PIN_AJ23 -to hsmc_tx_d_p[6]
set_location_assignment PIN_AK23 -to "hsmc_tx_d_p[6](n)"
set_location_assignment PIN_AK21 -to hsmc_tx_d_p[7]
set_location_assignment PIN_AK22 -to "hsmc_tx_d_p[7](n)"
set_location_assignment PIN_AJ20 -to hsmc_tx_d_p[8]
set_location_assignment PIN_AK20 -to "hsmc_tx_d_p[8](n)"
set_location_assignment PIN_AJ19 -to hsmc_tx_d_p[9]
set_location_assignment PIN_AK18 -to "hsmc_tx_d_p[9](n)"
set_location_assignment PIN_AJ17 -to hsmc_tx_d_p[10]
set_location_assignment PIN_AJ18 -to "hsmc_tx_d_p[10](n)"
set_location_assignment PIN_AG24 -to hsmc_tx_d_p[11]
set_location_assignment PIN_AH25 -to "hsmc_tx_d_p[11](n)"
set_location_assignment PIN_AH19 -to hsmc_tx_d_p[12]
set_location_assignment PIN_AH20 -to "hsmc_tx_d_p[12](n)"
set_location_assignment PIN_AG17 -to hsmc_tx_d_p[13]
set_location_assignment PIN_AH17 -to "hsmc_tx_d_p[13](n)"
set_location_assignment PIN_AJ15 -to hsmc_tx_d_p[14]
set_location_assignment PIN_AK15 -to "hsmc_tx_d_p[14](n)"
set_location_assignment PIN_AH14 -to hsmc_tx_d_p[15]
set_location_assignment PIN_AH15 -to "hsmc_tx_d_p[15](n)"
set_location_assignment PIN_AE15 -to hsmc_tx_d_p[16]
set_location_assignment PIN_AF14 -to "hsmc_tx_d_p[16](n)"
set_location_assignment PIN_AH10 -to hsmc_d[0]
set_location_assignment PIN_AJ10 -to hsmc_d[1]
set_location_assignment PIN_Y13 -to hsmc_d[2]
set_location_assignment PIN_AA14 -to hsmc_d[3]
set_location_assignment PIN_AK5 -to hsmc_prsntn
set_location_assignment PIN_AE22 -to hsmc_clk_out_p[1]
set_location_assignment PIN_AF23 -to "hsmc_clk_out_p[1](n)"
set_location_assignment PIN_AJ14 -to hsmc_clk_out0
set_location_assignment PIN_AG23 -to hsmc_clk_out_p[2]
set_location_assignment PIN_AH22 -to "hsmc_clk_out_p[2](n)"
set_location_assignment PIN_AC22 -to hsmc_scl
set_location_assignment PIN_AB22 -to hsmc_sda
set_location_assignment PIN_AB12 -to user_pb[0]
set_location_assignment PIN_AB13 -to user_pb[1]
set_location_assignment PIN_AF13 -to user_pb[2]
set_location_assignment PIN_AG12 -to user_pb[3]
set_location_assignment PIN_AK3 -to user_led[0]
set_location_assignment PIN_AJ4 -to user_led[1]
set_location_assignment PIN_AJ5 -to user_led[2]
set_location_assignment PIN_AK6 -to user_led[3]
set_location_assignment PIN_F9 -to clkout_sma
set_location_assignment PIN_B13 -to ddr3_a[13]
set_location_assignment PIN_B14 -to ddr3_dm[3]
set_location_assignment PIN_C15 -to ddr3_dq[24]
set_location_assignment PIN_D17 -to ddr3_dq[25]
set_location_assignment PIN_C12 -to ddr3_dq[26]
set_location_assignment PIN_E17 -to ddr3_dq[27]
set_location_assignment PIN_C16 -to ddr3_dq[28]
set_location_assignment PIN_A14 -to ddr3_dq[29]
set_location_assignment PIN_D12 -to ddr3_dq[30]
set_location_assignment PIN_A13 -to ddr3_dq[31]
set_location_assignment PIN_J17 -to ddr3_dqs_n[3]
set_location_assignment PIN_K17 -to ddr3_dqs_p[3]
set_location_assignment PIN_F8 -to fm_a[24]
set_location_assignment PIN_E8 -to fm_a[25]
set_location_assignment PIN_AH12 -to hsmc_rx_led
set_location_assignment PIN_AH11 -to hsmc_tx_led
set_location_assignment PIN_J10 -to ssram_adspn
set_location_assignment PIN_E6 -to ssram_adscn
set_location_assignment PIN_P22 -to clkin_50_fpga_right
set_location_assignment PIN_L14 -to clkin_50_fpga_top
set_location_assignment PIN_AB17 -to diff_clkin_bot_125_p
set_location_assignment PIN_AB18 -to "diff_clkin_bot_125_p(n)"
set_location_assignment PIN_L15 -to diff_clkin_top_125_p
set_location_assignment PIN_K15 -to "diff_clkin_top_125_p(n)"
set_location_assignment PIN_AF7 -to dip_3p3V
set_location_assignment PIN_AG7 -to eeprom_scl
set_location_assignment PIN_AH7 -to eeprom_sda
set_location_assignment PIN_D8 -to fm_a[26]
set_location_assignment PIN_B27 -to header_d[7]
set_location_assignment PIN_C26 -to header_d[6]
set_location_assignment PIN_C27 -to header_d[5]
set_location_assignment PIN_E25 -to header_d[4]
set_location_assignment PIN_E26 -to header_d[3]
set_location_assignment PIN_G22 -to header_d[2]
set_location_assignment PIN_G21 -to header_d[1]
set_location_assignment PIN_H21 -to header_d[0]
set_location_assignment PIN_H24 -to header_p[5]
set_location_assignment PIN_E27 -to header_p[4]
set_location_assignment PIN_D28 -to header_p[3]
set_location_assignment PIN_J22 -to header_p[2]
set_location_assignment PIN_P20 -to header_p[1]
set_location_assignment PIN_H25 -to header_p[0]
set_location_assignment PIN_N30 -to overtemp_fpga
set_location_assignment PIN_AJ1 -to usb_uart_cts
set_location_assignment PIN_AD13 -to usb_uart_dcd
set_location_assignment PIN_V12 -to usb_uart_dsr
set_location_assignment PIN_AE10 -to usb_uart_dtr
set_location_assignment PIN_AE13 -to usb_uart_gpio2
set_location_assignment PIN_AD12 -to usb_uart_ri
set_location_assignment PIN_AK12 -to usb_uart_rstn
set_location_assignment PIN_AE12 -to usb_uart_rts
set_location_assignment PIN_W12 -to usb_uart_rxd
set_location_assignment PIN_AG14 -to usb_uart_suspend
set_location_assignment PIN_AG13 -to usb_uart_suspendn
set_location_assignment PIN_AF10 -to usb_uart_txd
set_location_assignment PIN_J25 -to header_n[5]
set_location_assignment PIN_D27 -to header_n[4]
set_location_assignment PIN_D29 -to header_n[3]
set_location_assignment PIN_J23 -to header_n[2]
set_location_assignment PIN_N20 -to header_n[1]
set_location_assignment PIN_H26 -to header_n[0]
set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
set_global_assignment -name VERILOG_FILE baseline_c5e.v
set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
set_instance_assignment -name IO_STANDARD "2.5 V" -to hsmc_clk_in0
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_clk_in_p[2]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_clk_in_p[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to hsmc_clk_out0
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_clk_out_p[2]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_clk_out_p[1]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_rx_d_p[16]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_rx_d_p[15]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_rx_d_p[14]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_rx_d_p[13]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_rx_d_p[12]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_rx_d_p[11]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_rx_d_p[10]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_rx_d_p[9]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_rx_d_p[8]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_rx_d_p[7]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_rx_d_p[6]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_rx_d_p[5]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_rx_d_p[4]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_rx_d_p[3]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_rx_d_p[2]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_rx_d_p[1]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_rx_d_p[0]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_tx_d_p[16]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_tx_d_p[15]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_tx_d_p[14]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_tx_d_p[13]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_tx_d_p[12]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_tx_d_p[11]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_tx_d_p[10]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_tx_d_p[9]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_tx_d_p[8]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_tx_d_p[7]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_tx_d_p[6]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_tx_d_p[5]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_tx_d_p[4]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_tx_d_p[3]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_tx_d_p[2]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_tx_d_p[1]
set_instance_assignment -name IO_STANDARD LVDS -to hsmc_tx_d_p[0]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_a[9]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_a[8]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_a[7]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_a[6]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_a[5]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_a[4]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_a[3]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_a[2]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_a[1]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_a[0]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_ck_p
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_ck_n
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_cke
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_csn
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dm[1]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dm[0]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dq[15]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dq[14]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dq[13]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dq[12]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dq[11]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dq[10]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dq[9]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dq[8]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dq[7]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dq[6]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dq[5]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dq[4]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dq[3]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dq[2]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dq[1]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dq[0]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dqs_p[0]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dqs_n[0]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dqs_p[1]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_dqs_n[1]
set_instance_assignment -name IO_STANDARD "1.2 V" -to lpddr2_oct_rzq
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_wen
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_rstn
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_rasn
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_odt
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_oct_rzq
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dqs_p[2]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dqs_p[1]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dqs_p[0]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dqs_n[2]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dqs_n[1]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dqs_n[0]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[23]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[22]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[21]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[20]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[19]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[18]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[17]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[16]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[15]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[14]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[13]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[12]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[11]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[10]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[9]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[8]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[7]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[6]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[5]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[4]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[3]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[2]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[1]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[0]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dm[2]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dm[1]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dm[0]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_csn
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_cke
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_ck_p
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_ck_n
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_casn
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_ba[2]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_ba[1]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_ba[0]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_a[12]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_a[11]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_a[10]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_a[9]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_a[8]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_a[7]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_a[6]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_a[5]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_a[4]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_a[3]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_a[2]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_a[1]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_a[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_gtx_clk
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_intn
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_mdc
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_mdio
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_resetn
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_rx_clk
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_rx_col
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_rx_crs
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_rx_d[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_rx_d[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_rx_d[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_rx_d[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_rx_dv
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_rx_er
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_tx_clk
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_tx_d[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_tx_d[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_tx_d[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_tx_d[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_tx_en
set_instance_assignment -name IO_STANDARD "2.5 V" -to eneta_tx_er
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_gtx_clk
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_intn
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_mdc
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_mdio
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_resetn
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_rx_clk
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_rx_col
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_rx_crs
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_rx_d[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_rx_d[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_rx_d[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_rx_d[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_rx_dv
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_rx_er
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_tx_clk
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_tx_d[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_tx_d[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_tx_d[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_tx_d[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_tx_en
set_instance_assignment -name IO_STANDARD "2.5 V" -to enetb_tx_er
set_instance_assignment -name IO_STANDARD "2.5 V" -to flash_advn
set_instance_assignment -name IO_STANDARD "2.5 V" -to flash_cen
set_instance_assignment -name IO_STANDARD "2.5 V" -to flash_clk
set_instance_assignment -name IO_STANDARD "2.5 V" -to flash_oen
set_instance_assignment -name IO_STANDARD "2.5 V" -to flash_rdybsyn
set_instance_assignment -name IO_STANDARD "2.5 V" -to flash_resetn
set_instance_assignment -name IO_STANDARD "2.5 V" -to flash_wen
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[23]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[22]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[21]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[20]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[19]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[18]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[17]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[16]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[15]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[14]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[13]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[12]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[11]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[10]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[9]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[8]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[7]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[6]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_d[15]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_d[14]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_d[13]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_d[12]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_d[11]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_d[10]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_d[9]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_d[8]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_d[7]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_d[6]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_d[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_d[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_d[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_d[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_d[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_d[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fx2_resetn
set_instance_assignment -name IO_STANDARD "2.5 V" -to hsmc_d[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to hsmc_d[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to hsmc_d[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to hsmc_d[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to hsmc_prsntn
set_instance_assignment -name IO_STANDARD "2.5 V" -to hsmc_scl
set_instance_assignment -name IO_STANDARD "2.5 V" -to hsmc_sda
set_instance_assignment -name IO_STANDARD "2.5 V" -to lcd_csn
set_instance_assignment -name IO_STANDARD "2.5 V" -to lcd_d_cn
set_instance_assignment -name IO_STANDARD "2.5 V" -to lcd_data[7]
set_instance_assignment -name IO_STANDARD "2.5 V" -to lcd_data[6]
set_instance_assignment -name IO_STANDARD "2.5 V" -to lcd_data[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to lcd_data[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to lcd_data[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to lcd_data[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to lcd_data[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to lcd_data[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to lcd_wen
set_instance_assignment -name IO_STANDARD "2.5 V" -to max5_ben[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to max5_ben[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to max5_ben[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to max5_ben[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to max5_clk
set_instance_assignment -name IO_STANDARD "2.5 V" -to max5_csn
set_instance_assignment -name IO_STANDARD "2.5 V" -to max5_oen
set_instance_assignment -name IO_STANDARD "2.5 V" -to max5_wen
set_instance_assignment -name IO_STANDARD "2.5 V" -to sram_cen
set_instance_assignment -name IO_STANDARD "2.5 V" -to ssram_advn
set_instance_assignment -name IO_STANDARD "2.5 V" -to ssram_bwan
set_instance_assignment -name IO_STANDARD "2.5 V" -to ssram_bwbn
set_instance_assignment -name IO_STANDARD "2.5 V" -to ssram_bwen
set_instance_assignment -name IO_STANDARD "2.5 V" -to ssram_clk
set_instance_assignment -name IO_STANDARD "2.5 V" -to ssram_oen
set_instance_assignment -name IO_STANDARD "2.5 V" -to ssram_zzn
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to uart_cts
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to uart_rts
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to uart_rxd
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to uart_txd
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_addr[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_addr[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_clk
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_data[7]
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_data[6]
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_data[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_data[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_data[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_data[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_data[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_data[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_empty
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_full
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_oen
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_rdn
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_resetn
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_scl
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_sda
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_wrn
set_instance_assignment -name IO_STANDARD "2.5 V" -to user_dipsw[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to user_dipsw[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to user_dipsw[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to user_dipsw[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to user_led[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to user_led[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to user_led[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to user_led[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to user_pb[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to user_pb[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to user_pb[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to user_pb[0]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[24]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[25]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[26]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[27]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[28]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[29]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[30]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dq[31]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dm[3]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_a[13]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ssram_adspn
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[24]
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[25]
set_instance_assignment -name IO_STANDARD "2.5 V" -to clkout_sma
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dqs_p[3]
set_instance_assignment -name IO_STANDARD "1.5 V" -to ddr3_dqs_n[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to hsmc_tx_led
set_instance_assignment -name IO_STANDARD "2.5 V" -to clkin_50_fpga_right
set_instance_assignment -name IO_STANDARD LVDS -to diff_clkin_bot_125_p
set_instance_assignment -name IO_STANDARD LVDS -to "diff_clkin_bot_125_p(n)"
set_instance_assignment -name IO_STANDARD LVDS -to diff_clkin_top_125_p
set_instance_assignment -name IO_STANDARD LVDS -to "diff_clkin_top_125_p(n)"
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dip_3p3V
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to eeprom_scl
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to eeprom_sda
set_instance_assignment -name IO_STANDARD "2.5 V" -to fm_a[26]
set_instance_assignment -name IO_STANDARD "1.5 V" -to header_d[7]
set_instance_assignment -name IO_STANDARD "1.5 V" -to header_d[6]
set_instance_assignment -name IO_STANDARD "1.5 V" -to header_d[5]
set_instance_assignment -name IO_STANDARD "1.5 V" -to header_d[4]
set_instance_assignment -name IO_STANDARD "1.5 V" -to header_d[3]
set_instance_assignment -name IO_STANDARD "1.5 V" -to header_d[2]
set_instance_assignment -name IO_STANDARD "1.5 V" -to header_d[1]
set_instance_assignment -name IO_STANDARD "1.5 V" -to header_d[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to header_p[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to header_p[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to header_p[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to header_p[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to header_p[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to header_p[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to overtemp_fpga
set_instance_assignment -name IO_STANDARD "2.5 V" -to ssram_adscn
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_uart_cts
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_uart_dcd
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_uart_dsr
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_uart_dtr
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_uart_gpio2
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_uart_ri
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_uart_rstn
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_uart_rts
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_uart_rxd
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_uart_suspend
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_uart_suspendn
set_instance_assignment -name IO_STANDARD "2.5 V" -to usb_uart_txd
set_instance_assignment -name IO_STANDARD "2.5 V" -to header_n[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to header_n[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to header_n[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to header_n[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to header_n[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to header_n[0]
set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top
}