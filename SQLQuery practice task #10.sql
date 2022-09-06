use Dinda_Damayanty
create table buku(
no_buku varchar (5) not null primary key,
jenis_buku varchar (20),
judul_buku varchar (100),
pengarang_buku varchar (50),
status_buku varchar (10),
tahun_terbit Varchar (4),
tanggal_pinjam date,
tanggal_kembali date
);

create table anggota(
no_anggota varchar (5) not null primary key,
nama_anggota varchar (25),
alamat_anggota varchar (50),
kota varchar (50),
Jurusan varchar (50),
);

create table pinjam (
no_buku varchar (5) references buku(no_buku),
no_anggota varchar (5) references anggota(no_anggota),
tanggal_pinjam date,
tanggal_kembali date
);

insert into buku values
('N102','novel','dilan1990','pidi baiq','pinjam','2012','20220122','20220201'),
('N103','novel','ketika cinta bertasbih','habiburrahman el shirazy','ada','2013','20220122','20220201'),
('N104','novel','filosofi kopi','dee lestari','pinjam','2015','20220125','20220201'),
('D102','dongeng','timun emas','anonim','ada','2013','20220126','20220204'),
('D103','dongeng','kuda dan kedelai','anonim','pinjam','2011','20220127','20220205'),
('K102','komik','doraemon','fujiko f fujio','pinjam','2018','20220128','20220206'),
('K103','komik','lupus','hilman hariwijaya','ada','2000','20220129','20220207'),
('E105','ensiklopedi','terciptanya alam semesta','anonim','ada','2009','20220130','20220208')

insert into anggota Values
		('C01', 'Crash', 'Kota Bakti', 'Pidie', 'Ilmu Tanah'),
		('C02', 'Eddie', 'Mila', 'Pidie', 'Ilmu Hukum'),
		('C03', 'Buck Wild', 'Gapuy', 'Pidie', 'Ilmu Komputer'),
		('C04', 'Manny', 'Batee', 'Pidie', 'Ilmu Hitam'),
		('C05', 'Sid ', 'Grong-Grong', 'Pidie', 'Ilmu Kesehatan '),
		('C06', 'Diego', 'Padang Tiji', 'Pidie', 'Ilmu Sakti')

insert into pinjam (no_buku, no_anggota, tanggal_pinjam, tanggal_kembali) 
values	('N102','C01','20220122','20220201'),
		('N103','C01','20220122','20220201'),
		('N104','C02','20220105','20220203'),
		('E105','C05','20220103','20220208'),
		('K102','C06','20220128','20220206')

create view peminjam as
select	anggota.no_anggota,
		anggota.nama_anggota,
		buku.judul_buku, 
		pinjam.tanggal_pinjam,
		pinjam.tanggal_kembali
from	anggota
join	pinjam
on		anggota.no_anggota=pinjam.no_anggota
join	buku
on		buku.no_buku=pinjam.no_buku;

