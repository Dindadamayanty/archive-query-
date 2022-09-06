SELECT newschema.tbl_poliklinik.nama_poliklinik,
	count(CASE WHEN MONTH(newschema.tbl_pendaftaran.tgl_berobat) = 1 then 1 else null END ) as jan,
    count(CASE WHEN MONTH(newschema.tbl_pendaftaran.tgl_berobat) = 2 then 1 else null END ) as feb,
    count(CASE WHEN MONTH(newschema.tbl_pendaftaran.tgl_berobat) = 3 then 1 else null END ) as mar,
	count(CASE WHEN MONTH(newschema.tbl_pendaftaran.tgl_berobat) = 4 then 1 else null END ) as apr,
    count(CASE WHEN MONTH(newschema.tbl_pendaftaran.tgl_berobat) = 5 then 1 else null END ) as mei,
    count(CASE WHEN MONTH(newschema.tbl_pendaftaran.tgl_berobat) = 6 then 1 else null END ) as jun,
    count(CASE WHEN MONTH(newschema.tbl_pendaftaran.tgl_berobat) = 7 then 1 else null END ) as jul,
    count(CASE WHEN MONTH(newschema.tbl_pendaftaran.tgl_berobat) = 8 then 1 else null END ) as agst,
    count(CASE WHEN MONTH(newschema.tbl_pendaftaran.tgl_berobat) = 9 then 1 else null END ) as sep,
    count(CASE WHEN MONTH(newschema.tbl_pendaftaran.tgl_berobat) = 10 then 1 else null END ) as okt,
    count(CASE WHEN MONTH(newschema.tbl_pendaftaran.tgl_berobat) = 11 then 1 else null END ) as nov,
	count(CASE WHEN MONTH(newschema.tbl_pendaftaran.tgl_berobat) = 12 then 1 else null END ) as des
from newschema.tbl_pendaftaran
join newschema.tbl_poliklinik 
ON newschema.tbl_pendaftaran.id_poliklinik=newschema.tbl_poliklinik.id_poliklinik
where year(newschema.tbl_pendaftaran.tgl_berobat) = 2020
group by newschema.tbl_poliklinik.nama_poliklinik
