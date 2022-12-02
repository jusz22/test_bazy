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

