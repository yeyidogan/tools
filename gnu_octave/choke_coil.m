clear 'all';
clc;

u0 = 4*pi*1e-7; %permeability of free space
Imax = 1;
Lset = 1.2e-3;
Bsat = 0.3/2; %Tesla


%calculate_core(Ae,Ie,ue_gapped,AL_ungapped,Imax,Lset,Bsat,Core,Gap)
%EF20 parameters gapped 1.0mm
calculate_core(32.0e-6,46.0e-3,70,1600,Imax,Lset,Bsat,'EF20','Gap=1.0mm')


%EF25 parameters gapped 1.0mm
calculate_core(52.5e-6,57.5e-3,79,1800,Imax,Lset,Bsat,'EF25','Gap=1.0mm')


%EF30 parameters gapped 1.0mm
calculate_core(60.0e-6,67.0e-3,80,2050,Imax,Lset,Bsat,'EF30','Gap=1.0mm')


%EFD30 parameters gapped 0.71mm
calculate_core(69.0e-6,68.0e-3,125,2050,Imax,Lset,Bsat,'EFD30','Gap=0.71')

