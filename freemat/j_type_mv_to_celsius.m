function T = j_type_mv_to_celsius_correct(mV)
    % Doðrudan mV kabul eden, basamak hatasý engellenmiþ NIST polinomu
    T = zeros(size(mV));
    
    for i = 1:numel(mV)
        x = mV(i); % Girdi doðrudan milivolt cinsinden
        
        if x >= -8.095 && x < 0
            % --- Milivolt Tabanlý NIST Katsayýlarý ---
            c = [ 0.0, ...
                  19.528268, ...
                 -1.2286185, ...
                 -1.0752178, ...
                 -0.59086933, ...
                 -0.17256713, ...
                 -0.028131513, ...
                 -0.002396337, ...  % Kritik düzeltme çarpaný
                 -0.0000838233 ];
            
            % x'in kuvvetleri milivolt cinsinden hesaplandýðý için taþma ve salýným olmaz
            T(i) = c(1) + c(2)*x + c(3)*x^2 + c(4)*x^3 + c(5)*x^4 + ...
                   c(6)*x^5 + c(7)*x^6 + c(8)*x^7 + c(9)*x^8;
        else
            % Diðer aralýklar için de benzer þekilde mV katsayýlarý yazýlmalýdýr.
            T(i) = NaN; 
        end
    end
end
