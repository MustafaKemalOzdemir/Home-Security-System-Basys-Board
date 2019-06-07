-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sun Dec 23 19:33:51 2018
-- Host        : ADMINRG-25AE4SR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top MainDesign_xup_or2_5_0 -prefix
--               MainDesign_xup_or2_5_0_ MainDesign_xup_or2_2_0_stub.vhdl
-- Design      : MainDesign_xup_or2_2_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MainDesign_xup_or2_5_0 is
  Port ( 
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );

end MainDesign_xup_or2_5_0;

architecture stub of MainDesign_xup_or2_5_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a,b,y";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xup_or2,Vivado 2018.1";
begin
end;
