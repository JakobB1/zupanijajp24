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
