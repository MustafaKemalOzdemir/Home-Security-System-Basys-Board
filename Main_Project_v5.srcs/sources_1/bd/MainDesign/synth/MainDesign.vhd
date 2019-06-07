--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
--Date        : Sun Dec 23 21:59:40 2018
--Host        : ADMINRG-25AE4SR running 64-bit major release  (build 9200)
--Command     : generate_target MainDesign.bd
--Design      : MainDesign
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MainDesign is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of MainDesign : entity is "MainDesign,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=MainDesign,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=59,numReposBlks=59,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of MainDesign : entity is "MainDesign.hwdef";
end MainDesign;

architecture STRUCTURE of MainDesign is
  component MainDesign_xup_dff_0_0 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component MainDesign_xup_dff_0_0;
  component MainDesign_xup_dff_0_1 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component MainDesign_xup_dff_0_1;
  component MainDesign_xup_dff_0_2 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component MainDesign_xup_dff_0_2;
  component MainDesign_xup_dff_0_3 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component MainDesign_xup_dff_0_3;
  component MainDesign_xup_dff_0_4 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component MainDesign_xup_dff_0_4;
  component MainDesign_xup_or5_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    e : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_or5_0_0;
  component MainDesign_xup_or2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_or2_0_0;
  component MainDesign_xup_inv_0_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_inv_0_0;
  component MainDesign_xup_inv_0_1 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_inv_0_1;
  component MainDesign_xup_inv_0_2 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_inv_0_2;
  component MainDesign_xup_and3_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_and3_0_0;
  component MainDesign_xup_and2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_and2_0_0;
  component MainDesign_xup_and2_0_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_and2_0_1;
  component MainDesign_xup_or2_0_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_or2_0_1;
  component MainDesign_xup_inv_2_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_inv_2_0;
  component MainDesign_xup_and2_0_2 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_and2_0_2;
  component MainDesign_xup_and2_0_3 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_and2_0_3;
  component MainDesign_xup_inv_3_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_inv_3_0;
  component MainDesign_xup_and2_2_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_and2_2_0;
  component MainDesign_xup_or2_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_or2_1_0;
  component MainDesign_xup_and2_3_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_and2_3_0;
  component MainDesign_xup_and3_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_and3_1_0;
  component MainDesign_xup_and3_1_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_and3_1_1;
  component MainDesign_xup_or2_2_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_or2_2_0;
  component MainDesign_xup_and2_2_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_and2_2_1;
  component MainDesign_xup_and2_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_and2_1_0;
  component MainDesign_xup_or2_3_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_or2_3_0;
  component MainDesign_xup_inv_4_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_inv_4_0;
  component MainDesign_xup_inv_4_1 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_inv_4_1;
  component MainDesign_xup_and5_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    e : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_and5_0_0;
  component MainDesign_xup_and2_8_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_and2_8_0;
  component MainDesign_xup_or2_3_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_or2_3_1;
  component MainDesign_xup_or2_6_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_or2_6_0;
  component MainDesign_xup_and2_8_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_and2_8_1;
  component MainDesign_xup_and2_10_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_and2_10_0;
  component MainDesign_xup_and2_11_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_and2_11_0;
  component MainDesign_xup_or2_5_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_or2_5_0;
  component MainDesign_xup_clk_divider_0_0 is
  port (
    clkin : in STD_LOGIC;
    clkout : out STD_LOGIC
  );
  end component MainDesign_xup_clk_divider_0_0;
  component MainDesign_xup_dff_5_0 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component MainDesign_xup_dff_5_0;
  component MainDesign_xup_dff_5_1 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component MainDesign_xup_dff_5_1;
  component MainDesign_xup_dff_5_2 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component MainDesign_xup_dff_5_2;
  component MainDesign_xup_and3_3_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_and3_3_0;
  component MainDesign_xup_clk_divider_1_0 is
  port (
    clkin : in STD_LOGIC;
    clkout : out STD_LOGIC
  );
  end component MainDesign_xup_clk_divider_1_0;
  component MainDesign_xup_dff_5_3 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component MainDesign_xup_dff_5_3;
  component MainDesign_xup_dff_5_4 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component MainDesign_xup_dff_5_4;
  component MainDesign_xup_dff_5_5 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component MainDesign_xup_dff_5_5;
  component MainDesign_xup_and3_3_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_and3_3_1;
  component MainDesign_xup_dff_10_0 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component MainDesign_xup_dff_10_0;
  component MainDesign_xup_dff_10_1 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component MainDesign_xup_dff_10_1;
  component MainDesign_xup_dff_10_2 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component MainDesign_xup_dff_10_2;
  component MainDesign_xup_and3_4_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_and3_4_0;
  component MainDesign_xup_2_to_1_mux_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    sel : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_2_to_1_mux_0_0;
  component MainDesign_xup_2_to_1_mux_0_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    sel : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component MainDesign_xup_2_to_1_mux_0_1;
  component MainDesign_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component MainDesign_xlconstant_0_0;
  component MainDesign_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component MainDesign_xlconstant_0_1;
  component MainDesign_seg7display_0_1 is
  port (
    x_l : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    a_to_g : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an_l : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dp_l : out STD_LOGIC
  );
  end component MainDesign_seg7display_0_1;
  component MainDesign_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component MainDesign_xlconcat_0_0;
  component MainDesign_xlconstant_2_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component MainDesign_xlconstant_2_0;
  component MainDesign_xlconstant_2_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component MainDesign_xlconstant_2_1;
  signal Reset_1 : STD_LOGIC;
  signal c_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal load_1 : STD_LOGIC;
  signal p1_1 : STD_LOGIC;
  signal p2_1 : STD_LOGIC;
  signal p3_1 : STD_LOGIC;
  signal pw_1 : STD_LOGIC;
  signal seg7display_0_a_to_g : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal seg7display_0_an_l : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal seg7display_0_dp_l : STD_LOGIC;
  signal tz_1 : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_2_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_3_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xup_2_to_1_mux_0_y : STD_LOGIC;
  signal xup_2_to_1_mux_1_y : STD_LOGIC;
  signal xup_and2_0_y : STD_LOGIC;
  signal xup_and2_10_y : STD_LOGIC;
  signal xup_and2_11_y : STD_LOGIC;
  signal xup_and2_1_y : STD_LOGIC;
  signal xup_and2_2_y : STD_LOGIC;
  signal xup_and2_3_y : STD_LOGIC;
  signal xup_and2_4_y : STD_LOGIC;
  signal xup_and2_5_y : STD_LOGIC;
  signal xup_and2_6_y : STD_LOGIC;
  signal xup_and2_7_y : STD_LOGIC;
  signal xup_and2_8_y : STD_LOGIC;
  signal xup_and2_9_y : STD_LOGIC;
  signal xup_and3_0_y : STD_LOGIC;
  signal xup_and3_1_y : STD_LOGIC;
  signal xup_and3_2_y : STD_LOGIC;
  signal xup_and3_3_y : STD_LOGIC;
  signal xup_and3_4_y : STD_LOGIC;
  signal xup_and3_5_y : STD_LOGIC;
  signal xup_and5_0_y : STD_LOGIC;
  signal xup_clk_divider_0_clkout : STD_LOGIC;
  signal xup_clk_divider_1_clkout : STD_LOGIC;
  signal xup_dff_0_q : STD_LOGIC;
  signal xup_dff_10_q : STD_LOGIC;
  signal xup_dff_11_q : STD_LOGIC;
  signal xup_dff_12_q : STD_LOGIC;
  signal xup_dff_13_q : STD_LOGIC;
  signal xup_dff_1_q : STD_LOGIC;
  signal xup_dff_2_q : STD_LOGIC;
  signal xup_dff_3_q : STD_LOGIC;
  signal xup_dff_4_q : STD_LOGIC;
  signal xup_dff_5_q : STD_LOGIC;
  signal xup_dff_6_q : STD_LOGIC;
  signal xup_dff_7_q : STD_LOGIC;
  signal xup_dff_8_q : STD_LOGIC;
  signal xup_dff_9_q : STD_LOGIC;
  signal xup_inv_0_y : STD_LOGIC;
  signal xup_inv_1_y : STD_LOGIC;
  signal xup_inv_2_y : STD_LOGIC;
  signal xup_inv_3_y : STD_LOGIC;
  signal xup_inv_4_y : STD_LOGIC;
  signal xup_inv_5_y : STD_LOGIC;
  signal xup_inv_6_y : STD_LOGIC;
  signal xup_or2_0_y : STD_LOGIC;
  signal xup_or2_1_y : STD_LOGIC;
  signal xup_or2_2_y : STD_LOGIC;
  signal xup_or2_3_y : STD_LOGIC;
  signal xup_or2_4_y : STD_LOGIC;
  signal xup_or2_5_y : STD_LOGIC;
  signal xup_or2_6_y : STD_LOGIC;
  signal xup_or2_7_y : STD_LOGIC;
  signal xup_or5_0_y : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN MainDesign_clk, FREQ_HZ 100000000, PHASE 0.000";
