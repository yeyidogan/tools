I_LED = 0.05;
I_ripple = I_LED / 3;
R_osc = 330e3;
V_out = 6 * 12;
V_in = 210 * sqrt(2);

Rsense = 0.25 / (I_LED + (0.5 * I_ripple));
t_osc = (R_osc/1000 + 22) / 25 / 1e6;
f_osc = 1 / t_osc;
t_off = (1 - V_out / V_in) / f_osc;
R_osc_calc = ((t_off*1e6*25)-22) * 1e3;
V_led = V_out;
%D = 1 / 3;
D = V_led / V_in;
L = (V_in - V_led) * D / ( (0.3 * I_LED) * f_osc );
D
t_on = D / f_osc;
L_min = (V_in - V_led) * t_on / (0.3 * I_LED);