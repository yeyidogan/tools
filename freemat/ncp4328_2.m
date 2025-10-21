Vout = 30;
Vref = 1.25;
RU = 33e3;
RL = 1437;
gmv = 1;
gmc = 3;
CTR = 1;
L = 1e-6;
Cout_1 = 2*270e-6;
Cout_2 = 270e-6;
Rpullup = 18e3;
Cx = 4.7e-9;
Rx = 11e3;
Cy = 1e-9;

Ibias = (Vout - Vref) / RU;

f_LC = 1 / (2*pi*sqrt(L * Cout_2));
printf('LC cut-off frequency = %.0f Hz\n', f_LC);
f_C = f_LC / 3;


fz = 1 / (2*pi*Cx*Rx);
printf('fz = %.1f kHz\n', fz/1000);

fp = (Cx + Cy) / (2*pi*Rx*Cx*Cy);
printf('fp = %.1f kHz\n', fp/1000);