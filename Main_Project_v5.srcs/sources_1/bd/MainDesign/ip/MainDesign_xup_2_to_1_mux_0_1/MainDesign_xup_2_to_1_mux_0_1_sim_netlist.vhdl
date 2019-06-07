-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sun Dec 23 19:35:14 2018
-- Host        : ADMINRG-25AE4SR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top MainDesign_xup_2_to_1_mux_0_1 -prefix
--               MainDesign_xup_2_to_1_mux_0_1_ MainDesign_xup_2_to_1_mux_0_0_sim_netlist.vhdl
-- Design      : MainDesign_xup_2_to_1_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MainDesign_xup_2_to_1_mux_0_1_xup_2_to_1_mux is
  port (
    y : out STD_LOGIC;
    a : in STD_LOGIC;
    sel : in STD_LOGIC;
    b : in STD_LOGIC
  );
end MainDesign_xup_2_to_1_mux_0_1_xup_2_to_1_mux;

architecture STRUCTURE of MainDesign_xup_2_to_1_mux_0_1_xup_2_to_1_mux is
begin
\y__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => a,
      I1 => sel,
      I2 => b,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MainDesign_xup_2_to_1_mux_0_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    sel : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of MainDesign_xup_2_to_1_mux_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MainDesign_xup_2_to_1_mux_0_1 : entity is "MainDesign_xup_2_to_1_mux_0_0,xup_2_to_1_mux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of MainDesign_xup_2_to_1_mux_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of MainDesign_xup_2_to_1_mux_0_1 : entity is "xup_2_to_1_mux,Vivado 2018.1";
end MainDesign_xup_2_to_1_mux_0_1;

architecture STRUCTURE of MainDesign_xup_2_to_1_mux_0_1 is
begin
inst: entity work.MainDesign_xup_2_to_1_mux_0_1_xup_2_to_1_mux
     port map (
      a => a,
      b => b,
      sel => sel,
      y => y
    );
end STRUCTURE;
