printf('AD4190-4 Calculations\r\n');
printf('Sinc5 + AVG\r\n');
filter_fs = floor(240 / 4) * 4; %hex2dec('0xFF');
fclk = 8e6;
Avg = filter_fs / 4;
fadc = fclk / (128 * Avg);
printf('Sample rate: %d\r\n', fadc);
printf('Post 16 sample rate: %d\r\n', fadc / 16);