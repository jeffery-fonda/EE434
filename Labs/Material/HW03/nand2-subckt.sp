* The first line is always a comment line.
* Case-insensitive

* Control
.option post INGOLD=2

* Include the following file to load transistor models.
.include './45nm_PTM_HP_v2.1.pm'
* Include the subckt definition.
.include './subckt-nand2.sp'

* Parameters
* Supply voltage
.param Vsup = 1.0V

* Subckt instantiation (see the port mapping. The order should match the order of the
* port definition of the subckt.
X1 nA nB nOut nVdd 0 myNand2

*** Output load capacitance. Capacitors should begin with "c".
* Format: <capacitor name> <node 1> <node 2> <value>
cout nOut 0 10f

* Power supply
* Format: <power supply name> <node 1> <node 2> <value>
*** Voltage source names should begin with "v".
VVdd nVdd 0 Vsup

* Input signal (independent voltage source)
* Format: <signal name> <node 1> <node 2> <signal>
* For the signal, we use a piecewise linear (PWL) source. Format: ... PWL time1 value1 time2 value2 ...
VA nA 0 PWL 0p 0 200p 0 210p Vsup 1n Vsup 1.01n 0 1.8n 0 1.81n Vsup
VB nB 0 PWL 0p 0 400p 0 410p Vsup 800p Vsup 810p 0

* Transient analysis. Simulate up to 2.5ns.
.tran 1p 2.5n

.end
