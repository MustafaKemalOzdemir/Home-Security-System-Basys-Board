-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sun Dec 23 19:33:52 2018
-- Host        : ADMINRG-25AE4SR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/M/Desktop/projects/Main_Project_v5/Main_Project_v5.srcs/sources_1/bd/MainDesign/ip/MainDesign_xup_dff_0_0/MainDesign_xup_dff_0_0_sim_netlist.vhdl
-- Design      : MainDesign_xup_dff_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MainDesign_xup_dff_0_0_xup_dff is
  port (
    q : out STD_LOGIC;
    d : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MainDesign_xup_dff_0_0_xup_dff : entity is "xup_dff";
end MainDesign_xup_dff_0_0_xup_dff;

architecture STRUCTURE of MainDesign_xup_dff_0_0_xup_dff is
begin
q_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d,
      Q => q,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MainDesign_xup_dff_0_0 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of MainDesign_xup_dff_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MainDesign_xup_dff_0_0 : entity is "MainDesign_xup_dff_0_0,xup_dff,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of MainDesign_xup_dff_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of MainDesign_xup_dff_0_0 : entity is "xup_dff,Vivado 2018.1";
end MainDesign_xup_dff_0_0;

architecture STRUCTURE of MainDesign_xup_dff_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 signal_clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME signal_clock, FREQ_HZ 100000000, PHASE 0.000";
begin
inst: entity work.MainDesign_xup_dff_0_0_xup_dff
     port map (
      clk => clk,
      d => d,
      q => q
    );
end STRUCTURE;
