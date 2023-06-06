create database Evidencia_BD;
use Evidencia_BD;

create table equipo(
idequipo char(5) primary key,
nombre char(25),
fecha_fundacion int not null
);
create table futbolista(
idfutbolista char (5) primary key,
nombre char(25),
edad int not null,
años_siendo_del_equipo int not null,
idequipo char(5),
foreign key (idequipo) references equipo (idequipo)
);

insert into equipo values('1A','Real Madrid',1902);
insert into equipo values('2A','Atlético de Madrid',1903);

insert into futbolista values('1','Lunin',23,2,'1A');
insert into futbolista values('2','Rügriger',29,1,'1A');
insert into futbolista values('3','Kroos',32,8,'1A');
insert into futbolista values('4','Oblack',23,1,'2A');
insert into futbolista values('5','Molina',25,6,'2A');
insert into futbolista values('6','Felipe',31,3,'2A');

select futbolista.nombre, equipo.nombre 
from equipo inner join futbolista
where equipo.idequipo = futbolista.idequipo;

update futbolista
set idequipo='2A'
where idfutbolista='3';

alter table equipo
add copasRey varchar(100);

update equipo
set copasRey=1912
where idequipo='2A';

delete from equipo
where idequipo='1A';