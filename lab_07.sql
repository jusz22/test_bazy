# Zadanie 1
# b)
select idKreatury from kreatura k left join uczestnicy u on k.idKreatury = u.id_uczestnika where u.id_uczestnika is null;
# c)
select distinct w.nazwa, sum(e.ilosc) from wyprawa w join uczestnicy u on w.id_wyprawy = u.id_wyprawy join ekwipunek e on e.idKreatury = u.id_uczestnika group by w.nazwa;
# Zadanie 2
# a)
select count(u.id_uczestnika), group_concat(k.nazwa) from wyprawa w join uczestnicy u on w.id_wyprawy = u.id_wyprawy join kreatura k on k.idKreatury = u.id_uczestnika group by w.id_wyprawy;
# b) 
select w.nazwa, s.nazwa, ew.kolejnosc, k.nazwa as kierownik from wyprawa w join kreatura k on w.kierownik = idKreatury join etapy_wyprawy ew on ew.idWyprawy = w.id_wyprawy join sektor s on s.id_sektora = ew.sektor order by w.data_rozpoczecia asc, ew.kolejnosc desc;
