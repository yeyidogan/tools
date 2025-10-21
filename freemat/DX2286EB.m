Vin = 220 * 1.4;

%Vled = 22;
%Iled = 0.04;
Vled = 8.8;
Iled = 0.08;

Vref = 0.6;

nLed = 32;

Rx = Vref / Iled;

Vout = Vin - nLed * Vled

verim = nLed * Vled / Vin

guc = Iled * Vin

