m0_size = 4;
m1_size_max = 82;
m2_size = 8;
filter_set = 4;

loadcell_cap = 100e3;
adc_calib_zero = -3284;
adc_gain = loadcell_cap / 2.185e6;

m1_size = 40 + (rem(filter_set, 5) * 10);

if (m1_size >= m1_size_max)
    error('Filter size error');
end

adc_raw = load('500_3.log');

%initials
sum = 0;
for i = 1:m1_size
    sum = sum + adc_raw(i, 1);
end
avg = sum / m1_size;
for i = 1:m0_size
    filt_m0(i, 1) = avg;
end
for i = 1:m1_size
    filt_m1(i, 1) = avg;
    adc_filter(i, 1) = avg;
end
for i = 1:m2_size
    filt_m2(i, 1) = avg;
end

for i = m1_size:length(adc_raw)
    %filter 0
    sum = 0;
    for k = 1:m0_size
        sum = sum + adc_raw(i - k + 1, 1);
    end
    avg0 = sum / m0_size;

    %filter 1
    filt_m1(rem(i, m1_size) + 1, 1) = avg0;
    sum = 0;
    for k = 1:m1_size
        sum = sum + filt_m1(k, 1);
    end
    avg1 = sum / m1_size;

    %filter 2
    filt_m2(rem(i, m2_size) + 1, 1) = avg1;
    sum = 0;
    for k = 1:m2_size
        sum = sum + filt_m2(k, 1);
    end
    avg2 = sum / m2_size;
    adc_filter(i, 1) = avg2;
end

for i = 1:length(adc_raw)
  weight(i, 1) = (adc_filter(i,1) - adc_calib_zero) * adc_gain;
end

plot(adc_raw, 'r');
hold on
plot(adc_filter, 'b');
hold on
plot(weight, 'g');

