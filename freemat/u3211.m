% https://www.lcsc.com/datasheet/C41374705.pdf
% UNI-SEMIC U3211 https://www.lcsc.com/product-detail/C41374705.html
% VISHAY US1M https://www.lcsc.com/product-detail/C81191.html
Rfb1 = 5600;
Rfb2 = 3300;
Vfb = 1.87;
Vd1 = 1; %US1M
Vd2 = 1; %US1M

Vout = Vfb*(1+Rfb1/Rfb2)-Vd2+Vd1;

printf('\nVout = %f V\n', Vout);

Vi = 310;
Vo = 5;
Io = 1;
D = Vo / Vi;
fsw = 65e3;
DI = (Vi - Vo)
DeltaI = Io / 2;

L = (Vi - Vo) * D / (fsw * DeltaI);
printf('\nL = %.0f uH\n', L * 1e6);

Ipeak = Io + DeltaI;
printf('\nI peak = %.0f A\n', Ipeak);