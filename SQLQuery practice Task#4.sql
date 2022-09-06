use Dinda_Damayanty
/*reate table datadiri (
	NIK bigint not null,
	Nama varchar not null,
	Tanggal_Lahir date not null,
	Alamat varchar not null,
	No_Hp varchar not null
)*/

--EXEC sp_rename 'datadiri.Tanggal_Lahir', 'Lahir','COLUMN';

/*alter table datadiri
add Tempat_lahir varchar(20)

-EC sp_rename 'datadiri.Lahir', 'Tanggal_Lahir','COLUMN';*/

 alter table datadiri
 add primary key (NIK);


insert into datadiri
values
(1173044405950001, 'Dinda Damayanty', '19950504', 'Cot iri', '082313938091', 'Lhokseumawe'),
(1105016805960004, 'Cut Putri Mirna', '19960528', 'Batoh', '082129004733', 'lamno'),
(1106035307990003, 'Siti nurhaliza', '19990307', 'Indrapuri', '085315615015', 'Banda aceh'),
(1111111111111111, 'Nurul Aiman', '19990721', 'Banda Aceh', '081262555601', 'Banda aceh'),
(1111111111111112, 'Rahmad Rizki Basri', '19971010', 'Sabang', '082161721971', 'Sabang'),
(1111111111111113, 'Rahmadi', '19990219', 'darussalam', '082198462850', 'Aceh Selatan'),
(1111111111111114, 'Putra Hidayatullah', '19980102', 'Rukoh', '082165660556', 'Meulaboh'),
(1111111111111115, 'Cut Riska maudya','19980728', 'Peulanggahan', '082312928462', 'Banda Aceh'), 
(1122334455667788, 'Husnul Ulfa','19980520', 'Aceh Utara', '082295422910','Panton Labu'),
(1122334455667799, 'Ardiansyah Putra','19980109', 'Kajhu', '082276330774','Arab'),
(1163676889786789, 'Mish Al Ariq Maulana', '20030823', 'Mibo', '089623009497', 'Banda Aceh'),
(1789799908788767, 'Nailul Moenadi','19970902',' Peurada','082273217650', 'Kota Bakti'),
(8908787867788977, 'Afdhalul Zikri Abdullah','19990430','Jeulingke','082267816992','Banda Aceh'),
(8989738909789789, 'Riyan Jeffri','19960621','Kajhu','085373660663','Banda Aceh'),
(12365478912473,'Rahmad', '19970719', 'Jeulingke' ,'085325662560' ,'Aceh Timur'),
(12365478912673,'Ulfa Turahmi', '19960526', 'Ie Masen' ,'082162801419' ,'Lhokseumawe');