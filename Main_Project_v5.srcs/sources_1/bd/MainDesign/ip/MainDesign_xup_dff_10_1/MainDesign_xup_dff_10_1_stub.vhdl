-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sun Dec 23 19:33:52 2018
-- Host        : ADMINRG-25AE4SR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top MainDesign_xup_dff_10_1 -prefix
--               MainDesign_xup_dff_10_1_ MainDesign_xup_dff_0_0_stub.vhdl
-- Design      : MainDesign_xup_dff_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MainDesign_xup_dff_10_1 is
  Port ( 
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    q : out STD_LOGIC
  );

end MainDesign_xup_dff_10_1;

architecture stub of MainDesign_xup_dff_10_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "d,clk,q";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xup_dff,Vivado 2018.1";
begin
end;