begin
  Reset_1 <= Reset;
  StatusLed <= xup_2_to_1_mux_1_y;
  an(3 downto 0) <= seg7display_0_an_l(3 downto 0);
  c_1 <= c;
  clk_1 <= clk;
  dp <= seg7display_0_dp_l;
  load_1 <= load;
  o0 <= xup_dff_0_q;
  o1 <= xup_dff_1_q;
  o2 <= xup_dff_2_q;
  o3 <= xup_dff_3_q;
  o4 <= xup_dff_4_q;
  p1_1 <= p1;
  p2_1 <= p2;
  p3_1 <= p3;
  pw_1 <= pw;
  seg(6 downto 0) <= seg7display_0_a_to_g(6 downto 0);
  tz_1 <= tz;
seg7display_0: component MainDesign_seg7display_0_1
     port map (
      a_to_g(6 downto 0) => seg7display_0_a_to_g(6 downto 0),
      an_l(3 downto 0) => seg7display_0_an_l(3 downto 0),
      clk => clk_1,
      dp_l => seg7display_0_dp_l,
      reset => xlconstant_2_dout(0),
      x_l(15 downto 0) => xlconcat_0_dout(15 downto 0)
    );
xlconcat_0: component MainDesign_xlconcat_0_0
     port map (
      In0(0) => xlconstant_2_dout(0),
      In1(0) => xlconstant_2_dout(0),
      In10(0) => xlconstant_3_dout(0),
      In11(0) => xlconstant_3_dout(0),
      In12(0) => xlconstant_3_dout(0),
      In13(0) => xlconstant_3_dout(0),
      In14(0) => xlconstant_3_dout(0),
      In15(0) => xlconstant_3_dout(0),
      In2(0) => xlconstant_3_dout(0),
      In3(0) => xlconstant_3_dout(0),
      In4(0) => xlconstant_3_dout(0),
      In5(0) => xlconstant_2_dout(0),
      In6(0) => xlconstant_3_dout(0),
      In7(0) => xlconstant_3_dout(0),
      In8(0) => xlconstant_2_dout(0),
      In9(0) => xlconstant_3_dout(0),
      dout(15 downto 0) => xlconcat_0_dout(15 downto 0)
    );
