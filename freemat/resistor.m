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
Rpot = 5e3;
Rmid = 2.5e3;
Rx = [0:0.5e3:5e3];

Rup = 33e3;
Rdown = 15e3;

for i = 1:11
    Redown = (Rx(i) * (Rup+Rdown)) / (Rx(i) + (Rup+Rdown));
    Vout2 = Vs * Redown / (Rpot - Rx(i) + Redown);
    Vout2 = Vout2 - 150e-19 * (Rup);
    printf('POT Vout = %.2f V\n', Vout2);
    Vout3(i) = Vout2;
end
plot(Vout3);
Vref = [0:1:10];
hold on;
plot(Vref);

mid_val = Vout3(6)
mid_gain = (5 / mid_val / (mid_val - 10));
full_gain = (10 / 10 / (10 - mid_val));

xin = Vout3(8)
Vcal = (xin * mid_gain * (xin - 10)) + (xin * full_gain * (xin - mid_val))

for i = 1:11
    x = Vout3(i);
    Vpcal(i) = (x * mid_gain * (x - 10)) + (x * full_gain * (x - mid_val));
end


x0 = 0;
y0 = 0;
x1 = Vout3(6);
y1 = 5;
x2 = 10;
y2 = 10.01;
%xin = Vout3(6)
yres = y1 * ( (xin-x0)*(xin-x2) ) / ( (x1-x0)*(x1-x2) ) + y2 * ( (xin-x0)*(xin-x1) ) / ( (x2-x0)*(x2-x1) )

hold on;
plot(Vpcal);


hold off;

    