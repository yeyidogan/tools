%Calculate ESR value of capacitor
f = 100e3;
C = 100e-6;
tangent_f = 0.14; %ESR = tan ?/2 * ? * f * C
angle_tangent_f = atand(tangent_f);
half_tangent_f = tan(2*pi*angle_tangent_f/2/360);
ESR = half_tangent_f * pi * f * C;

printf('ESR = %f ohm\n', ESR);
