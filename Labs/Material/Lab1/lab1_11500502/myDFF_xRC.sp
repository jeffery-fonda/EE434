* File: myDFF_xRC.sp
* Created: Tue Apr 24 22:48:39 2018
* Program "Calibre xRC"
* Version "v2014.4_39.29"
* 
.include "myDFF_xRC.sp.pex"
.subckt myCir  D NCK CK VSS VDD Q NQ
* 
* NQ	NQ
* Q	Q
* VDD	VDD
* VSS	VSS
* CK	CK
* NCK	NCK
* D	D
mn3 N_C1_mn3_d N_CK_mn3_g N_C3_mn3_s N_VSS_mn3_b NMOS_HP L=5e-08 W=2.11e-07
+ AD=2.6586e-14 AS=2.8063e-14 PD=6.74e-07 PS=6.88e-07
mn1 N_C1_mn1_d N_NCK_mn1_g N_D_mn1_s N_VSS_mn3_b NMOS_HP L=5e-08 W=2.08e-07
+ AD=2.9744e-14 AS=2.4128e-14 PD=7.02e-07 PS=6.48e-07
mn4 N_C3_mn4_d N_C2_mn4_g N_VSS_mn4_s N_VSS_mn3_b NMOS_HP L=5e-08 W=2.08e-07
+ AD=3.12e-14 AS=7.4256e-14 PD=7.16e-07 PS=1.13e-06
mn2 N_C2_mn2_d N_C1_mn2_g N_VSS_mn4_s N_VSS_mn3_b NMOS_HP L=5e-08 W=2.08e-07
+ AD=2.496e-14 AS=7.4256e-14 PD=6.56e-07 PS=1.13e-06
mn7 N_C5_mn7_d N_NCK_mn7_g N_NQ_mn7_s N_VSS_mn3_b NMOS_HP L=5e-08 W=2.04e-07
+ AD=2.7336e-14 AS=2.55e-14 PD=6.76e-07 PS=6.58e-07
mn5 N_C5_mn5_d N_CK_mn5_g N_C2_mn5_s N_VSS_mn3_b NMOS_HP L=5e-08 W=2.04e-07
+ AD=2.7744e-14 AS=2.5092e-14 PD=6.8e-07 PS=6.54e-07
mn8 N_NQ_mn8_d N_Q_mn8_g N_VSS_mn8_s N_VSS_mn3_b NMOS_HP L=5e-08 W=2.08e-07
+ AD=2.5168e-14 AS=7.3424e-14 PD=6.58e-07 PS=1.122e-06
mn6 N_Q_mn6_d N_C5_mn6_g N_VSS_mn8_s N_VSS_mn3_b NMOS_HP L=5e-08 W=2.08e-07
+ AD=2.6624e-14 AS=7.3424e-14 PD=6.72e-07 PS=1.122e-06
mp3 N_C1_mp3_d N_NCK_mp3_g N_C3_mp3_s N_VDD_mp3_b PMOS_HP L=5e-08 W=2.99e-07
+ AD=3.8571e-14 AS=3.8571e-14 PD=8.56e-07 PS=8.56e-07
mp1 N_C1_mp1_d N_CK_mp1_g N_D_mp1_s N_VDD_mp3_b PMOS_HP L=5e-08 W=2.97e-07
+ AD=3.7422e-14 AS=3.5046e-14 PD=8.46e-07 PS=8.3e-07
mp2 N_C2_mp2_d N_C1_mp2_g N_VDD_mp2_s N_VDD_mp3_b PMOS_HP L=5e-08 W=2.94e-07
+ AD=3.5574e-14 AS=5.584e-14 PD=8.3e-07 PS=9.68e-07
mp4 N_C3_mp4_d N_C2_mp4_g N_VDD_mp2_s N_VDD_mp3_b PMOS_HP L=5.2e-08 W=2.96e-07
+ AD=3.7044e-14 AS=5.584e-14 PD=8.4e-07 PS=9.68e-07
mp7 N_C5_mp7_d N_CK_mp7_g N_NQ_mp7_s N_VDD_mp3_b PMOS_HP L=5e-08 W=2.94e-07
+ AD=4.2924e-14 AS=4.5864e-14 PD=8.8e-07 PS=9e-07
mp5 N_C5_mp5_d N_NCK_mp5_g N_C2_mp5_s N_VDD_mp3_b PMOS_HP L=5e-08 W=2.99e-07
+ AD=3.6478e-14 AS=3.5581e-14 PD=8.42e-07 PS=8.36e-07
mp6 N_Q_mp6_d N_C5_mp6_g N_VDD_mp6_s N_VDD_mp3_b PMOS_HP L=5e-08 W=2.97e-07
+ AD=4.3065e-14 AS=8.5239e-14 PD=8.84e-07 PS=1.168e-06
mp8 N_NQ_mp8_d N_Q_mp8_g N_VDD_mp6_s N_VDD_mp3_b PMOS_HP L=5e-08 W=2.97e-07
+ AD=4.9005e-14 AS=8.5239e-14 PD=9.24e-07 PS=1.168e-06
*
.include "myDFF_xRC.sp.DFF.pxi"
*
.ends
*
*
