function calculate_core(Ae,Ie,ue_gapped,AL_ungapped,Imax,Lset,Bsat,Core,Gap)
    u0 = 4*pi*1e-7; %permeability of free space

    printf('\n******************************* %s %s \n',Core,Gap);
    
    Nmin = Lset*Imax/(Bsat * Ae);
    
    for (Np=1:1300);
        L1 = u0*ue_gapped*Np^2*Ae/Ie;
        if (L1 >= Lset)
            break;
        end
    end
    
    %L = u0*ue*Np^2*Ae/Ie;

    printf('L1 = %.2f mH  [u0*ue*Np^2*Ae/Ie]\n', L1*1000);
    
    L2 = u0*ue_gapped*Nmin^2*Ae/Ie;
    printf('L2 = %.2f mH  [u0*ue*Nmin^2*Ae/Ie]\n', L2*1000);
    
    L3 = Np*Bsat*Ae/Imax;
    printf('L3 = %.2f mH  [Np*Bsat*Ae/Imax]\n', L3*1000);
    
    G1 = 0.4*pi*Ae*1e6*(Np^2/(L1*1e9) - 1/AL_ungapped);
    printf('G1 = %.2f mm  [Np, L1]\n', G1);
    
    G2 = 0.4*pi*Ae*1e6*(Np^2/(L2*1e9) - 1/AL_ungapped);
    printf('G2 = %.2f mm  [Np, L2]\n', G2);
    
    G3 = 0.4*pi*Ae*1e6*(Np^2/(L3*1e9) - 1/AL_ungapped);
    printf('G3 = %.2f mm  [Np, L3]\n', G3);
    
    printf('Np = %d turn\n', Np);
    printf('Nmin = %d turn\n\n', Nmin);

    