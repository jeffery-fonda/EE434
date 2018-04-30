* The first line is always a comment line.
* Case-insensitive

* Control
.option post INGOLD=2

* Include the following file to load transistor models.
.include './45nm_PTM_HP_v2.1.pm'

* Parameters
* Supply voltage
.param Vsup = 1.0V

* Inverter. use NMOS_HP and PMOS_HP for NMOS and PMOS transistors.

*** Transistor names should begin with "m".
*** Use "nXXXXX" for node names.
*** Use 0 for the ground.
* Format: <transistor name> <drain> <gate> <source> <body> <type> L(Length) W(Width)
mn1 nA nIn 0 0 NMOS_HP L=45n W=100n
mp1 nA nIn nVdd nVdd PMOS_HP L=45n W=150n

mn2 nOut nA 0 0 NMOS_HP L=45n W=100n
mp2 nOut nA nVdd nVdd PMOS_HP L=45n W=150n

*** Output load capacitance. Capacitors should begin with "c".
* Format: <capacitor name> <node 1> <node 2> <value>
cload nOut 0 10f

* Power supply
* Format: <power supply name> <node 1> <node 2> <value>
*** Voltage source names should begin with "v".
VVdd nVdd 0 Vsup

* Input signal (independent voltage source)
* Format: <signal name> <node 1> <node 2> <signal>
* For the signal, we use a piecewise linear (PWL) source. Format: ... PWL time1 value1 time2 value2 ...
Vsrc nIn 0 PWL 0p 0 200p 0 210p Vsup 1n Vsup 1.01n 0 2n 0

* Transient analysis. Simulate up to 2.5ns.
.tran 1p 2.5n

.end
