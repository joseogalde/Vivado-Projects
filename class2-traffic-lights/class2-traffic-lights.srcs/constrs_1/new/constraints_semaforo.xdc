
# see demo in https://github.com/Digilent/Arty/blob/master/Projects/XADC_Demo/src/constraints/Arty_Master.xdc

#Avnet 7A50 board has the user leds unsorted. The physical order of the user leds is the following
# D11 - user_led1 - L5
# D12 - user_led2 - L4
# D13 - user_led3 - M4
# D16 - user_led6 - N3
# D17 - user_led7 - N2
# D14 - user_led4 - M2
# D18 - user_led8 - N1 
# D15 - user_led5 - M1
set_property -dict { PACKAGE_PIN L5 IOSTANDARD LVCMOS33 } [get_ports {tv_u}]; #user_led1
set_property -dict { PACKAGE_PIN L4 IOSTANDARD LVCMOS33 } [get_ports {ta_u}]; #user_led2
set_property -dict { PACKAGE_PIN M4 IOSTANDARD LVCMOS33 } [get_ports {tr_u}]; #user_led3
set_property -dict { PACKAGE_PIN N3 IOSTANDARD LVCMOS33 } [get_ports {tv_p}]; #user_led6
set_property -dict { PACKAGE_PIN N2 IOSTANDARD LVCMOS33 } [get_ports {ta_p}]; #user_led7
set_property -dict { PACKAGE_PIN M2 IOSTANDARD LVCMOS33 } [get_ports {tr_p}]; #user_led4
#set_property -dict { PACKAGE_PIN M1 IOSTANDARD LVCMOS33 } [get_ports {user_led5}]; #user_led5
#set_property -dict { PACKAGE_PIN N1 IOSTANDARD LVCMOS33 } [get_ports {user_led8}]; #user_led8

set_property -dict { PACKAGE_PIN N4 IOSTANDARD LVCMOS33 } [get_ports {tu}]; #SW1
set_property -dict { PACKAGE_PIN R2 IOSTANDARD LVCMOS33 } [get_ports {tp}]; #SW2
#set_property -dict { PACKAGE_PIN R1 IOSTANDARD LVCMOS33 } [get_ports {PB3}]; #SW3
#set_property -dict { PACKAGE_PIN R3 IOSTANDARD LVCMOS33 } [get_ports {PB4}]; #SW4


set_property -dict { PACKAGE_PIN N11 IOSTANDARD LVCMOS33 } [get_ports {myclk}];
create_clock -add -name sys_clk_pin -period 10.00 [get_ports {myclk}];
