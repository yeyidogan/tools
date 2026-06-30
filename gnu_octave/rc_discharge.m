clear;
Vin = 16;

Cin = 22e-6;
I_load = 2e-3;
Pin = Vin * I_load;


n = 20; %number of period
T = 10; %10 msec
step = 100;
t = [0:T/step:n*T];






Vdis = sqrt(Vin^2 - (2 * Pin* (t / 1000) / Cin));

plot(t, Vdis,'LineWidth',2, 'Color', [0.7 0.1 0.1]);
xlabel('time (ms)');
ylabel('amplitude (V)');
title('Discharge graph');

hold on

V_lim = 15 * ones(size(t));

plot(t, V_lim);

hold off
