clear;
Vin_rms = 190;
Vpeak = Vin_rms*sqrt(2);
Vbrownout_rms = 60;

Cin = 80e-6;
Eff = 0.85;
Pout = 30*0.64*1.1;
Pin = Pout / Eff;

n = 15; %number of period
T = 10; %10 msec
step = 100;
t = [0:T/step:n*T];
wave = abs(Vpeak*sin(t*pi/T));
for (i=1:size(t,2))
    if i > step*4;
        wave(i) = 0;
    end
end
plot(t, wave);
xlabel('time (ms)');
ylabel('amplitude (V)');
title('Discharge graph');
hold on

%Vdis_T = sqrt(Vpeak^2 - (2 * Pin* (T / 1000) / Cin));
Vdis = sqrt(Vpeak^2 - (2 * Pin* (t / 1000) / Cin));

Vx(1) = 0;
for (i=2:size(t,2))
    Vx(i) = sqrt(Vx(i-1)^2 - 2*Pin*1e-4/Cin);
   if Vx(i) < wave(i)
       Vx(i) = wave(i);
   end
end

plot(t, Vx,'LineWidth',2, 'Color', [0.7 0.1 0.1]);


%plot(t, Vdis);

V_brownout = Vbrownout_rms * sqrt(2) * ones(size(t));

plot(t, V_brownout);

hold off
