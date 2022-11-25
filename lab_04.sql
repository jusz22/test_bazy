# Zadanie 1
# b)
alter table postac drop constraint postac_ibfk_1;
set foreign_key_checks = 1;
alter table postac modify id_postaci int;
alter table izba drop constraint izba_ibfk_1;
alter table postac drop primary key;
# Zadanie 2
# a)
alter table postac modify column pesel char(11);
update postac set pesel='02230349383' + id_postaci;
alter table postac add primary key(pesel);
# b)
alter table postac modify rodzaj enum('kobieta','viking','ptak','syrena');
# c)
insert into postac values (9, 'Gertruda Nieszczera', 'syrena', '2002-01-01', 22, '', 'Karyna','20032304838');
# Zadanie 3
# a)
update postac set statek = 'Katarzyna' where nazwa like '%a%';
# b)
update statek set max_ladownosc = (max_ladownosc*0.7) where year(data_wodowania) between 1901 and 2012;
insert into statek values ('Kuarta', 'barka', '2003-12-12',800);
# c)
alter table postac add check(wiek <=1000);
#Zadanie 4
# a)
insert into postac values (10, 'Loko', 'ptak','2002-01-01', 12, '', '', '02234954028');
#lab4 zadanie 4
# b)
create table marynarz select * from postac where statek is not null;
# c)
alter table marynarz add primary key(id_postaci);
alter table marynarz add foreign key (statek) references statek(nazwa_statku);
# Zadanie 5
# a)
update postac set statek = null where statek is not null;
# b)
delete from postac where nazwa like 'Suba';
# c)
alter table marynarz drop constraint marynarz_ibfk_1;
delete from statek where nazwa_statku is not null;
# d)
drop table statek;
# e)
create table zwierz (id int auto_increment primary key, nazwa varchar(122), wiek int);
# f)
insert into zwierz select id_postaci, nazwa, wiek from postac where rodzaj like 'ptak';
