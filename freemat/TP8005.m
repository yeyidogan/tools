Vin = 24;
Vf = 5.7;
nLED = 3;
nPar = 8; % paralel LED
I_LED = 0.05 * nPar;
Vled = Vf*nLED;

Vcs = 0.1;
Rcs = Vcs / I_LED;

f_osc = 1e6;
D = 0.1;
L = (Vin - Vled) * D / ( (0.3 * I_LED) * f_osc ) * 1e6 % uH