xlconstant_0: component MainDesign_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component MainDesign_xlconstant_0_1
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
xlconstant_2: component MainDesign_xlconstant_2_0
     port map (
      dout(0) => xlconstant_2_dout(0)
    );
xlconstant_3: component MainDesign_xlconstant_2_1
     port map (
      dout(0) => xlconstant_3_dout(0)
    );
xup_2_to_1_mux_0: component MainDesign_xup_2_to_1_mux_0_0
     port map (
      a => xlconstant_0_dout(0),
      b => xlconstant_1_dout(0),
      sel => xup_dff_1_q,
      y => xup_2_to_1_mux_0_y
    );
xup_2_to_1_mux_1: component MainDesign_xup_2_to_1_mux_0_1
     port map (
      a => xup_2_to_1_mux_0_y,
      b => xup_clk_divider_0_clkout,
      sel => xup_dff_0_q,
      y => xup_2_to_1_mux_1_y
    );
xup_and2_0: component MainDesign_xup_and2_0_0
     port map (
      a => xup_dff_1_q,
      b => Reset_1,
      y => xup_and2_0_y
    );
xup_and2_1: component MainDesign_xup_and2_0_1
     port map (
      a => xup_dff_1_q,
      b => xup_and3_3_y,
      y => xup_and2_1_y
    );
xup_and2_10: component MainDesign_xup_and2_10_0
     port map (
      a => xup_dff_3_q,
      b => xup_or2_6_y,
      y => xup_and2_10_y
    );
xup_and2_11: component MainDesign_xup_and2_11_0
     port map (
      a => xup_inv_3_y,
      b => xup_dff_4_q,
      y => xup_and2_11_y
    );
xup_and2_2: component MainDesign_xup_and2_0_2
     port map (
      a => Reset_1,
      b => xup_dff_3_q,
      y => xup_and2_2_y
    );
