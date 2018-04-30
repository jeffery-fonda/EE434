* The first line is always a comment line.
* Case-insensitive

.subckt myNor2 npA npB npOut npVdd npGnd
mp1 n1 npA npVdd npVdd PMOS_HP L=45n W=300n
mp2 npOut npB n1 npVdd PMOS_HP L=45n W=300n

mn1 npOut npA npGnd npGnd NMOS_HP L=45n W=50n
mn2 npOut npB npGnd npGnd NMOS_HP L=45n W=50n
.ends myNor2

