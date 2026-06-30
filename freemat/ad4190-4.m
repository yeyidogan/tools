printf('AD4190-4 Calculations\r\n');
filter_fs = floor(6208 / 4) * 4; %hex2dec('0x1F4');
fclk = 8e6;
Avg = filter_fs / 4;
fadc = fclk / (128 * Avg);
printf('Sinc5 + AVG sample rate: %d\r\n', fadc);
printf('Post 16 sample rate: %d\r\n', fadc / 16);

vref = 2.5;
gain = 1;
i_src = 50e-6;
adc = 3.133e6;
v_meas = vref * (adc / 2^24) / gain;
R_meas = v_meas / i_src;
printf('Measured R of Ntc: %.1f ohm\r\n', R_meas);

ntc_r25 = 10e3;
B = 3435;
T0 = 298.15;
Tmeas = 1 / ((1/T0) + (1/B)*log(R_meas/ntc_r25));
printf('Measured ntc: %.1f C\r\n', Tmeas-273.15);

