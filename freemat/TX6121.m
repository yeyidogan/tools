Vin = 48;
VLED = 9;
TD = 61e-9;
C1 = 1e-120;
R2 = 0.07;
L = 3.3e-6;

TOFF = 0.51*150e3*(C1+8e-12)+TD
ILED = 0.25/R2 - VLED*TOFF/(2*L)
Lmin = 4*VLED*TOFF*R2
Fs = (Vin-VLED)/(Vin*TOFF)
R1 = (Vin-5)