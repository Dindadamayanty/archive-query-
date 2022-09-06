use Dinda_Damayanty
/*create table kelas (
	ID_kelas varchar (10) not null primary key,
	Nama_kelas varchar (50),
	Jumlah_komputer int check (Jumlah_komputer<=17),
	Jumlah_meja int,
	jumlah_kursi int
);

insert into kelas 
values
('001','Content Creator',17,19,18),
('002','Multimedia',17,18,18),
('003','Desainer Grafis Muda',17,18,18),
('004','Pemasangan Jaringan Komputer',17,20,20),
('005','Video Editor',17,18,17),
('006','Pemograman Berbasis Data',17,19,20),
('007','Practical Office',17,18,18);

update kelas set Nama_kelas='Design_grafis' where ID_kelas='001';
update kelas set Nama_kelas='Multimedia' where ID_kelas='006';
update kelas set Nama_kelas='Content Creator' where ID_kelas='003';
update kelas set Nama_kelas='Pemograman Berbasis Data' where ID_kelas='002';

delete from kelas where ID_kelas='007';

select * from kelas where (Nama_kelas='Design Grafis' or Nama_kelas='Multimedia');
select * from kelas where jumlah_meja=20 and jumlah_kursi=20;
select * from kelas where jumlah_meja=18 or jumlah_kursi=18;
select * from kelas where jumlah_kursi=18 and (jumlah_meja=20 or jumlah_meja=19);
select * from kelas where not Nama_kelas='Multimedia';
select top 3 * from kelas;
select top 50 percent * from kelas;
select distinct Nama_kelas from kelas;
select *from kelas order by Jumlah_meja desc;
select sum(Jumlah_kursi) as 'jumlah kursi' from kelas;*/
