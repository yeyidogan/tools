L = 1e-6;
C = 270e-6;
fsw = 100e3;

Fc = 1 / (2*pi*sqrt(L*C));

printf('LC Corner Frequency\n');
printf('Fc = %.1f kHz\n', Fc/1e3);

%https://www.analog.com/en/technical-articles/designing-second-stage-output-filters-for-switching-power-supplies.html
C1 = 100e-6;
C2 = 2*270e-6;
Cs = 1 / (1/C1 + 1/C2);

Fres = (1/(2*pi)) * sqrt((C1 + C2) / (L*C1*C2));
Fres2 = (1/(2*pi * sqrt(L*Cs)));
printf('Fres = %.1f kHz\n', Fres/1e3);
printf('Fres2 = %.1f kHz\n', Fres2/1e3);

w0 = sqrt(2*(C1+C2) / (L*C1*C2));
printf('w0 = %.1f rad/sec\n', w0);
f0 = w0/(2*pi);
printf('f0 = %.1f kHz\n', f0/1000);

%https://www.we-online.com/components/media/o109026v410%20AppNotes_ANP044_ImpactOfTheLayoutComponentsAndFiltersOnTheEMCOfModernDCDCSwitchingControllers_EN.pdf
Cfilter = 1 / ((2*pi*0.1*fsw)^2 * L);
printf('Cfilter = %.0f uF\n', Cfilter*1e6);
Rdamp = sqrt(L/C);
printf('Rdamp (paralle to L) = %.3f ohm\n', Rdamp);

%https://e2e.ti.com/blogs_/b/powerhouse/posts/design-a-second-stage-filter-for-sensitive-applications
printf('https://e2e.ti.com/blogs_/b/powerhouse/posts/design-a-second-stage-filter-for-sensitive-applications\n');
fsw = 50e3;
A1 = 60;
A2 = 40;
Lsec = 65e-6;
XL1 = 2*pi*fsw*Lsec;
printf('XL1 = %.1f ohm\n', XL1);
XC1 = XL1 / (10^(A1/20)-1);
printf('XC1 = %.3f ohm\n', XC1);
C1 = 1 / (2*pi*fsw*XC1);
printf('C1 = %.1f uF\n', C1*1e6);
C2 = 1000e-6;
XC2 = 1 / (2*pi*fsw*C2);
printf('XC2 = %.3f ohm\n', XC2);
XL2 = XC2 * (10^(A2/20)-1);
printf('XL2 = %.2f ohm\n', XL2);
L2 = XL2 / (2*pi*fsw);
printf('L2 = %.2f uH\n', L2*1e6);