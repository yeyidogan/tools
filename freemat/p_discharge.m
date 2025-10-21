clear;
Vin_rms = 90;
Vpeak = Vin_rms*sqrt(2);
Vbrownout_rms = 60;

Cin = 100e-6;
Eff = 0.85;
Vout = 30;
Iout_nom = 0.64;
Rmin = Vout / Iout_nom * 0.9;
Iout = Vout / Rmin;
Pout = 30*Iout;
Pin = Pout / Eff;

T = 10; %10 msec
step = 100;
t = [0:T/step:T];
wave = abs(Vpeak*cos(t*pi/T));
plot(t, wave);
xlabel('time (ms)');
ylabel('amplitude (V)');
title('Discharge graph');
hold on

Vdis_T = sqrt(Vpeak^2 - (2 * Pin* (T / 1000) / Cin));
Vdis = sqrt(Vpeak^2 - (2 * Pin* (t / 1000) / Cin));
for (i=1:size(t,2))
    if (Vdis(i) > wave(i))
        Vdis_selmax(i) = Vdis(i);
    else
        Vdis_selmax(i) = wave(i);
    end
end

printf('I out = %.2f A\n', Iout);
printf('V max of ripple = %.1f V\n', Vpeak);
printf('V min of ripple = %.1f V\n', min(Vdis_selmax));
printf('V p-p of ripple = %.1f V\n', Vpeak - min(Vdis_selmax));

plot(t, Vdis_selmax,'LineWidth',2, 'Color', [0.7 0.1 0.1]);

hold off
