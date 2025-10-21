%Crystal parameters
CL = 18e-12;
Cstray = 5e-12;


Cstep = 1e-12; %1 pF
Ca = Cstep;
for (n=1:1300);
    Ca = Ca + Cstep;
    CLn = (Ca/2)+Cstray;
    if (CLn >= CL)
        break;
    end
end

printf('Ca, Cb = %.2f pF \n', Ca*1e12);
    