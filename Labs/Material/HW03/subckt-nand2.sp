* The first line is always a comment line.
* Case-insensitive

.subckt myNand2 npA npB npOut npVdd npGnd
mn1 npOut npA n1 npGnd NMOS_HP L=45n W=200n
mn2 n1 npB npGnd npGnd NMOS_HP L=45n W=200n
mp1 npOut npA npVdd npVdd PMOS_HP L=45n W=300n
mp2 npOut npB npVdd npVdd PMOS_HP L=45n W=300n
.ends myNand2

