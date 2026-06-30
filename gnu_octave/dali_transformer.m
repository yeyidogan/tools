clear 'all';
clc;

u0 = 4*pi*1e-7; %permeability of free space
Imax = 0.68;
Lset = 600e-6;
Bsat = 0.3; %Tesla


%calculate_core(Ae,Ie,ue_gapped,AL_ungapped,Imax,Lset,Bsat,Core,Gap)
%EF16 parameters gapped 1.0mm
calculate_core(20.1e-6,37.6e-3,70,1600,Imax,Lset,Bsat,'EF16','Gap=0.5mm')


Pin = 13.5;
T = 1e-5;
Ldali = 600e-6;
Vin_min = 108;
fsw = 100e3;

DT = sqrt ( (2*Pin*Ldali) / T) / Vin_min

Iin_peak = sqrt( 2*Pin / (Ldali * fsw))
