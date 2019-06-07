
################################################################
# This is a generated script based on design: MainDesign
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source MainDesign_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name MainDesign

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set Reset [ create_bd_port -dir I Reset ]
  set StatusLed [ create_bd_port -dir O StatusLed ]
  set an [ create_bd_port -dir O -from 3 -to 0 an ]
  set c [ create_bd_port -dir I c ]
  set clk [ create_bd_port -dir I -type clk clk ]
  set dp [ create_bd_port -dir O dp ]
  set load [ create_bd_port -dir I load ]
  set o0 [ create_bd_port -dir O o0 ]
  set o1 [ create_bd_port -dir O o1 ]
  set o2 [ create_bd_port -dir O o2 ]
  set o3 [ create_bd_port -dir O o3 ]
  set o4 [ create_bd_port -dir O o4 ]
  set p1 [ create_bd_port -dir I p1 ]
  set p2 [ create_bd_port -dir I p2 ]
  set p3 [ create_bd_port -dir I p3 ]
  set pw [ create_bd_port -dir I pw ]
  set seg [ create_bd_port -dir O -from 6 -to 0 seg ]
  set tz [ create_bd_port -dir I tz ]

  # Create instance: seg7display_0, and set properties
  set seg7display_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:seg7display:1.0 seg7display_0 ]

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {16} \
 ] $xlconcat_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_1

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_2

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]

  # Create instance: xup_2_to_1_mux_0, and set properties
  set xup_2_to_1_mux_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_2_to_1_mux:1.0 xup_2_to_1_mux_0 ]

  # Create instance: xup_2_to_1_mux_1, and set properties
  set xup_2_to_1_mux_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_2_to_1_mux:1.0 xup_2_to_1_mux_1 ]

  # Create instance: xup_and2_0, and set properties
  set xup_and2_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_0 ]

  # Create instance: xup_and2_1, and set properties
  set xup_and2_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_1 ]

  # Create instance: xup_and2_2, and set properties
  set xup_and2_2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_2 ]

  # Create instance: xup_and2_3, and set properties
  set xup_and2_3 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_3 ]

  # Create instance: xup_and2_4, and set properties
  set xup_and2_4 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_4 ]

  # Create instance: xup_and2_5, and set properties
  set xup_and2_5 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_5 ]

  # Create instance: xup_and2_6, and set properties
  set xup_and2_6 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_6 ]

  # Create instance: xup_and2_7, and set properties
  set xup_and2_7 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_7 ]

  # Create instance: xup_and2_8, and set properties
  set xup_and2_8 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_8 ]

  # Create instance: xup_and2_9, and set properties
  set xup_and2_9 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_9 ]

  # Create instance: xup_and2_10, and set properties
  set xup_and2_10 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_10 ]

  # Create instance: xup_and2_11, and set properties
  set xup_and2_11 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_11 ]

  # Create instance: xup_and3_0, and set properties
  set xup_and3_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and3:1.0 xup_and3_0 ]

  # Create instance: xup_and3_1, and set properties
  set xup_and3_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and3:1.0 xup_and3_1 ]

  # Create instance: xup_and3_2, and set properties
  set xup_and3_2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and3:1.0 xup_and3_2 ]

  # Create instance: xup_and3_3, and set properties
  set xup_and3_3 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and3:1.0 xup_and3_3 ]

  # Create instance: xup_and3_4, and set properties
  set xup_and3_4 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and3:1.0 xup_and3_4 ]

  # Create instance: xup_and3_5, and set properties
  set xup_and3_5 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and3:1.0 xup_and3_5 ]

  # Create instance: xup_and5_0, and set properties
  set xup_and5_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and5:1.0 xup_and5_0 ]

  # Create instance: xup_clk_divider_0, and set properties
  set xup_clk_divider_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_clk_divider:1.0 xup_clk_divider_0 ]
  set_property -dict [ list \
   CONFIG.SIZE {100000000} \
 ] $xup_clk_divider_0

  # Create instance: xup_clk_divider_1, and set properties
  set xup_clk_divider_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_clk_divider:1.0 xup_clk_divider_1 ]
  set_property -dict [ list \
   CONFIG.SIZE {50000000} \
 ] $xup_clk_divider_1

  # Create instance: xup_dff_0, and set properties
  set xup_dff_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff:1.0 xup_dff_0 ]

  # Create instance: xup_dff_1, and set properties
  set xup_dff_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff:1.0 xup_dff_1 ]

  # Create instance: xup_dff_2, and set properties
  set xup_dff_2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff:1.0 xup_dff_2 ]

  # Create instance: xup_dff_3, and set properties
  set xup_dff_3 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff:1.0 xup_dff_3 ]

  # Create instance: xup_dff_4, and set properties
  set xup_dff_4 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff:1.0 xup_dff_4 ]

  # Create instance: xup_dff_5, and set properties
  set xup_dff_5 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff:1.0 xup_dff_5 ]

  # Create instance: xup_dff_6, and set properties
  set xup_dff_6 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff:1.0 xup_dff_6 ]

  # Create instance: xup_dff_7, and set properties
  set xup_dff_7 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff:1.0 xup_dff_7 ]

  # Create instance: xup_dff_8, and set properties
  set xup_dff_8 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff:1.0 xup_dff_8 ]

  # Create instance: xup_dff_9, and set properties
  set xup_dff_9 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff:1.0 xup_dff_9 ]

  # Create instance: xup_dff_10, and set properties
  set xup_dff_10 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff:1.0 xup_dff_10 ]

  # Create instance: xup_dff_11, and set properties
  set xup_dff_11 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff:1.0 xup_dff_11 ]

  # Create instance: xup_dff_12, and set properties
  set xup_dff_12 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff:1.0 xup_dff_12 ]

  # Create instance: xup_dff_13, and set properties
  set xup_dff_13 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff:1.0 xup_dff_13 ]

  # Create instance: xup_inv_0, and set properties
  set xup_inv_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 xup_inv_0 ]

  # Create instance: xup_inv_1, and set properties
  set xup_inv_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 xup_inv_1 ]

  # Create instance: xup_inv_2, and set properties
  set xup_inv_2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 xup_inv_2 ]

  # Create instance: xup_inv_3, and set properties
  set xup_inv_3 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 xup_inv_3 ]

  # Create instance: xup_inv_4, and set properties
  set xup_inv_4 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 xup_inv_4 ]

  # Create instance: xup_inv_5, and set properties
  set xup_inv_5 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 xup_inv_5 ]

  # Create instance: xup_inv_6, and set properties
  set xup_inv_6 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 xup_inv_6 ]

  # Create instance: xup_or2_0, and set properties
  set xup_or2_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_0 ]

  # Create instance: xup_or2_1, and set properties
  set xup_or2_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_1 ]

  # Create instance: xup_or2_2, and set properties
  set xup_or2_2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_2 ]

  # Create instance: xup_or2_3, and set properties
  set xup_or2_3 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_3 ]

  # Create instance: xup_or2_4, and set properties
  set xup_or2_4 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_4 ]

  # Create instance: xup_or2_5, and set properties
  set xup_or2_5 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_5 ]

  # Create instance: xup_or2_6, and set properties
  set xup_or2_6 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_6 ]

  # Create instance: xup_or2_7, and set properties
  set xup_or2_7 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_7 ]

  # Create instance: xup_or5_0, and set properties
  set xup_or5_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or5:1.0 xup_or5_0 ]

  # Create port connections
  connect_bd_net -net Reset_1 [get_bd_ports Reset] [get_bd_pins xup_and2_0/b] [get_bd_pins xup_and2_2/a] [get_bd_pins xup_and2_4/a] [get_bd_pins xup_and2_5/a] [get_bd_pins xup_inv_3/a]
  connect_bd_net -net c_1 [get_bd_ports c] [get_bd_pins xup_inv_5/a] [get_bd_pins xup_or2_6/a]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins seg7display_0/clk] [get_bd_pins xup_clk_divider_0/clkin] [get_bd_pins xup_clk_divider_1/clkin]
  connect_bd_net -net load_1 [get_bd_ports load] [get_bd_pins xup_or2_0/a]
  connect_bd_net -net p1_1 [get_bd_ports p1] [get_bd_pins xup_dff_5/d]
  connect_bd_net -net p2_1 [get_bd_ports p2] [get_bd_pins xup_dff_8/d]
  connect_bd_net -net p3_1 [get_bd_ports p3] [get_bd_pins xup_dff_11/d]
  connect_bd_net -net pw_1 [get_bd_ports pw] [get_bd_pins xup_and2_3/a] [get_bd_pins xup_inv_4/a]
  connect_bd_net -net seg7display_0_a_to_g [get_bd_ports seg] [get_bd_pins seg7display_0/a_to_g]
  connect_bd_net -net seg7display_0_an_l [get_bd_ports an] [get_bd_pins seg7display_0/an_l]
  connect_bd_net -net seg7display_0_dp_l [get_bd_ports dp] [get_bd_pins seg7display_0/dp_l]
  connect_bd_net -net tz_1 [get_bd_ports tz] [get_bd_pins xup_and2_9/b] [get_bd_pins xup_inv_6/a]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins seg7display_0/x_l] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins xlconstant_0/dout] [get_bd_pins xup_2_to_1_mux_0/a]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins xlconstant_1/dout] [get_bd_pins xup_2_to_1_mux_0/b]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins seg7display_0/reset] [get_bd_pins xlconcat_0/In0] [get_bd_pins xlconcat_0/In1] [get_bd_pins xlconcat_0/In5] [get_bd_pins xlconcat_0/In8] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins xlconcat_0/In2] [get_bd_pins xlconcat_0/In3] [get_bd_pins xlconcat_0/In4] [get_bd_pins xlconcat_0/In6] [get_bd_pins xlconcat_0/In7] [get_bd_pins xlconcat_0/In9] [get_bd_pins xlconcat_0/In10] [get_bd_pins xlconcat_0/In11] [get_bd_pins xlconcat_0/In12] [get_bd_pins xlconcat_0/In13] [get_bd_pins xlconcat_0/In14] [get_bd_pins xlconcat_0/In15] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xup_2_to_1_mux_0_y [get_bd_pins xup_2_to_1_mux_0/y] [get_bd_pins xup_2_to_1_mux_1/a]
  connect_bd_net -net xup_2_to_1_mux_1_y [get_bd_ports StatusLed] [get_bd_pins xup_2_to_1_mux_1/y]
  connect_bd_net -net xup_and2_0_y [get_bd_pins xup_and2_0/y] [get_bd_pins xup_or2_1/a]
  connect_bd_net -net xup_and2_10_y [get_bd_pins xup_and2_10/y] [get_bd_pins xup_or2_7/a]
  connect_bd_net -net xup_and2_11_y [get_bd_pins xup_and2_11/y] [get_bd_pins xup_or2_7/b]
  connect_bd_net -net xup_and2_1_y [get_bd_pins xup_and2_1/y] [get_bd_pins xup_or2_1/b]
  connect_bd_net -net xup_and2_2_y [get_bd_pins xup_and2_2/y] [get_bd_pins xup_or2_2/a]
  connect_bd_net -net xup_and2_3_y [get_bd_pins xup_and2_3/y] [get_bd_pins xup_or2_2/b]
  connect_bd_net -net xup_and2_4_y [get_bd_pins xup_and2_4/y] [get_bd_pins xup_or5_0/c]
  connect_bd_net -net xup_and2_5_y [get_bd_pins xup_and2_5/y] [get_bd_pins xup_or5_0/e]
  connect_bd_net -net xup_and2_6_y [get_bd_pins xup_and2_6/y] [get_bd_pins xup_or2_3/a]
  connect_bd_net -net xup_and2_7_y [get_bd_pins xup_and2_7/y] [get_bd_pins xup_or2_4/a]
  connect_bd_net -net xup_and2_8_y [get_bd_pins xup_and2_8/y] [get_bd_pins xup_or2_5/a]
  connect_bd_net -net xup_and2_9_y [get_bd_pins xup_and2_9/y] [get_bd_pins xup_or2_6/b]
  connect_bd_net -net xup_and3_0_y [get_bd_pins xup_and3_0/y] [get_bd_pins xup_or5_0/a]
  connect_bd_net -net xup_and3_1_y [get_bd_pins xup_and3_1/y] [get_bd_pins xup_or2_4/b]
  connect_bd_net -net xup_and3_2_y [get_bd_pins xup_and3_2/y] [get_bd_pins xup_or2_3/b]
  connect_bd_net -net xup_and3_3_y [get_bd_pins xup_and2_1/b] [get_bd_pins xup_and2_7/b] [get_bd_pins xup_and3_3/y] [get_bd_pins xup_inv_0/a]
  connect_bd_net -net xup_and3_4_y [get_bd_pins xup_and2_6/b] [get_bd_pins xup_and3_4/y] [get_bd_pins xup_inv_1/a]
  connect_bd_net -net xup_and3_5_y [get_bd_pins xup_and2_8/a] [get_bd_pins xup_and3_5/y] [get_bd_pins xup_inv_2/a]
  connect_bd_net -net xup_and5_0_y [get_bd_pins xup_and5_0/y] [get_bd_pins xup_or2_5/b]
  connect_bd_net -net xup_clk_divider_0_clkout [get_bd_pins xup_2_to_1_mux_1/b] [get_bd_pins xup_clk_divider_0/clkout] [get_bd_pins xup_dff_0/clk] [get_bd_pins xup_dff_1/clk] [get_bd_pins xup_dff_2/clk] [get_bd_pins xup_dff_3/clk] [get_bd_pins xup_dff_4/clk]
  connect_bd_net -net xup_clk_divider_1_clkout [get_bd_pins xup_clk_divider_1/clkout] [get_bd_pins xup_dff_10/clk] [get_bd_pins xup_dff_11/clk] [get_bd_pins xup_dff_12/clk] [get_bd_pins xup_dff_13/clk] [get_bd_pins xup_dff_5/clk] [get_bd_pins xup_dff_6/clk] [get_bd_pins xup_dff_7/clk] [get_bd_pins xup_dff_8/clk] [get_bd_pins xup_dff_9/clk]
  connect_bd_net -net xup_dff_0_q [get_bd_ports o0] [get_bd_pins xup_2_to_1_mux_1/sel] [get_bd_pins xup_and2_6/a] [get_bd_pins xup_and2_7/a] [get_bd_pins xup_and3_0/a] [get_bd_pins xup_dff_0/q]
  connect_bd_net -net xup_dff_10_q [get_bd_pins xup_and3_4/c] [get_bd_pins xup_dff_10/q]
  connect_bd_net -net xup_dff_11_q [get_bd_pins xup_and3_5/a] [get_bd_pins xup_dff_11/q] [get_bd_pins xup_dff_12/d]
  connect_bd_net -net xup_dff_12_q [get_bd_pins xup_and3_5/b] [get_bd_pins xup_dff_12/q] [get_bd_pins xup_dff_13/d]
  connect_bd_net -net xup_dff_13_q [get_bd_pins xup_and3_5/c] [get_bd_pins xup_dff_13/q]
  connect_bd_net -net xup_dff_1_q [get_bd_ports o1] [get_bd_pins xup_2_to_1_mux_0/sel] [get_bd_pins xup_and2_0/a] [get_bd_pins xup_and2_1/a] [get_bd_pins xup_and3_1/a] [get_bd_pins xup_dff_1/q]
  connect_bd_net -net xup_dff_2_q [get_bd_ports o2] [get_bd_pins xup_and2_4/b] [get_bd_pins xup_and2_8/b] [get_bd_pins xup_and3_2/c] [get_bd_pins xup_dff_2/q]
  connect_bd_net -net xup_dff_3_q [get_bd_ports o3] [get_bd_pins xup_and2_10/a] [get_bd_pins xup_and2_2/b] [get_bd_pins xup_and2_3/b] [get_bd_pins xup_and5_0/a] [get_bd_pins xup_dff_3/q]
  connect_bd_net -net xup_dff_4_q [get_bd_ports o4] [get_bd_pins xup_and2_11/b] [get_bd_pins xup_and2_5/b] [get_bd_pins xup_dff_4/q]
  connect_bd_net -net xup_dff_5_q [get_bd_pins xup_and3_3/a] [get_bd_pins xup_dff_5/q] [get_bd_pins xup_dff_6/d]
  connect_bd_net -net xup_dff_6_q [get_bd_pins xup_and3_3/b] [get_bd_pins xup_dff_6/q] [get_bd_pins xup_dff_7/d]
  connect_bd_net -net xup_dff_7_q [get_bd_pins xup_and3_3/c] [get_bd_pins xup_dff_7/q]
  connect_bd_net -net xup_dff_8_q [get_bd_pins xup_and3_4/a] [get_bd_pins xup_dff_8/q] [get_bd_pins xup_dff_9/d]
  connect_bd_net -net xup_dff_9_q [get_bd_pins xup_and3_4/b] [get_bd_pins xup_dff_10/d] [get_bd_pins xup_dff_9/q]
  connect_bd_net -net xup_inv_0_y [get_bd_pins xup_and3_0/b] [get_bd_pins xup_and3_1/c] [get_bd_pins xup_inv_0/y]
  connect_bd_net -net xup_inv_1_y [get_bd_pins xup_and3_0/c] [get_bd_pins xup_inv_1/y]
  connect_bd_net -net xup_inv_2_y [get_bd_pins xup_and3_2/b] [get_bd_pins xup_inv_2/y]
  connect_bd_net -net xup_inv_3_y [get_bd_pins xup_and2_11/a] [get_bd_pins xup_and3_1/b] [get_bd_pins xup_and3_2/a] [get_bd_pins xup_and5_0/c] [get_bd_pins xup_inv_3/y]
  connect_bd_net -net xup_inv_4_y [get_bd_pins xup_and2_9/a] [get_bd_pins xup_and5_0/e] [get_bd_pins xup_inv_4/y]
  connect_bd_net -net xup_inv_5_y [get_bd_pins xup_and5_0/d] [get_bd_pins xup_inv_5/y]
  connect_bd_net -net xup_inv_6_y [get_bd_pins xup_and5_0/b] [get_bd_pins xup_inv_6/y]
  connect_bd_net -net xup_or2_0_y [get_bd_pins xup_dff_0/d] [get_bd_pins xup_or2_0/y]
  connect_bd_net -net xup_or2_1_y [get_bd_pins xup_or2_1/y] [get_bd_pins xup_or5_0/b]
  connect_bd_net -net xup_or2_2_y [get_bd_pins xup_or2_2/y] [get_bd_pins xup_or5_0/d]
  connect_bd_net -net xup_or2_3_y [get_bd_pins xup_dff_2/d] [get_bd_pins xup_or2_3/y]
  connect_bd_net -net xup_or2_4_y [get_bd_pins xup_dff_1/d] [get_bd_pins xup_or2_4/y]
  connect_bd_net -net xup_or2_5_y [get_bd_pins xup_dff_3/d] [get_bd_pins xup_or2_5/y]
  connect_bd_net -net xup_or2_6_y [get_bd_pins xup_and2_10/b] [get_bd_pins xup_or2_6/y]
  connect_bd_net -net xup_or2_7_y [get_bd_pins xup_dff_4/d] [get_bd_pins xup_or2_7/y]
  connect_bd_net -net xup_or5_0_y [get_bd_pins xup_or2_0/b] [get_bd_pins xup_or5_0/y]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


