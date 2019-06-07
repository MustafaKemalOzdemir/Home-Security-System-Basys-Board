--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
--Date        : Sun Dec 23 21:59:40 2018
--Host        : ADMINRG-25AE4SR running 64-bit major release  (build 9200)
--Command     : generate_target MainDesign_wrapper.bd
--Design      : MainDesign_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MainDesign_wrapper is
  port (
    Reset : in STD_LOGIC;
    StatusLed : out STD_LOGIC;
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    c : in STD_LOGIC;
    clk : in STD_LOGIC;
    dp : out STD_LOGIC;
    load : in STD_LOGIC;
    o0 : out STD_LOGIC;
    o1 : out STD_LOGIC;
    o2 : out STD_LOGIC;
    o3 : out STD_LOGIC;
    o4 : out STD_LOGIC;
    p1 : in STD_LOGIC;
    p2 : in STD_LOGIC;
    p3 : in STD_LOGIC;
    pw : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    tz : in STD_LOGIC
  );
end MainDesign_wrapper;

architecture STRUCTURE of MainDesign_wrapper is
  component MainDesign is
  port (
    p1 : in STD_LOGIC;
    p2 : in STD_LOGIC;
    p3 : in STD_LOGIC;
    Reset : in STD_LOGIC;
    pw : in STD_LOGIC;
    tz : in STD_LOGIC;
    c : in STD_LOGIC;
    clk : in STD_LOGIC;
    load : in STD_LOGIC;
    o0 : out STD_LOGIC;
    o1 : out STD_LOGIC;
    o2 : out STD_LOGIC;
    o3 : out STD_LOGIC;
    o4 : out STD_LOGIC;
    StatusLed : out STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dp : out STD_LOGIC
  );
  end component MainDesign;
begin
MainDesign_i: component MainDesign
     port map (
      Reset => Reset,
      StatusLed => StatusLed,
      an(3 downto 0) => an(3 downto 0),
      c => c,
      clk => clk,
      dp => dp,
      load => load,
      o0 => o0,
      o1 => o1,
      o2 => o2,
      o3 => o3,
      o4 => o4,
      p1 => p1,
      p2 => p2,
      p3 => p3,
      pw => pw,
      seg(6 downto 0) => seg(6 downto 0),
      tz => tz
    );
end STRUCTURE;