xup_and2_3: component MainDesign_xup_and2_0_3
     port map (
      a => pw_1,
      b => xup_dff_3_q,
      y => xup_and2_3_y
    );
xup_and2_4: component MainDesign_xup_and2_2_0
     port map (
      a => Reset_1,
      b => xup_dff_2_q,
      y => xup_and2_4_y
    );
xup_and2_5: component MainDesign_xup_and2_3_0
     port map (
      a => Reset_1,
      b => xup_dff_4_q,
      y => xup_and2_5_y
    );
xup_and2_6: component MainDesign_xup_and2_2_1
     port map (
      a => xup_dff_0_q,
      b => xup_and3_4_y,
      y => xup_and2_6_y
    );
xup_and2_7: component MainDesign_xup_and2_1_0
     port map (
      a => xup_dff_0_q,
      b => xup_and3_3_y,
      y => xup_and2_7_y
    );
xup_and2_8: component MainDesign_xup_and2_8_0
     port map (
      a => xup_and3_5_y,
      b => xup_dff_2_q,
      y => xup_and2_8_y
    );
xup_and2_9: component MainDesign_xup_and2_8_1
     port map (
      a => xup_inv_4_y,
      b => tz_1,
      y => xup_and2_9_y
    );
xup_and3_0: component MainDesign_xup_and3_0_0
     port map (
      a => xup_dff_0_q,
      b => xup_inv_0_y,
      c => xup_inv_1_y,
      y => xup_and3_0_y
    );
xup_and3_1: component MainDesign_xup_and3_1_0
     port map (
      a => xup_dff_1_q,
      b => xup_inv_3_y,
      c => xup_inv_0_y,
      y => xup_and3_1_y
    );
xup_and3_2: component MainDesign_xup_and3_1_1
     port map (
      a => xup_inv_3_y,
      b => xup_inv_2_y,
      c => xup_dff_2_q,
      y => xup_and3_2_y
    );
xup_and3_3: component MainDesign_xup_and3_3_0
     port map (
      a => xup_dff_5_q,
      b => xup_dff_6_q,
      c => xup_dff_7_q,
      y => xup_and3_3_y
    );
xup_and3_4: component MainDesign_xup_and3_3_1
     port map (
      a => xup_dff_8_q,
      b => xup_dff_9_q,
      c => xup_dff_10_q,
      y => xup_and3_4_y
    );
xup_and3_5: component MainDesign_xup_and3_4_0
     port map (
      a => xup_dff_11_q,
      b => xup_dff_12_q,
      c => xup_dff_13_q,
      y => xup_and3_5_y
    );
xup_and5_0: component MainDesign_xup_and5_0_0
     port map (
      a => xup_dff_3_q,
      b => xup_inv_6_y,
      c => xup_inv_3_y,
      d => xup_inv_5_y,
      e => xup_inv_4_y,
      y => xup_and5_0_y
    );
xup_clk_divider_0: component MainDesign_xup_clk_divider_0_0
     port map (
      clkin => clk_1,
      clkout => xup_clk_divider_0_clkout
    );
xup_clk_divider_1: component MainDesign_xup_clk_divider_1_0
     port map (
      clkin => clk_1,
      clkout => xup_clk_divider_1_clkout
    );
xup_dff_0: component MainDesign_xup_dff_0_0
     port map (
      clk => xup_clk_divider_0_clkout,
      d => xup_or2_0_y,
      q => xup_dff_0_q
    );
xup_dff_1: component MainDesign_xup_dff_0_1
     port map (
      clk => xup_clk_divider_0_clkout,
      d => xup_or2_4_y,
      q => xup_dff_1_q
    );
xup_dff_10: component MainDesign_xup_dff_5_5
     port map (
      clk => xup_clk_divider_1_clkout,
      d => xup_dff_9_q,
      q => xup_dff_10_q
    );
xup_dff_11: component MainDesign_xup_dff_10_0
     port map (
      clk => xup_clk_divider_1_clkout,
      d => p3_1,
      q => xup_dff_11_q
    );
xup_dff_12: component MainDesign_xup_dff_10_1
     port map (
      clk => xup_clk_divider_1_clkout,
      d => xup_dff_11_q,
      q => xup_dff_12_q
    );
xup_dff_13: component MainDesign_xup_dff_10_2
     port map (
      clk => xup_clk_divider_1_clkout,
      d => xup_dff_12_q,
      q => xup_dff_13_q
    );
