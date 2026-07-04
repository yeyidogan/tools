clear 'all';
% https://www.allaboutcircuits.com/tools/coil-inductance-calculator/

u0 = 4*pi*1e-7; %permeability of free space
ur = 1; %relative permeability
ue = 91;
N = 102; %number of turns
Ae = 69e-6; %coil area m2
length = 36e-3 * N;
P = 68e-3; %Flux path m

%Lcoil = ur * u0 * N^2 * Ae / P;
Lcoil = u0 * ue * N^2 * Ae / (P);

printf('L = %f mH\n', Lcoil * 1e3);
