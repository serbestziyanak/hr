<?php
include "../../_cekirdek/fonksiyonlar.php";
$vt		= new VeriTabani();
$fn		= new Fonksiyonlar();

echo "<pre>";
var_dump($_REQUEST);
echo "</pre>";
//exit;

if( isset($_FILES["foto"]) ){
	list($genislik, $yukseklik) = getimagesize($_FILES["foto"]["tmp_name"]);
	if( $genislik != 555 or $yukseklik != 320 ){
	//$_SESSION[ 'sonuclar' ] = array( 'hata' => true, 'mesaj' => 'Hata : Görsel boyutlaru 555x320 olmalıdır!', 'id' => 0 );
	//header( "Location:../../index.php?modul=duyurular&birim_id=".$_REQUEST['birim_id']."&birim_adi=".$_REQUEST['birim_adi']);
	//exit;
	}
}

$islem	= array_key_exists( 'islem', $_REQUEST )		? $_REQUEST[ 'islem' ]		: 'ekle';
$id		= array_key_exists( 'id', $_REQUEST )	? $_REQUEST[ 'id' ]	: 0;
$dil	 			= array_key_exists( 'dil', $_REQUEST ) 	? $_REQUEST[ 'dil' ] : "";
$dil	 			= $dil == "_tr" ? "" : $dil;

if( $_REQUEST[ 'tarih' ] == '' ) $tarih = NULL;
else $tarih = date( 'Y-m-d', strtotime( $_REQUEST[ 'tarih' ] ) );
 
$SQL_ekle = <<< SQL
INSERT INTO
	tb_duyurular
SET
	 baslik$dil		= ?
	,tarih		= ?
	,icerik$dil		= ?
	,birim_id	= ?
	,foto	= ?
SQL;

$SQL_guncelle = <<< SQL
UPDATE
	tb_duyurular
SET
	 baslik$dil		= ?
	,tarih		= ?
	,icerik$dil		= ?
	,birim_id	= ?
WHERE
	id = ?
SQL;

$SQL_foto_guncelle = <<< SQL
UPDATE
	tb_duyurular
SET
	 foto		= ?
WHERE
	id = ?
SQL;

$SQL_sil = <<< SQL
DELETE FROM
	tb_duyurular
WHERE
	id = ?
SQL;


$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => 0 );

switch( $islem ) {
	case 'ekle':
		if( isset($_FILES["foto"]) and $_FILES["foto"]['size']>0 ){
			$dosya_adi = uniqid().basename($_FILES["foto"]["name"]);
			$target_dir = "../../resimler/duyurular/";
			$target_file = $target_dir . $dosya_adi;
			move_uploaded_file($_FILES["foto"]["tmp_name"], $target_file);
		}else{
			$dosya_adi = "";
		}
		$sorgu_sonuc = $vt->insert( $SQL_ekle, array(
			 $_REQUEST[	'baslik' ]
			,$tarih
			,$_REQUEST[	'icerik' ]
			,$_REQUEST[	'birim_id' ]
			,$dosya_adi
		) );


		if( $sorgu_sonuc[ 0 ] ){
			$___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt eklenirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		}else{
			$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => $sorgu_sonuc[ 2 ] ); 
		}
		$id = $sorgu_sonuc[ 2 ]; 
	break;
	case 'guncelle':	
		$sorgu_sonuc = $vt->update( $SQL_guncelle, array(
			 $_REQUEST[	'baslik' ]
			,$tarih
			,$_REQUEST[	'icerik' ]
			,$_REQUEST[	'birim_id' ]
			,$id
		) );

		if( isset($_FILES["foto"]) and $_FILES["foto"]['size']>0 ){
			$dosya_adi = uniqid().basename($_FILES["foto"]["name"]);
			$target_dir = "../../resimler/duyurular/";
			$target_file = $target_dir . $dosya_adi;
			move_uploaded_file($_FILES["foto"]["tmp_name"], $target_file);

			$sorgu_sonuc2 = $vt->update( $SQL_foto_guncelle, array(
				 $dosya_adi
				,$id
			) );

		}

		if( $sorgu_sonuc[ 0 ] ){
			$___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt güncellenirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		}else{
			$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => $sorgu_sonuc[ 2 ] );
		}
	break;
	case 'sil':
		//Silinecek olan tarife giriş yapılan firmaya mı ait oldugu kontrol ediliyor Eger firmaya ait ise silinecektir.
			$sorgu_sonuc = $vt->delete( $SQL_sil, array( $id ) );
			if( $sorgu_sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt silinrken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );

}
$_SESSION[ 'sonuclar' ] 		= $___islem_sonuc;
$_SESSION[ 'sonuclar' ][ 'id' ] = $id;
if( $islem == "sil" )
header( "Location:../../index.php?modul=duyurular&birim_id=".$_REQUEST['birim_id']."&birim_adi=".$_REQUEST['birim_adi']);
else
header( "Location:../../index.php?modul=duyurular&islem=guncelle&id=".$id."&birim_id=".$_REQUEST['birim_id']."&birim_adi=".$_REQUEST['birim_adi']);
?>