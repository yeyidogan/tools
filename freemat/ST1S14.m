Vin = 24;
D = 0.5;
Iout = 1;
Vout = 5;
eff = 1; %efficiency
Cout = 100e-6;
Cesr = 75e-3;
fsw = 850e3;
Vfb =  1.22;
Cr1 = 150e-12;%8e-12;

Irms = Iout * sqrt(D - (2*D^2/eff) + (D^2/eff^2));

printf('Irms = %.2f A\n', Irms);

Fz = 1 / (2 * pi * Cesr * Cout);

printf('Fz = %.0f kHz\n', Fz / 1000);

Idelta = 0.8;
Ton= 1 / (2 * fsw);

L = (Vin - Vout) / Idelta * Ton;
printf('L = %.0f uH\n', L * 1e6);

Ipeak = Iout + Idelta / 2;

R1 = 5600;%68e3;
R2 = 3300;%22e3;
Vo_set = Vfb * (1 + R1 / R2);
printf('Vout set = %.1f V\n', Vo_set);

fz = 1 / (2 * pi * R1 * Cr1);
fp = 1 / (2 * pi * (R1*R2 / (R1+R2)) * Cr1);
printf('fz = %.0f kHz\n', fz/1000);
printf('fp = %.0f kHz\n', fp/1000);
