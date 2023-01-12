select p.imie, p.nazwisko, d.nazwa as nazwa_dzialu from pracownik p inner join dzial d on p.dzial = d.id_dzialu;
select t.nazwa_towaru, k.nazwa_kategori, st.ilosc from towar t inner join kategoria k on t.kategoria = k.id_kategori inner join stan_magazynowy st on t.id_towaru = st.towar order by st.ilosc desc;
select z.id_zamowienia from zamowienie z inner join status_zamowienia st on z.status_zamowienia = st.id_statusu_zamowienia where z.status_zamowienia = 6;
select k.nazwa_krotka from klient k join adres_klienta ad on k.id_klienta = ad.klient where ad.miejscowosc = 'Olsztyn' and ad.typ_adresu = 1;
select * from stan_magazynowy;
select * from jednostka_miary;
select jm.id_jednostki from jednostka_miary jm left join stan_magazynowy sm on jm.id_jednostki = sm.jm where sm.jm is null;
SELECT z.numer_zamowienia, t.nazwa_towaru, pz.ilosc, pz.cena FROM zamowienie z INNER JOIN pozycja_zamowienia pz ON z.id_zamowienia=pz.zamowienie INNER JOIN towar t ON pz.towar=t.id_towaru WHERE year(data_zamowienia)=2018;
SELECT pozycja_zamowienia.* FROM pozycja_zamowienia inner join (
select id_zamowienia from zamowienie order by data_zamowienia asc limit 5) as t
on pozycja_zamowienia.zamowienie=t.id_zamowienia;
# gtyby zapisać to "na sztywno"
SELECT * FROM pozycja_zamowienia 
where zamowienie in (1,2,3,4,5);
SELECT * FROM zamowienie
JOIN status_zamowienia ON zamowienie.status_zamowienia=status_zamowienia.id_statusu_zamowienia
WHERE nazwa_statusu_zamowienia NOT LIKE "zrealizowane";