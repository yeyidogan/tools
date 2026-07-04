r_enj = 105 / 2; %mm
stroke = 132; %mm
pump_p_per_minute = 41;
r_rod_enj = 40 / 2;

A = pi * r_enj * r_enj;
V1_enj = A * stroke;

V1 = V1_enj * pump_p_per_minute
V2 = V1 - (pi * (r_rod_enj ^ 2) * stroke);

disp (sprintf ('%d mm3/dk', V1));
disp (sprintf ('%d cm3/dk', V1/1000));
disp (sprintf ('%d litre/dk (enjektorun tek yonde bastigi durumda)', V1/1e6));
disp (sprintf ('%d litre/dk (enjektorun her yonde bastigi durumda)', 2*V1/1e6));

r_piston = 80 / 2;
r_rod_piston = 40 / 2;
A1_piston = pi * r_piston ^ 2;
V1_piston = A1_piston * stroke;
V2_piston = V1_piston - (pi * (r_rod_piston ^ 2) * stroke);
G1_piston = V1_piston * pump_p_per_minute;
G2_piston = V2_piston * pump_p_per_minute;

disp (sprintf ('G1 piston %d mm3/dk', G1_piston));
disp (sprintf ('G2 piston %d mm3/dk', G2_piston));
disp (sprintf ('G1 piston %d cm3/dk', G1_piston/1000));
disp (sprintf ('G1 + G2 piston %d litre/dk', (G1_piston + G2_piston) / 1e6));

V_pump = 34; %cm3
R_pump = 1470; %devir
G_pump = V_pump * R_pump / 1000