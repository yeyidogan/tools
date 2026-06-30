%PT100
rmin = 18.52;
r0 = 100;
r100 = 138.5;
rmax = 390.48;
Is = 211.7e-6;

Rx = [rmin, r0, r100, 200, rmax];
Rx = Rx * 10; %for PT1000

Vpt = Rx * Is;
Vain = Vpt

Vinaref = 0.6;
gain = 5.0;
Vain_g = Vinaref + (Vain * gain)
