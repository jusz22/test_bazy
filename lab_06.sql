# Zadanie 1
# a)
select avg(waga) from kreatura where rodzaj like 'wiking';
# b)
select rodzaj, avg(waga), count(nazwa) from kreatura group by rodzaj;
# c)
select avg(year(now()) - year(dataUr)) from kreatura;
# Zadanie 2
# a)
select sum(waga) from zasob;
# b)
select avg(waga) from zasob where ilosc >= 4 group by nazwa having sum(waga) > 10;
# c)
select count(nazwa), rodzaj from zasob group by rodzaj having min(ilosc) > 1;
# Zadanie 3
# a)
select kreatura.nazwa, sum(ekwipunek.ilosc) from kreatura inner join ekwipunek on kreatura.idKreatury = ekwipunek.idKreatury group by nazwa;
# b)
select kreatura.nazwa, zasob.nazwa from zasob inner join ekwipunek on zasob.idZasobu = ekwipunek.idZasobu inner join kreatura on ekwipunek.idKreatury = kreatura.idKreatury;
# c)
select kreatura.nazwa from kreatura left join ekwipunek on ekwipunek.idKreatury = kreatura.idKreatury where ekwipunek.ilosc is null;
# Zadanie 4
# a) 
select k.nazwa, zasob.nazwa from kreatura k natural join ekwipunek e inner join zasob on e.idZasobu = zasob.idZasobu where year(dataUr) between 1670 and 1679 order by k.nazwa;
# b)
# Zadanie 5
# a)
select k.rodzaj, sum(z.waga * e.ilosc)/count(distinct e.idKreatury) from kreatura k inner join ekwipunek e on k.idKreatury = e.idKreatury inner join zasob z on z.idZasobu = e.idZasobu where k.rodzaj not in ('malpa','waz') group by k.rodzaj having sum(e.ilosc) < 30;
# b)
select 'najmlodsza', a.maxData, b.nazwa, a.rodzaj from (select max(dataUr) maxData, rodzaj from kreatura group by rodzaj) a, (select nazwa, dataUr from kreatura) b where a.maxData = b.dataUr 
union
select 'najstarsza', a.minData, b.nazwa, a.rodzaj from (select min(dataUr) minData, rodzaj from kreatura group by rodzaj) a, (select nazwa, dataUr from kreatura) b where a.minData = b.dataUr;