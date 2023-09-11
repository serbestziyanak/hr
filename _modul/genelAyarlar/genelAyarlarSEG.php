<?php
include "../../_cekirdek/fonksiyonlar.php";
$vt		= new VeriTabani();
$fn		= new Fonksiyonlar();

echo "<pre>";
var_dump($_REQUEST);
echo "</pre>";

if(basename($_FILES["logo"]["name"])=="")
echo "yok";
else
	echo "var";
//exit;

$islem		= array_key_exists( 'islem', $_REQUEST )		? $_REQUEST[ 'islem' ]		: 'ekle';
$birim_id 	= array_key_exists( 'birim_id', $_REQUEST )	? $_REQUEST[ 'birim_id' ]	: 0;

if( $_REQUEST[ 'tarih' ] == '' ) $tarih = NULL;
else $tarih = date( 'Y-m-d', strtotime( $_REQUEST[ 'tarih' ] ) );

$SQL_ekle = <<< SQL
INSERT INTO
	tb_genel_ayarlar
SET
	 birim_id				= ?
	,logo					= ?
	,slogan					= ?
	,footer_logo			= ?
	,footer_sag_logo		= ?
	,footer_sag_logo_link	= ?
	,map					= ?
	,adres					= ?
	,tel					= ?
	,email					= ?
	,facebook				= ?
	,twitter				= ?
	,instagram				= ?
	,linkedin				= ?
	,youtube				= ?
	,anasayfa_baslik		= ?
	,anasayfa_icerik		= ?
SQL;

$SQL_guncelle = <<< SQL
UPDATE
	tb_genel_ayarlar
SET
	 logo					= ?
	,slogan					= ?
	,footer_logo			= ?
	,footer_sag_logo		= ?
	,footer_sag_logo_link	= ?
	,map					= ?
	,adres					= ?
	,tel					= ?
	,email					= ?
	,facebook				= ?
	,twitter				= ?
	,instagram				= ?
	,linkedin				= ?
	,youtube				= ?
	,anasayfa_baslik		= ?
	,anasayfa_icerik		= ?
WHERE
	birim_id = ?
SQL;



$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => 0 );

switch( $islem ) {
	case 'ekle':	
		$target_dir = "../../resimler/logolar/";
		$logo = $_REQUEST['logo_eski'];
		$footer_logo = $_REQUEST['footer_logo_eski'];
		$footer_sag_logo = $_REQUEST['footer_sag_logo_eski'];

		if(basename($_FILES["logo"]["name"])!=""){
			$logo = "logo_".uniqid().basename($_FILES["logo"]["name"]);
			$target_file = $target_dir . $logo;
			move_uploaded_file($_FILES["logo"]["tmp_name"], $target_file);
		}
		if(basename($_FILES["footer_logo"]["name"])!=""){
			$footer_logo = "footer_logo_".uniqid().basename($_FILES["footer_logo"]["name"]);
			$target_file = $target_dir . $footer_logo;
			move_uploaded_file($_FILES["footer_logo"]["tmp_name"], $target_file);
		}
		if(basename($_FILES["footer_sag_logo"]["name"])!=""){
			$footer_sag_logo = "footer_sag_logo_".uniqid().basename($_FILES["footer_sag_logo"]["name"]);
			$target_file = $target_dir . $footer_sag_logo;
			move_uploaded_file($_FILES["footer_sag_logo"]["tmp_name"], $target_file);
		}

		$sorgu_sonuc = $vt->insert( $SQL_ekle, array(
			 $birim_id
			,$logo
			,$_REQUEST[	'slogan' ]
			,$footer_logo
			,$footer_sag_logo
			,$_REQUEST[	'footer_sag_logo_link' ]
			,$_REQUEST[	'map' ]
			,$_REQUEST[	'adres' ]
			,$_REQUEST[	'tel' ]
			,$_REQUEST[	'email' ]
			,$_REQUEST[	'facebook' ]
			,$_REQUEST[	'twitter' ]
			,$_REQUEST[	'instagram' ]
			,$_REQUEST[	'linkedin' ]
			,$_REQUEST[	'youtube' ]
			,$_REQUEST[	'anasayfa_baslik' ]
			,$_REQUEST[	'anasayfa_icerik' ]
		) );

		if( $sorgu_sonuc[ 0 ] ){
			$___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt güncellenirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		}else{
			$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => $sorgu_sonuc[ 2 ] );
		}
	break;
	case 'guncelle':	
		$target_dir = "../../resimler/logolar/";
		$logo = $_REQUEST['logo_eski'];
		$footer_logo = $_REQUEST['footer_logo_eski'];
		$footer_sag_logo = $_REQUEST['footer_sag_logo_eski'];

		if(basename($_FILES["logo"]["name"])!=""){
			$logo = "logo_".uniqid().basename($_FILES["logo"]["name"]);
			$target_file = $target_dir . $logo;
			move_uploaded_file($_FILES["logo"]["tmp_name"], $target_file);
		}
		if(basename($_FILES["footer_logo"]["name"])!=""){
			$footer_logo = "footer_logo_".uniqid().basename($_FILES["footer_logo"]["name"]);
			$target_file = $target_dir . $footer_logo;
			move_uploaded_file($_FILES["footer_logo"]["tmp_name"], $target_file);
		}
		if(basename($_FILES["footer_sag_logo"]["name"])!=""){
			$footer_sag_logo = "footer_sag_logo_".uniqid().basename($_FILES["footer_sag_logo"]["name"]);
			$target_file = $target_dir . $footer_sag_logo;
			move_uploaded_file($_FILES["footer_sag_logo"]["tmp_name"], $target_file);
		}

		$sorgu_sonuc = $vt->update( $SQL_guncelle, array(
			 $logo
			,$_REQUEST[	'slogan' ]
			,$footer_logo
			,$footer_sag_logo
			,$_REQUEST[	'footer_sag_logo_link' ]
			,$_REQUEST[	'map' ]
			,$_REQUEST[	'adres' ]
			,$_REQUEST[	'tel' ]
			,$_REQUEST[	'email' ]
			,$_REQUEST[	'facebook' ]
			,$_REQUEST[	'twitter' ]
			,$_REQUEST[	'instagram' ]
			,$_REQUEST[	'linkedin' ]
			,$_REQUEST[	'youtube' ]
			,$_REQUEST[	'anasayfa_baslik' ]
			,$_REQUEST[	'anasayfa_icerik' ]
			,$birim_id
		) );

		if( $sorgu_sonuc[ 0 ] ){
			$___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt güncellenirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		}else{
			$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => $sorgu_sonuc[ 2 ] );
		}
	break;

}
$_SESSION[ 'sonuclar' ] 		= $___islem_sonuc;
$_SESSION[ 'sonuclar' ][ 'id' ] = $id;
header( "Location:../../index.php?modul=genelAyarlar&islem=guncelle&birim_id=".$_REQUEST['birim_id']."&birim_adi=".$_REQUEST['birim_adi']);
?>