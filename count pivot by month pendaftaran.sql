SELECT newschema.tbl_poliklinik.nama_poliklinik,
	count(CASE WHEN newschema.tbl_pendaftaran.tgl_berobat like '2020-01%' then 1 else null END ) as jan_2020,
    count(CASE WHEN newschema.tbl_pendaftaran.tgl_berobat like '2020-02%' then 1 else null END ) as feb_2020,
    count(CASE WHEN newschema.tbl_pendaftaran.tgl_berobat like '2020-03%' then 1 else null END ) as mar_2020,
    count(CASE WHEN newschema.tbl_pendaftaran.tgl_berobat like '2020-04%' then 1 else null END ) as apr_2020,
    count(CASE WHEN newschema.tbl_pendaftaran.tgl_berobat like '2020-05%' then 1 else null END ) as mei_2020,
    count(CASE WHEN newschema.tbl_pendaftaran.tgl_berobat like '2020-06%' then 1 else null END ) as jun_2020,
    count(CASE WHEN newschema.tbl_pendaftaran.tgl_berobat like '2020-07%' then 1 else null END ) as jul_2020,
    count(CASE WHEN newschema.tbl_pendaftaran.tgl_berobat like '2020-08%' then 1 else null END ) as agst_2020,
    count(CASE WHEN newschema.tbl_pendaftaran.tgl_berobat like '2020-09%' then 1 else null END ) as sep_2020,
    count(CASE WHEN newschema.tbl_pendaftaran.tgl_berobat like '2020-10%' then 1 else null END ) as okt_2020,
    count(CASE WHEN newschema.tbl_pendaftaran.tgl_berobat like '2020-11%' then 1 else null END ) as nov_2020,
    count(CASE WHEN newschema.tbl_pendaftaran.tgl_berobat like '2020-12%' then 1 else null END ) as des_2020
from newschema.tbl_pendaftaran
join newschema.tbl_poliklinik 
ON newschema.tbl_pendaftaran.id_poliklinik=newschema.tbl_poliklinik.id_poliklinik
group by newschema.tbl_poliklinik.nama_poliklinik