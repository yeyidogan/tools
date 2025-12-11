Vin = 44;
Rup = 22e3;
Rdown = 1.8e3;

I = Vin / (Rup + Rdown);
Prup = I * I * Rup;
Prdown = I * I * Rdown;
Vout = I * Rdown;

printf('Prup = %.3f W  --> %.3f W\n', Prup, Prup*1.3);
printf('Prdown = %.3f W  --> %.3f W\n', Prdown, Prdown*1.3);
printf('Vout = %.2f V\n', Vout);

R1 = 22e3;
R2 = 3e3;
Rpar = R1*R2 / (R1+R2);
printf('Rpar = %.1f ohm\n', Rpar);

Vs = 10;
Rpot = 10e3;
Rmid = 5e3;
Rx = [0:1e3:10e3];

Rup = 1000e3;
Rdown = 330e3;

for i = 1:11
    Redown = (Rx(i) * (Rup+Rdown)) / (Rx(i) + (Rup+Rdown));
    Vout2 = Vs * Redown / (Rpot - Rx(i) + Redown);
    Vout2 = Vout2 - 150e-9 * (Rpot - Redown);
    printf('POT Vout = %.2f V\n', Vout2);
end

    