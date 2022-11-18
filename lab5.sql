alter table postac drop constraint postac_ibfk_1;
show create table postac;
set foreign_key_checks = 1;
alter table postac modify id_postaci int;
alter table izba drop constraint izba_ibfk_1;
alter table postac drop primary key;
select * from postac;
select * from statek;
alter table postac modify column pesel char(11);
update postac set pesel='02230349383' + id_postaci;
alter table postac add primary key(pesel);
alter table postac modify rodzaj enum('kobieta','viking','ptak','syrena');
insert into postac values (9, 'Gertruda Nieszczera', 'syrena', '2002-01-01', 22, '', 'Karyna','20032304838');
describe postac;
update postac set statek = 'Katarzyna' where nazwa like '%a%';
update statek set max_ladownosc = (max_ladownosc*0.7) where year(data_wodowania) between 1901 and 2012;
insert into statek values ('Kuarta', 'barka', '2003-12-12',800);
alter table postac add check(wiek <=1000);
insert into postac values (10, 'Loko', 'ptak','2002-01-01', 12, '', '', '02234954028');