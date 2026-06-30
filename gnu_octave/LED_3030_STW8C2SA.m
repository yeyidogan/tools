Vf = [5.6:0.05:5.8];

nLED = 2;
I_desired = 0.05;
V = 12;
R  = (V - nLED*5.7) / I_desired;


I_LED = ((V - nLED*Vf) / R);
I_LED * 1000 %mV

W_Loss_in_R = I_LED .* I_LED * R * 1 %mW
