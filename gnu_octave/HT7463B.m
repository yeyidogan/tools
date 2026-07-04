Vin = 12;
Vout = 3.30;
Iout = 0.6;
Iripple = Iout * 0.3;
fsw = 550e3;

L = Vout*(Vin-Vout)/(Vin*Iripple*fsw)

R1 = 47e3;
R2 = R1 / ((Vout / 0.794) - 1)