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

Ibias = (Vout - Vref) / RU;

f_LC = 1 / (2*pi*sqrt(L * Cout_2));
printf('LC cut-off frequency = %.0f Hz\n', f_LC);
f_C = f_LC / 3;

G_fc = -20;
pm = 76;
pfc = -76;
G_0 = 10^(-G_fc/20);
boost = pm - pfc - 90;
k = tan((boost/2 + 45)*pi/180);

f_Z = f_C / k;
f_P = f_C * k;
printf('fz cut-off frequency = %.0f Hz\n', f_Z);
printf('fc cut-off frequency = %.0f Hz\n', f_C);
printf('fp cut-off frequency = %.0f Hz\n', f_P);

C_pole = 1 / (2*pi*f_P*Rpullup);
printf('C pole = %.2f nF\n', C_pole*1e9);

C_i = RL*gmv/(2*pi*f_Z*(RU+RL*RU*gmv));
printf('C i = %.2f nF\n', C_i*1e9);

R_LED=1800;
G0 = (CTR*Rpullup*(RU+RL*RU*gmv)) / ((RL+RU+RL*RU*gmv)*R_LED+RL*RU);
printf('G0 = %.2f, G_0 = %.2f\n', G0, G_0);

R_LED = RU*(CTR*Rpullup-G_0*RL+CTR*RL*Rpullup*gmv)/(G_0*(RL+RU+RL*RU*gmv));
printf('R LED = %.2f ohm\n', R_LED);

dV = 0.32;
dI = 0.6;
Cout = 1*270e-9;

fc = (dI/dV)*(1/(2*pi*Cout));
printf('fc = %.1f kHz\n', fc/1000);
