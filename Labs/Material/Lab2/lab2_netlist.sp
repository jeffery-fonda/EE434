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
mn1 c1  R n1S  NMOS_HP L=45n W=100n
mn2 n1S D 0    NMOS_HP L=45n W=100n

mp1 c1 R  nVdd nVdd PMOS_HP L=45n W=250n
mp2 c1 D  nVdd nVdd PMOS_HP L=45n W=250n

mp3 ~D c1 nVdd nVdd PMOS_HP L=45n W=250n
mn3 ~D c1 0    0    NMOS_HP L=45n W=100n

mp4 p4D ~S nVdd nVdd PMOS_HP L=45n W=250n
mp5 c2  ~D  p4D  nVdd PMOS_HP L=45n W=250n
mn4 c2  S  0    0    NMOS_HP L=45n W=100n
mn5 c2  ~D 0    0    NMOS_HP L=45n W=100n

mp6 INPUT c2 nVdd nVdd PMOS_HP L=45n W=250n
mn6 INPUT c2 0    0    NMOS_HP L=45n W=100n

* drain gate source body 
mp7 mp7D INPUT nVdd nVdd PMOS_HP L=45n W=250n
mp8 c3   CLK   mp7D nVdd PMOS_HP L=45n W=250n
mn7 c3   INPUT 0    0    NMOS_HP L=45n W=100n

mp9 c5   CLK   nVdd nVdd PMOS_HP L=45n W=250n
mn8 c5   c3    n8S  0    NMOS_HP L=45n W=100n
mn9 n8S  CLK   0    0    NMOS_HP L=45n W=100n

*drain gate source body
mp13 ~Q   c5  nVdd nVdd PMOS_HP L=45n W=250n
mn13 ~Q   CLK n13S 0    NMOS_HP L=45n W=100n  
mn14 n13S c5  0    0    NMOS_HP L=45n W=100n

mp10 c4 INPUT nVdd  nVdd PMOS_HP L=45n W=250n
mn10 c4 CLK   mn10S 0    NMOS_HP L=45n W=100n 
mn11 mn10S INPUT 0  0    NMOS_HP L=45n W=100n

mp11 mp11D CLK nVdd nVdd PMOS_HP L=45n W=250n
mp12 c6    c4  mp11D nVdd PMOS_HP L=45n W=250n
mn12 c6    CLK 0    0    NMOS_HP L=45n W=100n

mp14 p14D c6 nVdd nVdd PMOS_HP L=45n W=250n
mp15 ~Q   CLK p14D nVdd PMOS_HP L=45n W=250n
mn15 ~Q   c6 0    0    NMOS_HP L=45n W=100n

*drain gate source body
mp16 Q ~Q nVdd nVdd PMOS_HP L=45n W=250n
mn16 Q ~Q 0    0    NMOS_HP L=45n W=100n

*** Output load capacitance. Capacitors should begin with "c".
* Format: <capacitor name> <node 1> <node 2> <value>
cout Q 0 10f

* Power supply
* Format: <power supply name> <node 1> <node 2> <value>
*** Voltage source names should begin with "v".
VVdd nVdd 0 Vsup

* Input signal (independent voltage source)
* Format: <signal name> <node 1> <node 2> <signal>
* For the signal, we use a piecewise linear (PWL) source. Format: ... PWL time1 value1 time2 value2 ...

VD  D   0 PWL 0p 0 250p 0 260p Vsup 1.25n Vsup 1.26n 0 2.25n 0 2.26n Vsup 3.25n Vsup 3.26n 0 
VCK CLK 0 PWL 0p 0 10p Vsup 500p Vsup 510p 0 1n 0 1.01n Vsup 1.5n Vsup 1.51n 0 2n 0 2.01n Vsup 2.5n Vsup 2.51n 0 3n 0 3.01n Vsup 3.5n Vsup 3.51n 0
VS  S   0 PWL 0p 0
VR  R   0 PWL 0p Vsup

* Transient analysis. Simulate up to 2.5ns.
.tran 1p 3n

.end
