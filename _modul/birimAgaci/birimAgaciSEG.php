<?php
include "../../_cekirdek/fonksiyonlar.php";
$vt		= new VeriTabani();
$fn		= new Fonksiyonlar();

$islem				= array_key_exists( 'islem', $_REQUEST )	? $_REQUEST[ 'islem' ]	: 'ekle';
$birim_agaci_id 	= array_key_exists( 'id', $_REQUEST ) 		? $_REQUEST[ 'id' ] 	: 0;
$ders_id 			= array_key_exists( 'ders_id', $_REQUEST ) 	? $_REQUEST[ 'ders_id' ] : 0;

$birim_kisa_ad =  $fn->kisa_ad_ver( $_REQUEST[ 'adi' ] );

$SQL_birim_agaci_ekle = <<< SQL
INSERT INTO 
	tb_birim_agaci
SET
	 ust_id 			= ?
	,adi 				= ?
	,kategori 			= ?
	,grup	 			= ?
	,kisa_ad 			= ?
SQL;

$SQL_birim_agaci_duzenle = <<< SQL
UPDATE
	tb_birim_agaci
SET
	 adi 				= ?
	,kategori 			= ?
	,grup	 			= ?
	,kisa_ad 			= ?
WHERE 
	id 		= ? 
SQL;

$SQL_sil = <<< SQL
DELETE FROM
	tb_birim_agaci
WHERE
	id = ?
SQL;

$SQL_birim_agaci_oku = <<< SQL
SELECT 
	*
FROM 
	tb_birim_agaci
WHERE 
	ust_id  		= ?
SQL;

$degerler = array();

echo '<pre>';
echo $_REQUEST[ "ogretim_elemani_id" ];

print_r($_REQUEST);
$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => 0 );
switch( $islem ) {
	case 'ekle':

		if( $_SESSION[ "kullanici_turu" ] == 'ogretmen' AND $_SESSION[ "super" ] == 0 ){
			if ( $_REQUEST[ "ogretim_elemani_id" ] != $_SESSION[ "kullanici_id" ] ){
				die("Hata İşlem Yapmaktasınız.");
			}
		}
		$kategori 	= $_REQUEST[ "kategori" ] 	== "on" ? 1 : 0;
		$grup	 	= $_REQUEST[ "grup" ] 	== "on" ? 1 : 0;
		$ust_id   	= $_REQUEST[ "ust_id" ] 	== "" 	? 0 : $_REQUEST[ "ust_id" ];

		$degerler[] = $ust_id;
		$degerler[] = $_REQUEST[ "adi" ];
		$degerler[] = $kategori;
		$degerler[] = $grup;
		$degerler[] = $birim_kisa_ad;

		$sonuc = $vt->insert( $SQL_birim_agaci_ekle, $degerler );
		if( $sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sonuc[ 0 ], 'mesaj' => 'Kayıt eklenirken bir hata oluştu ' . $sonuc[ 1 ] );
		else $___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => $sonuc[ 2 ] ); 
		$son_eklenen_id	= $sonuc[ 2 ]; 
		$birim_agaci_id = $son_eklenen_id;

	break;
	case 'guncelle':
		$kategori 	= $_REQUEST[ "kategori" ] 	== "on" ? 1 : 0;
		$grup	 	= $_REQUEST[ "grup" ] 	== "on" ? 1 : 0;

		$degerler[] = $_REQUEST[ "adi" ];
		$degerler[] = $kategori;
		$degerler[] = $grup;
		$degerler[] = $birim_kisa_ad;
		$degerler[] = $_REQUEST[ "birim_agaci_id" ];

		$sonuc = $vt->update( $SQL_birim_agaci_duzenle, $degerler );
		if( $sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sonuc[ 0 ], 'mesaj' => 'Kayıt güncellenirken bir hata oluştu ' . $sonuc[ 1 ] );

	break;
	case 'sil':

		echo '<pre>';


		function kategorisil($vt, $SQL_birim_agaci_oku, $SQL_sil, $id){

			$kategoriler = $vt->select( $SQL_birim_agaci_oku, array( $id ) )[2];

			if ( count( $kategoriler ) > 0 ) {
				foreach ($kategoriler as $kategori){

					$altKategoriler = $vt->select( $SQL_birim_agaci_oku, array( $kategori[ "id" ] ) )[2];

					if( count( $altKategoriler ) > 0 ){
						foreach ($altKategoriler as $altKategori) {
							kategorisil($vt,$SQL_birim_agaci_oku, $SQL_sil, $altKategori[ "id" ]);
						}
					}else{
						$kategori_sil = $vt->delete( $SQL_sil, array( $kategori[ "id" ] ));
					}
					$kategori_sil = $vt->delete( $SQL_sil, array( $kategori[ "id" ] ));
				}
				$kategori_sil = $vt->delete( $SQL_sil, array( $id ));
			}else{
				$kategori_sil = $vt->delete( $SQL_sil, array( $id ));
			}
			
		}

		echo "gelen id  : $birim_agaci_id";
		kategorisil($vt,$SQL_birim_agaci_oku, $SQL_sil, $birim_agaci_id);
	break;
}


$_SESSION[ 'sonuclar' ] 		= $___islem_sonuc;
$_SESSION[ 'sonuclar' ][ 'id' ] = $birim_agaci_id;
header( "Location:../../index.php?modul=birimAgaci&ders_id=$ders_id");
?>