###################################################################

# Created by write_sdc on Mon Mar  9 14:03:55 2015

###################################################################
set sdc_version 1.8

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
create_clock [get_ports g_inClk]  -name myCLK  -period 6.4  -waveform {0 3.2}
