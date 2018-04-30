* The first line is always a comment line.
* Case-insensitive

* Control
.option post INGOLD=2

* Include the following file to load transistor models.
.include './45nm_PTM_HP_v2.1.pm'

* Parameters
* Supply voltage
.param Vsup = 1.0V

* pFET Pass Transistor. use NMOS_HP and PMOS_HP for NMOS and PMOS transistors.

*** Transistor names should begin with "m".
*** Use "nXXXXX" for node names.
*** Use 0 for the ground.
* Format: <transistor name> <drain> <gate> <source> <body> <type> L(Length) W(Width)
mn1 n2 n1 0 0 NMOS_HP L=45n W=50n
mp1 nA 0 n1 nVdd PMOS_HP L=45n W=75n
mp2 n2 n1 nVdd nVdd PMOS_HP L=45n W=75n

*** Output load capacitance. Capacitors should begin with "c".
* Format: <capacitor name> <node 1> <node 2> <value>
cout n2 0 10f
c1 n1 0 2f

* Power supply
* Format: <power supply name> <node 1> <node 2> <value>
*** Voltage source names should begin with "v".
VVdd nVdd 0 Vsup

* Input signal (independent voltage source)
* Format: <signal name> <node 1> <node 2> <signal>
* For the signal, we use a piecewise linear (PWL) source. Format: ... PWL time1 value1 time2 value2 ...
VA nA 0 PWL 0p Vsup 500p Vsup 510p 0 4n 0 4.01n Vsup 5n Vsup 

* Transient analysis. Simulate up to 2.5ns.
.tran 1p 5n

.end
