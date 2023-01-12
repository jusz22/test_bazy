# 3)
SELECT dzial.nazwa, COUNT(pracownik.id_pracownika) FROM dzial INNER JOIN pracownik ON dzial.id_dzialu=pracownik.dzial GROUP BY dzial.nazwa;
# 4)
select k.nazwa_kategori, sum(sm.ilosc) from kategoria k inner join towar t on k.id_kategori = t.kategoria join stan_magazynowy sm on t.id_towaru = sm.towar group by k.nazwa_kategori;
# 6)
select round(avg(pensja), 2) as srednia_pensja from pracownik;
# 7)
select round(avg(pensja), 2) as srednia_pensja from pracownik where year(curdate()) - year(data_zatrudnienia) > 5;
# 8)
select t.nazwa_towaru, sum(pz.ilosc) from pozycja_zamowienia pz join towar t on pz.towar = t.id_towaru group by towar order by sum(ilosc) desc limit 10;
# 9)
select z.numer_zamowienia ,sum(pz.cena) from zamowienie z join pozycja_zamowienia pz on z.id_zamowienia = pz.zamowienie where month(data_zamowienia) < 5 and year(data_zamowienia) = 2017 group by data_zamowienia;
# 10)
select p.imie, p.nazwisko, sum(pz.cena) as suma from pracownik p join zamowienie z on p.id_pracownika = z.pracownik_id_pracownika join pozycja_zamowienia pz on z.id_zamowienia = pz.zamowienie group by z.pracownik_id_pracownika order by suma desc;
