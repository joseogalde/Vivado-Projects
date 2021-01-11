# see demo in https://github.com/Digilent/Arty/blob/master/Projects/XADC_Demo/src/constraints/Arty_Master.xdc

set_property -dict { PACKAGE_PIN L5 IOSTANDARD LVCMOS33 } [get_ports {led}];

set_property -dict { PACKAGE_PIN N11 IOSTANDARD LVCMOS33 } [get_ports {CLK100MHZ}];

# to create a clock frrom constraint file 
create_clock -add -name sys_clk_pin -period 10.00 [get_ports {CLK100MHZ}];
#create_clock -name <clock_name> -period <period> [get_ports <port_name>]
# for more examples go to Tools> Languajes Templates > XDC
