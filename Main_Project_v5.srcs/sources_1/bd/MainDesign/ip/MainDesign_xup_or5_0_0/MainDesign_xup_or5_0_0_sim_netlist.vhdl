-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sun Dec 23 19:33:52 2018
-- Host        : ADMINRG-25AE4SR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/M/Desktop/projects/Main_Project_v5/Main_Project_v5.srcs/sources_1/bd/MainDesign/ip/MainDesign_xup_or5_0_0/MainDesign_xup_or5_0_0_sim_netlist.vhdl
-- Design      : MainDesign_xup_or5_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MainDesign_xup_or5_0_0_xup_or5 is
  port (
    y : out STD_LOGIC;
    a : in STD_LOGIC;
    c : in STD_LOGIC;
    b : in STD_LOGIC;
    e : in STD_LOGIC;
    d : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MainDesign_xup_or5_0_0_xup_or5 : entity is "xup_or5";
end MainDesign_xup_or5_0_0_xup_or5;

architecture STRUCTURE of MainDesign_xup_or5_0_0_xup_or5 is
begin
\y__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => a,
      I1 => c,
      I2 => b,
      I3 => e,
      I4 => d,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MainDesign_xup_or5_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    e : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of MainDesign_xup_or5_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MainDesign_xup_or5_0_0 : entity is "MainDesign_xup_or5_0_0,xup_or5,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of MainDesign_xup_or5_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of MainDesign_xup_or5_0_0 : entity is "xup_or5,Vivado 2018.1";
end MainDesign_xup_or5_0_0;

architecture STRUCTURE of MainDesign_xup_or5_0_0 is
begin
inst: entity work.MainDesign_xup_or5_0_0_xup_or5
     port map (
      a => a,
      b => b,
      c => c,
      d => d,
      e => e,
      y => y
    );
end STRUCTURE;
