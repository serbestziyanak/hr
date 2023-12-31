<?php
include "../../_cekirdek/fonksiyonlar.php";
$vt		= new VeriTabani();
$fn		= new Fonksiyonlar();

$islem				= array_key_exists( 'islem', $_REQUEST )	? $_REQUEST[ 'islem' ]	: 'ekle';
$id				 	= array_key_exists( 'id', $_REQUEST ) 		? $_REQUEST[ 'id' ] 	: 0;
$sayfa_id		 	= array_key_exists( 'sayfa_id', $_REQUEST ) ? $_REQUEST[ 'sayfa_id' ] 	: 0;
$birim_id 			= array_key_exists( 'birim_id', $_REQUEST ) 	? $_REQUEST[ 'birim_id' ] : 0;
$birim_adi 			= array_key_exists( 'birim_adi', $_REQUEST ) 	? $_REQUEST[ 'birim_adi' ] : "";
$sayfa_adi 			= array_key_exists( 'sayfa_adi', $_REQUEST ) 	? $_REQUEST[ 'sayfa_adi' ] : "";
$dil	 			= array_key_exists( 'dil', $_REQUEST ) 	? $_REQUEST[ 'dil' ] : "";
$dil	 			= $dil == "_tr" ? "" : $dil;

if( $dil == "" )
	$kisa_ad =  $fn->kisa_ad_ver( $_REQUEST[ 'adi' ] );
else
	$kisa_ad = $_REQUEST[ 'kisa_ad' ];

var_dump($_REQUEST);
//exit;

$SQL_birim_sayfa_ekle = <<< SQL
INSERT INTO 
	tb_birim_sayfalari
SET
	 birim_id			= ?
	,ust_id 			= ?
	,adi 				= ?
	,adi_kz				= ?
	,adi_en				= ?
	,adi_ru				= ?
	,kategori 			= ?
	,kisa_ad			= ?
SQL;

$SQL_birim_sayfa_duzenle = <<< SQL
UPDATE
	tb_birim_sayfalari
SET
	 adi 				= ?
	,adi_kz				= ?
	,adi_en				= ?
	,adi_ru				= ?
	,kisa_ad	= ?
WHERE 
	id 		= ? 
SQL;

$SQL_birim_sayfa_duzenle2 = <<< SQL
UPDATE
	tb_birim_sayfalari
SET
	 link 		= ?
	,link_url 	= ?
	,harici		= ?
	,aktif 		= ?
WHERE 
	id 		= ? 
SQL;

$SQL_birim_sayfa_sira_eksi1 = <<< SQL
UPDATE
	tb_birim_sayfalari
SET
	 sira = sira + 1
WHERE 
	birim_id = ? and ust_id = ? and sira = ? - 1 
SQL;

$SQL_birim_sayfa_sira_eksi2 = <<< SQL
UPDATE
	tb_birim_sayfalari
SET
	 sira = sira - 1
WHERE 
	id = ? 
SQL;

$SQL_birim_sayfa_sira_arti1 = <<< SQL
UPDATE
	tb_birim_sayfalari
SET
	 sira = sira - 1
WHERE 
	birim_id = ? and ust_id = ? and sira = ? + 1 
SQL;

$SQL_birim_sayfa_sira_arti2 = <<< SQL
UPDATE
	tb_birim_sayfalari
SET
	 sira = sira + 1
WHERE 
	id = ? 
SQL;

$SQL_birim_sayfa_sira_olustur = <<< SQL
UPDATE
	tb_birim_sayfalari
SET
	 sira = (select count(*) from (select * from tb_birim_sayfalari) as t1 where birim_id = ? and ust_id = ?)
WHERE 
	id = ? 
SQL;

$SQL_birim_sayfa_sira_guncelle = <<< SQL
UPDATE
	tb_birim_sayfalari
SET
	sira = sira-1
WHERE 
	sira > ? and  birim_id = ? and ust_id = ?
SQL;

$SQL_sil = <<< SQL
DELETE FROM
	tb_birim_sayfalari
WHERE
	id = ?
SQL;

$SQL_birim_sayfa_oku = <<< SQL
SELECT 
	*
FROM 
	tb_birim_sayfalari
WHERE 
	ust_id  		= ?
SQL;

$SQL_icerik_ekle = <<< SQL
INSERT INTO
	tb_birim_sayfa_icerikleri
SET
	 baslik$dil		= ?
	,birim_id		= ?
	,sayfa_id		= ?
	,icerik$dil		= ?
	,foto			= ?
SQL;