xup_dff_2: component MainDesign_xup_dff_0_2
     port map (
      clk => xup_clk_divider_0_clkout,
      d => xup_or2_3_y,
      q => xup_dff_2_q
    );
xup_dff_3: component MainDesign_xup_dff_0_3
     port map (
      clk => xup_clk_divider_0_clkout,
      d => xup_or2_5_y,
      q => xup_dff_3_q
    );
xup_dff_4: component MainDesign_xup_dff_0_4
     port map (
      clk => xup_clk_divider_0_clkout,
      d => xup_or2_7_y,
      q => xup_dff_4_q
    );
xup_dff_5: component MainDesign_xup_dff_5_0
     port map (
      clk => xup_clk_divider_1_clkout,
      d => p1_1,
      q => xup_dff_5_q
    );
xup_dff_6: component MainDesign_xup_dff_5_1
     port map (
      clk => xup_clk_divider_1_clkout,
      d => xup_dff_5_q,
      q => xup_dff_6_q
    );
xup_dff_7: component MainDesign_xup_dff_5_2
     port map (
      clk => xup_clk_divider_1_clkout,
      d => xup_dff_6_q,
      q => xup_dff_7_q
    );
xup_dff_8: component MainDesign_xup_dff_5_3
     port map (
      clk => xup_clk_divider_1_clkout,
      d => p2_1,
      q => xup_dff_8_q
    );
xup_dff_9: component MainDesign_xup_dff_5_4
     port map (
      clk => xup_clk_divider_1_clkout,
      d => xup_dff_8_q,
      q => xup_dff_9_q
    );
xup_inv_0: component MainDesign_xup_inv_0_0
     port map (
      a => xup_and3_3_y,
      y => xup_inv_0_y
    );
xup_inv_1: component MainDesign_xup_inv_0_1
     port map (
      a => xup_and3_4_y,
      y => xup_inv_1_y
    );
xup_inv_2: component MainDesign_xup_inv_0_2
     port map (
      a => xup_and3_5_y,
      y => xup_inv_2_y
    );
xup_inv_3: component MainDesign_xup_inv_2_0
     port map (
      a => Reset_1,
      y => xup_inv_3_y
    );
xup_inv_4: component MainDesign_xup_inv_3_0
     port map (
      a => pw_1,
      y => xup_inv_4_y
    );
xup_inv_5: component MainDesign_xup_inv_4_0
     port map (
      a => c_1,
      y => xup_inv_5_y
    );
xup_inv_6: component MainDesign_xup_inv_4_1
     port map (
      a => tz_1,
      y => xup_inv_6_y
    );
xup_or2_0: component MainDesign_xup_or2_0_0
     port map (
      a => load_1,
      b => xup_or5_0_y,
      y => xup_or2_0_y
    );
xup_or2_1: component MainDesign_xup_or2_0_1
     port map (
      a => xup_and2_0_y,
      b => xup_and2_1_y,
      y => xup_or2_1_y
    );
xup_or2_2: component MainDesign_xup_or2_1_0
     port map (
      a => xup_and2_2_y,
      b => xup_and2_3_y,
      y => xup_or2_2_y
    );
xup_or2_3: component MainDesign_xup_or2_2_0
     port map (
      a => xup_and2_6_y,
      b => xup_and3_2_y,
      y => xup_or2_3_y
    );
xup_or2_4: component MainDesign_xup_or2_3_0
     port map (
      a => xup_and2_7_y,
      b => xup_and3_1_y,
      y => xup_or2_4_y
    );
xup_or2_5: component MainDesign_xup_or2_3_1
     port map (
      a => xup_and2_8_y,
      b => xup_and5_0_y,
      y => xup_or2_5_y
    );
xup_or2_6: component MainDesign_xup_or2_6_0
     port map (
      a => c_1,
      b => xup_and2_9_y,
      y => xup_or2_6_y
    );
xup_or2_7: component MainDesign_xup_or2_5_0
     port map (
      a => xup_and2_10_y,
      b => xup_and2_11_y,
      y => xup_or2_7_y
    );
xup_or5_0: component MainDesign_xup_or5_0_0
     port map (
      a => xup_and3_0_y,
      b => xup_or2_1_y,
      c => xup_and2_4_y,
      d => xup_or2_2_y,
      e => xup_and2_5_y,
      y => xup_or5_0_y
    );
end STRUCTURE;
