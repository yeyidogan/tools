clear;
clc;
%inputs
stepper_angle = 1.8;
rpm = [100:100:1600];

%Calculations
npulse_of_sec = 360 / stepper_angle;

%req_pulse_duration = (1 / npulse_of_sec) / (rpm/60); %required pulse duration
req_pulse_duration = 60 / (npulse_of_sec * rpm);
printf('Stepper Motor\n');
for (i=1:size(rpm,2))
    printf('%.0f rpm = %.1f us pulse duration\n', rpm(i), req_pulse_duration(i)*1e6);
end
%xRpm = 60 / (req_pulse_duration * npulse_of_sec) %prooving
