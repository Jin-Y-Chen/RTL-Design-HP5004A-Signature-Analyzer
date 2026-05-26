## =========================
## Clock
## =========================
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 -name sys_clk [get_ports clk]  ;# 100 MHz

## =========================
## Switch
## =========================
set_property PACKAGE_PIN V17 [get_ports rst_bar]
set_property IOSTANDARD LVCMOS33 [get_ports rst_bar]

set_property PACKAGE_PIN V16 [get_ports starte]
set_property IOSTANDARD LVCMOS33 [get_ports starte]

set_property PACKAGE_PIN W16 [get_ports stope]
set_property IOSTANDARD LVCMOS33 [get_ports stope]

set_property PACKAGE_PIN W17 [get_ports clocke]
set_property IOSTANDARD LVCMOS33 [get_ports clocke]

## =========================
## Pmod signal pin           
## =========================
set_property PACKAGE_PIN J1 [get_ports start]
set_property IOSTANDARD LVCMOS33 [get_ports start]

set_property PACKAGE_PIN L2 [get_ports stop]
set_property IOSTANDARD LVCMOS33 [get_ports stop]

set_property PACKAGE_PIN J2 [get_ports clock]
set_property IOSTANDARD LVCMOS33 [get_ports clock]

set_property PACKAGE_PIN G2 [get_ports data]
set_property IOSTANDARD LVCMOS33 [get_ports data]

## =========================
## 7-Segment Display Segments (a-g)
## segs(6 downto 0)
## =========================
set_property PACKAGE_PIN W7  [get_ports {segs[0]}]
set_property PACKAGE_PIN W6  [get_ports {segs[1]}]
set_property PACKAGE_PIN U8  [get_ports {segs[2]}]
set_property PACKAGE_PIN V8  [get_ports {segs[3]}]
set_property PACKAGE_PIN U5  [get_ports {segs[4]}]
set_property PACKAGE_PIN V5  [get_ports {segs[5]}]
set_property PACKAGE_PIN U7  [get_ports {segs[6]}]

set_property IOSTANDARD LVCMOS33 [get_ports segs[*]]

## =========================
## 7-Segment Digit Enable (anodes)
## digs(3 downto 0)
## =========================
set_property PACKAGE_PIN U2  [get_ports {digs[0]}]
set_property PACKAGE_PIN U4  [get_ports {digs[1]}]
set_property PACKAGE_PIN V4  [get_ports {digs[2]}]
set_property PACKAGE_PIN W4  [get_ports {digs[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports digs[*]]