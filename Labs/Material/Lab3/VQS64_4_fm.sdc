###################################################################

# Created by write_sdc on Mon Mar  9 16:39:21 2015

###################################################################
set sdc_version 1.8

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
create_clock [get_ports mCLK]  -name myCLK  -period 1  -waveform {0 0.5}
