%https://www.ti.com/lit/ml/slva662/slva662.pdf?ts=1679835432664&ref_url=https%253A%252F%252Fwww.google.it%252F
Vout = 30;
Vref = 1.25;
RU = 33e3;
RD = 1437;
gmv = 1;
gmc = 3;
CTR = 1;
L = 1e-6;
Cout_1 = 2*270e-6;
Cout_2 = 270e-6;
Rpullup = 15e3;

Ibias = (Vout - Vref) / RU;

%Companzasyon
R1 = 33e3;
C1 = 33e-9;

R2 = 3.3e3;
C2 = 47e-9;

Cfb = 2.2e-9;

G0 = RD*gmc*R1*C1 / ((RU+RD)*(C1+Cfb));
printf('G0 = %.0f \n', G0);

fz1 = 1 / (2*pi*R1*C1);
printf('Fz1 = %.0f Hz\n', fz1);

fz2 = 1 / (2*pi*(RU+R2)*C2);
printf('Fz2 = %.0f Hz\n', fz2);

fp1 = (C1+Cfb) / (2*pi*R1*C1*Cfb);
printf('Fp1 = %.1f kHz\n', fp1/1000);

fp2 = 1 / (2*pi*C2*(RD*RU/(RU+RD)+R2));
printf('Fp2 = %.0f Hz\n', fp2);
