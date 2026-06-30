clear 'all';
clc;

Ton = 3e-6;
Toff = 7e-6;
f = 1 / (Ton + Toff);
Vin = 110*sqrt(2);
Rcs = 0.825;
Vcs = 0.7;
Id = Vcs / Rcs;

L = Vin * Ton / Id;

printf('\nL = %f uH\n', L * 1e6);

Vout = 30;
Rload = 50;
Iout = Vout / Rload;
Pout = Vout * Iout;
Eff = 0.91;
Pin = Pout / Eff;
Ip = 2 * Pin / (Vin * Ton * f);

printf('Id = %.0f mA\n', Id * 1e3);
printf('Ip = %.0f mA\n\n', Ip * 1e3);




u0 = 4*pi*1e-7; %permeability of free space
Imax = 1;
Lset = 1.2e-3;
Bsat = 0.3; %Tesla


%EF25 parameters gapped 1.0mm
printf('EF25 ****************************\n');
Np = 115;
Ae = 52.5e-6; %mm2
Ie = 57.5e-3; %mm
ue = 79; %permeability
%AL = 91;

L = u0*ue*Np^2*Ae/Ie;
Lx = Np*Bsat*Ae/Imax;
printf('L = %.2f mH\n', L*1000);
printf('Lx = %.2f mH\n', Lx*1000);
%G = 0.4*pi*Ae*(Np^2/(L*1e9) - 1/AL);
%printf('G2 = %f mm\n', G);
printf('Np = %d turn\n', Np);

Nmin = Lset*Imax/(Bsat * Ae);
printf('Nmin = %d turn\n\n', Nmin);

AL = 1950; %ungapped
G = 0.4*pi*Ae*1e6*(Np^2/(Lx*1e9) - 1/AL);
printf('G = %.2f mm\n', G);


