# Zadanie 1
# a)
select idKreatury from kreatura k left join uczestnicy u on k.idKreatury = u.id_uczestnika where u.id_uczestnika is null;
