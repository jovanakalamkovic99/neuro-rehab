function y = rms_sig(signal, win, noverlap)
%win - sirina prozora, odnosno broj odbiraka u jednom prozoru
%noverlap - broj tacaka (odbiraka) u kojima se prozori preklapaju
%U nasem primeru uzeli smo da je win=200 a noverlap=100
N = length(signal);
%Pravimo vektor pocetaka svih prozora. Odnosno ako je noverlap=100, onda na
%svakih 100 odbiraka treba da bude pocetak novog prozora za racunanje
%rms-a.
vektor_pocetaka = 1:noverlap:N;
for i=1:length(vektor_pocetaka)
    %Indeks prvog odbirka za svaki prozor je odredjena vrednost
    %iz vektor_pocetaka
    pocetak = vektor_pocetaka(i);
    %Indeks poslednjeg odbirka za svaki prozor je pocetak+win-1. Na primer,
    %u prvoj iteraciji bice pocetak=1, pa ako je win=200, kraj treba da
    %bude bas 200. Upravo to dobijamo sa pocetak+win-1
    kraj = vektor_pocetaka(i)+win-1;
    %Proveravamo da nismo izasli iz opsega signala, odnosno da
    %indeks poslednjeg odbirka nekog prozora nije veci od duzine signala
    if kraj<N
        %Racunamo vrednost rms-a za svaki prozor i smestamo u promenljivo
        %y. Upravo ce y, nakon zavrsetka for petlje, biti anvelopa signala.
        y(i) = rms(signal(pocetak:kraj));
    end
end