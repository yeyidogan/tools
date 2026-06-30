Rup = 22.05e3;
Rdown = 3.0e3;

Vout = 0.6 / Rdown * (Rdown + Rup);

printf('Vout = %.1f V\n', Vout);

Venl = 1.17;
Venh = 1.28;
Vin_start = 4.3;
Vin_stop = 3.9;
Ienl = 1.04e-6;
Ienh = 4.3e-6;

R1 = (Venl*(Vin_start - Venh) - Venh*(Vin_stop - Venl)) / (Venh*Ienh - Venl*Ienl);
R2 = Venh / (Ienl + (Vin_start-Venh)/R1);
printf('R1 = %.1f kOhm\n', R1 / 1000);
printf('R2 = %.1f kOhm\n', R2 / 1000);

R1_m = 330e3;
R2_m = 330e9;
Vin_start_m = (((Venh / R2_m) - Ienl) * R1_m) + Venh;
printf('Vin_start_m = %.1f V\n', Vin_start_m);