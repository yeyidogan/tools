f = 100e3;

C = 47e-12;
XC = 1 / (2 * pi * f * C);

printf('XC = %f ohm\n', XC);

L = 1e-6;
XL = 2 * pi * f * L;

printf('XL = %f ohm\n', XL);
