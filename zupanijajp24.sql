drop database if exists zupanijajp24;
create database zupanijajp24;
use zupanijajp24;

create table zupanija(
sifra int not null primary key auto_increment,
naziv varchar(50),
zupan int
);

create table opcina(
sifra int not null primary key auto_increment,
zupanija int,
naziv varchar(50)
);

create table mjesto(
sifra int not null primary key auto_increment,
opcina int, 
naziv varchar(50)
);

create table zupan(
sifra int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50)
);

alter table opcina add foreign key (zupanija) references zupanija(sifra);

alter table mjesto add foreign key (opcina) references opcina(sifra);

alter table zupanija add foreign key (zupan) references zupan(sifra);


select * from zupanija;

insert into zupanija(naziv)
values('Zagrebacka zupanija'),('Osjecko baranjska'),('Splitsko dalmatinska');


select * from opcina;

insert into opcina(zupanija,naziv)
values (1,'Zagreb'),(1,'Velika Gorica'),(2,'Split'),(2,'Kastela'),(3,'Osijek'),(3,'Dakovo');