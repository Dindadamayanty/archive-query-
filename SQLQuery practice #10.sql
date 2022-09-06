use Dinda_Damayanty
/*select jual.*, pelanggan.Nama_pelanggan, pelanggan.Kabupaten
from jual join pelanggan
ON jual.id_pelanggan = pelanggan.id_pelanggan
where pelanggan.Kabupaten ='pidie';

select pelanggan.Nama_pelanggan, pelanggan.id_pelanggan, jual.Nama_barang
from pelanggan join jual
ON Jual.id_pelanggan = pelanggan.id_pelanggan
where jual.Nama_barang = 'apel hijau';

select sum (Jumlah) as 'total jumlah yang di beli', sum (Harga) as 'total harga'
from jual
where Nama_barang = 'apel hijau';

select pelanggan.*
from jual join pelanggan
ON Jual.id_pelanggan = pelanggan.id_pelanggan
where Kabupaten = 'Banda Aceh' and (Nama_barang= 'manggis' or Nama_barang ='semangka');

select pelanggan.id_pelanggan, pelanggan.Nama_pelanggan, jual.tanggal_order
from jual join pelanggan
ON Jual.id_pelanggan = pelanggan.id_pelanggan
where jual.Kategori ='sayur';

select pelanggan.id_pelanggan, pelanggan.Nama_pelanggan, jual.id_barang, jual.Nama_barang
from jual join pelanggan
ON Jual.id_pelanggan = pelanggan.id_pelanggan
where jual.tanggal_order <'2022/02/21';

select pelanggan.id_pelanggan, pelanggan.Nama_pelanggan, jual.tanggal_order, jual.Nama_barang
from jual join pelanggan
ON Jual.id_pelanggan = pelanggan.id_pelanggan
where jual.Nama_barang='durian';*/

select pelanggan.*
from pelanggan
where Kecamatan='banda raya' and id_pelanggan not in (select id_pelanggan from jual);