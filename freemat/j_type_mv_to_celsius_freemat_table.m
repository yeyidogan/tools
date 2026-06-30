function T = j_type_mv_to_celsius_freemat_table(mV)
    % J_TYPE_MV_TO_CELSIUS_FREEMAT FreeMat uyumlu J tipi termokupl dönüþtürücü.
    
    % NIST ITS-90 Referans Noktalarý Tablosu
    ref_mV = [-8.095, -7.890, -6.500, -4.633, -2.431, 0,   5.269,  10.777, 27.393, 42.919, 69.553];
    ref_C  = [-210,   -200,   -150,   -100,   -50,   0,   100,    200,    500,    760,    1200];
    
    % Sýnýr kontrolü uyarýsý
    if (mV < -8.095) || (mV > 69.553)
        printf('Uyarý: mV deðeri J tipi termokupl sýnýrlarýnýn dýþýnda!\n');
    end
    
    % FreeMat'e özel 1-D Lineer Ýnterpolasyon Fonksiyonu
    % 'extrap' parametresi sýnýr deðerlerin dýþýna (örneðin -8'e) doðru uzamasýný saðlar.
    T = interplin1(ref_mV, ref_C, mV, 'extrap');
end
