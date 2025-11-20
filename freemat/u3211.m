% https://www.lcsc.com/datasheet/C41374705.pdf
% UNI-SEMIC U3211 https://www.lcsc.com/product-detail/C41374705.html
% VISHAY US1M https://www.lcsc.com/product-detail/C81191.html
Rfb1 = 5230;
Rfb2 = 2500;
Vfb = 1.87;
Vd1 = 1; %US1M
Vd2 = 1; %US1M

Vout = Vfb*(1+Rfb1/Rfb2)-Vd2+Vd1;

printf('\nVout = %f V\n', Vout);