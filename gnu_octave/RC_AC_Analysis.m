R = 1000;
C = 10e-9;
f = 1000;

XC = 1 / (2 * pi * f * C);

Phase = acos(XC / sqrt(R*R + XC*XC)) * 180 / pi
Phase2 = atan(R / XC) * 180 / pi

Gain = 20 * log10(XC / sqrt(R*R + XC*XC))

Fc = 1 / (2 * pi * R * C)

