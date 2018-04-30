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
*311-189

mn1 c1  NCK D    0    NMOS_HP L=45n W=175n
mp1 c1  CK  D    nVdd PMOS_HP L=45n W=100n

mp2 c2  c1  nVdd nVdd PMOS_HP L=45n W=175n
mn2 c2  c1  0    0    NMOS_HP L=45n W=100n

mp3 c1  NCK c3   nVdd PMOS_HP L=45n W=175n
mn3 c1  CK  c3   0    NMOS_HP L=45n W=100n

mp4 c3  c2  nVdd nVdd PMOS_HP L=45n W=175n
mn4 c3  c2  0    0    NMOS_HP L=45n W=100n


mp5 c5  NCK c2   nVdd PMOS_HP L=45n W=175n
mn5 c5  CK  c2   0    NMOS_HP L=45n W=100n

mp6 Q   c5  nVdd nVdd PMOS_HP L=45n W=680n
mn6 Q   c5  0    0    NMOS_HP L=45n W=400n

mp7 c5  CK  NQ   nVdd PMOS_HP L=45n W=175n
mn7 c5  NCK NQ   0    NMOS_HP L=45n W=100n

mp8 NQ  Q   nVdd nVdd PMOS_HP L=45n W=680n
mn8 NQ  Q   0    0    NMOS_HP L=45n W=400n

*** Output load capacitance. Capacitors should begin with "c".
* Format: <capacitor name> <node 1> <node 2> <value>
cQ Q 0 10f

* Power supply
* Format: <power supply name> <node 1> <node 2> <value>
*** Voltage source names should begin with "v".
VVdd nVdd 0 Vsup

* Input signal (independent voltage source)
* Format: <signal name> <node 1> <node 2> <signal>
* For the signal, we use a piecewise linear (PWL) source. Format: ... PWL time1 value1 time2 value2 ...
*Vsrc nIn 0 PWL 0p 0 200p 0 210p Vsup 1n Vsup 1.01n 0 2n 0

VCK  CK  0 Pulse (0    Vsup 1n 10p 10p 1n 2n)
VNCK NCK 0 Pulse (Vsup 0    1n 10p 10p 1n 2n)
VD   D    0 PWL 0p 0 2n   0 2.01n Vsup 4n Vsup 4.01n 0 6n 0 6.01n Vsup
*Vsrc nIn 0 PWL 0p 0 200p 0 210p  Vsup 1n Vsup 1.01n 0 2n 0

* Transient analysis. Simulate up to 2.5ns.
.tran 1p 7n

.end
