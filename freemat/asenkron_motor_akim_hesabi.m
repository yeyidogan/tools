P = 11000; %watt
Cosfi = 0.83;
U = 380; %Volt

I = P /(U*sqrt(3)*Cosfi);

disp (sprintf ('%d kW 3 faz asenkron motor faz basina %d A  @ max yük', P/1000, I));
