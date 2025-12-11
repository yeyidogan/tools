%VO = VREF (1 + R2 / R1) + IADJ R2 

Vref = 1.25;
Iadj = 100e-6;

R1 = 1e3;
R2 = 6.6e3;

Vout = (Vref * (1 + R2 / R1)) + (Iadj * R2);

printf('Vout = %.1f volt\n', Vout);
