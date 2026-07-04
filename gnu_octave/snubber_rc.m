clear 'all';
Fsw = 100e3;
Tring = 133e-9;
Fring = 1 / Tring; %5e6;
Coss = 151e-12;
Lleakage = 6.5e-6;
Rsnub = sqrt(Lleakage/Coss);
Ploss = 0.05;
Csnub_min = 3 / (Lleakage * (2*pi*Fring)^2);

printf('Fring = %f MHz\n', Fring / 1e6);
printf('Rsn = %d ohm\n', Rsnub);
printf('Csn = %d pF\n', Csnub_min*1e12);
