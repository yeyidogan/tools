Fsw = 100e3;
Lleakage = 3e-6;
Vo = 30;
Vdiode = 1;
n = 3;
k = 2.5; %Vsn should be 2~2.5 times of nVo.
Vsn = k * n *(Vo + Vdiode);
Ipeak = 2.3;

Rsn = Vsn^2 / (0.5 * Lleakage * Ipeak^2 * (Vsn / (Vsn - n*Vo)) * Fsw);
Csn = 4.7e-9;
DeltaVsn = Vsn / (Csn * Rsn * Fsw);
100 * DeltaVsn / Vsn

printf('Rsn = %d ohm\n', Rsn);
printf('Csn = %d nF\n', Csn*1e9);
