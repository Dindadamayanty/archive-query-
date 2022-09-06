/*use Dinda_Damayanty
create table superhero(
id_hero char (5) not null primary key,
nama_hero varchar (50) unique
);

create table powerhero(
id_power char (5) not null primary key,
nama_power varchar (50),
id_hero char (5) references superhero(id_hero)
);

insert into superhero (id_hero,nama_hero) 
values ('BT034','Batman');

insert into powerhero (id_power,nama_power,id_hero)
values ('FY025','Terbang','BT034');

create view hero as
select superhero.nama_hero, powerhero.nama_power
from superhero join powerhero 
on superhero.id_hero=powerhero.id_hero;

create view herooooo as
select powerhero.nama_power, powerhero.id_power, superhero.nama_hero
from superhero join powerhero 
on superhero.id_hero=powerhero.id_hero;*/