$SQL_icerik_guncelle = <<< SQL
UPDATE
	tb_birim_sayfa_icerikleri
SET
	 baslik$dil		= ?
	,icerik$dil		= ?
WHERE
	sayfa_id = ?
SQL;

$SQL_foto_guncelle = <<< SQL
UPDATE
	tb_birim_sayfa_icerikleri
SET
	foto = ?
WHERE
	sayfa_id = ?
SQL;

$degerler = array();

echo '<pre>';
echo $_REQUEST[ "ogretim_elemani_id" ];

print_r($_REQUEST);
$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => 0 );
switch( $islem ) {
	case 'ekle':


		$kategori 	= $_REQUEST[ "kategori" ] 	== "on" ? 1 : 0;
		$ust_id   	= $_REQUEST[ "ust_id" ] 	== "" 	? 0 : $_REQUEST[ "ust_id" ];
		$birim_id  	= $_REQUEST[ "birim_id" ] 	== "" 	? 0 : $_REQUEST[ "birim_id" ];

		$degerler[] = $birim_id;
		$degerler[] = $ust_id;
		$degerler[] = $_REQUEST[ "adi" ];
		$degerler[] = $_REQUEST[ "adi_kz" ];
		$degerler[] = $_REQUEST[ "adi_en" ];
		$degerler[] = $_REQUEST[ "adi_ru" ];
		$degerler[] = $kategori;
		$degerler[] = $kisa_ad;

		$sonuc = $vt->insert( $SQL_birim_sayfa_ekle, $degerler );
		if( $sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sonuc[ 0 ], 'mesaj' => 'Kayıt eklenirken bir hata oluştu ' . $sonuc[ 1 ] );
		else $___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => $sonuc[ 2 ] ); 
		$son_eklenen_id	= $sonuc[ 2 ]; 
		$son_id = $son_eklenen_id;

		$sorgu_sonuc = $vt->update( $SQL_birim_sayfa_sira_olustur, array(
			 $_REQUEST[	'birim_id' ]
			,$_REQUEST[	'ust_id' ]
			,$son_id
		) );
		if( $sorgu_sonuc[ 0 ] ){
			$___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt eklenirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		}else{
			$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => $sorgu_sonuc[ 2 ] ); 
		}
	break;
	case 'guncelle':
		$degerler[] = $_REQUEST[ "adi" ];
		$degerler[] = $_REQUEST[ "adi_kz" ];
		$degerler[] = $_REQUEST[ "adi_en" ];
		$degerler[] = $_REQUEST[ "adi_ru" ];
		$degerler[] = $kisa_ad;
		$degerler[] = $id;

		$sonuc = $vt->update( $SQL_birim_sayfa_duzenle, $degerler );
		if( $sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sonuc[ 0 ], 'mesaj' => 'Kayıt güncellenirken bir hata oluştu ' . $sonuc[ 1 ] );

	break;
	case 'sil':

		echo '<pre>';


		function kategorisil($vt, $SQL_birim_sayfa_oku, $SQL_sil, $id){

			$kategoriler = $vt->select( $SQL_birim_sayfa_oku, array( $id ) )[2];

			if ( count( $kategoriler ) > 0 ) {
				foreach ($kategoriler as $kategori){

					$altKategoriler = $vt->select( $SQL_birim_sayfa_oku, array( $kategori[ "id" ] ) )[2];

					if( count( $altKategoriler ) > 0 ){
						foreach ($altKategoriler as $altKategori) {
							kategorisil($vt,$SQL_birim_sayfa_oku, $SQL_sil, $altKategori[ "id" ]);
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

		echo "gelen id  : $id";
		kategorisil($vt,$SQL_birim_sayfa_oku, $SQL_sil, $id);

		$sorgu_sonuc = $vt->update( $SQL_birim_sayfa_sira_guncelle, array(
			 $_REQUEST[	'sira' ]
			,$_REQUEST[	'birim_id' ]
			,$_REQUEST[	'ust_id' ]
		) );
		if( $sorgu_sonuc[ 0 ] ){
			$___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt eklenirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		}else{
			$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => $sorgu_sonuc[ 2 ] ); 
		}

	break;
	case 'icerik_ekle':

		if( isset($_FILES["foto"]) and $_FILES["foto"]['size']>0 ){
			$dosya_adi = uniqid().basename($_FILES["foto"]["name"]);
			$target_dir = "../../resimler/programlar/";
			$target_file = $target_dir . $dosya_adi;
			move_uploaded_file($_FILES["foto"]["tmp_name"], $target_file);
		}else{
			$dosya_adi = "";
		}

		$sorgu_sonuc = $vt->insert( $SQL_icerik_ekle, array(
			 $_REQUEST[	'baslik' ]
			,$_REQUEST[	'birim_id' ]
			,$sayfa_id
			,$_REQUEST[	'icerik' ]
			,$dosya_adi
		) );

		$link 		= $_REQUEST[ "link" ] 	== "on" ? 1 : 0;
		$harici 	= $_REQUEST[ "harici" ] == "on" ? 1 : 0;
		$aktif 		= $_REQUEST[ "aktif" ] 	== "on" ? 1 : 0;
		$link_url 	= isset($_REQUEST[ "link_url" ]) ? $_REQUEST[ "link_url" ] : "";

		$sorgu_sonuc = $vt->update( $SQL_birim_sayfa_duzenle2, array(
			 $link
			,$link_url
			,$harici
			,$aktif
			,$sayfa_id
		) );
		if( $sorgu_sonuc[ 0 ] ){
			$___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt eklenirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		}else{
			$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => $sorgu_sonuc[ 2 ] ); 
		}
	break;
	case 'icerik_guncelle':
		$sorgu_sonuc = $vt->update( $SQL_icerik_guncelle, array(
			 $_REQUEST[	'baslik' ]
			,$_REQUEST[	'icerik' ]
			,$sayfa_id
		) );

		$link 		= $_REQUEST[ "link" ] 	== "on" ? 1 : 0;
		$harici 	= $_REQUEST[ "harici" ] == "on" ? 1 : 0;
		$aktif 		= $_REQUEST[ "aktif" ] 	== "on" ? 1 : 0;
		$link_url 	= isset($_REQUEST[ "link_url" ]) ? $_REQUEST[ "link_url" ] : "";

		$sorgu_sonuc = $vt->update( $SQL_birim_sayfa_duzenle2, array(
			 $link
			,$link_url
			,$harici
			,$aktif
			,$sayfa_id
		) );

		if( isset($_FILES["foto"]) and $_FILES["foto"]['size']>0 ){
			$dosya_adi = uniqid().basename($_FILES["foto"]["name"]);
			$target_dir = "../../resimler/programlar/";
			$target_file = $target_dir . $dosya_adi;
			move_uploaded_file($_FILES["foto"]["tmp_name"], $target_file);
			unlink( '../../resimler/programlar/'.$_REQUEST[ 'foto_eski' ] );
			$sorgu_sonuc2 = $vt->update( $SQL_foto_guncelle, array(
				 $dosya_adi
				,$sayfa_id
			) );

		}
		if( $sorgu_sonuc[ 0 ] ){
			$___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt eklenirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		}else{
			$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => $sorgu_sonuc[ 2 ] ); 
		}
	break;
	case 'sira_eksi':
		$sorgu_sonuc = $vt->update( $SQL_birim_sayfa_sira_eksi1, array(
			 $_REQUEST[	'birim_id' ]
			,$_REQUEST[	'ust_id' ]
			,$_REQUEST[	'sira' ]
		) );

		$sorgu_sonuc = $vt->update( $SQL_birim_sayfa_sira_eksi2, array(
			$id
		) );

		if( $sorgu_sonuc[ 0 ] ){
			$___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt güncellenirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		}else{
			$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => $sorgu_sonuc[ 2 ] ); 
		}
	break;
	case 'sira_arti':
		$sorgu_sonuc = $vt->update( $SQL_birim_sayfa_sira_arti1, array(
			 $_REQUEST[	'birim_id' ]
			,$_REQUEST[	'ust_id' ]
			,$_REQUEST[	'sira' ]
		) );

		$sorgu_sonuc = $vt->update( $SQL_birim_sayfa_sira_arti2, array(
			$id
		) );

		if( $sorgu_sonuc[ 0 ] ){
			$___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt güncellenirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		}else{
			$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => $sorgu_sonuc[ 2 ] ); 
		}
	break;


}


$_SESSION[ 'sonuclar' ] 		= $___islem_sonuc;
$_SESSION[ 'sonuclar' ][ 'id' ] = $birim_sayfa_id;
if( $islem == "icerik_ekle" or $islem == "icerik_guncelle" )
header( "Location:../../index.php?modul=birimSayfalari&birim_id=$birim_id&birim_adi=$birim_adi&sayfa_id=$sayfa_id&sayfa_adi=$sayfa_adi");
else
header( "Location:../../index.php?modul=birimSayfalari&birim_id=$birim_id");
?>