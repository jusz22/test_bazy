# Zadanie 1
# a)
CREATE table kreatura like wikingowie.kreatura;
insert into kreatura select * from wikingowie.kreatura;
CREATE table zasob like wikingowie.zasob;
insert into zasob select * from wikingowie.zasob;
CREATE table ekwipunek like wikingowie.ekwipunek;
insert into ekwipunek select * from wikingowie.ekwipunek;
# b)
select * from zasob;
select * from kreatura;
# c)
select * from zasob where rodzaj = 'jedzenie';
# d)
select idZasobu, ilosc from zasob, kreatura where idKreatury in (1, 3, 5);
# Zadanie 2
# a)
select nazwa from kreatura where rodzaj not like  'wiedzma' and udzwig > 49;
# b)
select nazwa from zasob where waga < 5 and waga > 2;
# c)
select nazwa from kreatura where nazwa like '%or%' and udzwig between 30 and 70;
# Zadanie 3
# a)
select nazwa from zasob where month(dataPozyskania) between 7 and 8;
# b)
select nazwa from zasob where rodzaj is not null order by waga asc;
# c)
