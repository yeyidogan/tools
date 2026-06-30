% "deneme"

Lp = 546e-6; %540 microhenry
Np = 53; %Primary winding turns
Ns = 18; %Secondary winding turns
Ls = Lp * Ns^2 / Np^2;
Lm = sqrt(Lp * Ls);

printf('Lp = %d uH\n', Lp*1e6);
printf('Ls = %d uH\n', Ls*1e6);
printf('Lm = %d uH\n', Lm*1e6);
