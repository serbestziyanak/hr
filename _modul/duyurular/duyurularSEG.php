<?php
include "../../_cekirdek/fonksiyonlar.php";
$vt		= new VeriTabani();
$fn		= new Fonksiyonlar();

echo "<pre>";
var_dump($_REQUEST);
echo "</pre>";
//exit;

$islem	= array_key_exists( 'islem', $_REQUEST )		? $_REQUEST[ 'islem' ]		: 'ekle';
$id		= array_key_exists( 'id', $_REQUEST )	? $_REQUEST[ 'id' ]	: 0;

if( $_REQUEST[ 'tarih' ] == '' ) $tarih = NULL;
else $tarih = date( 'Y-m-d', strtotime( $_REQUEST[ 'tarih' ] ) );

$SQL_ekle = <<< SQL
INSERT INTO
	tb_duyurular
SET
	 baslik		= ?
	,tarih		= ?
	,icerik		= ?
	,birim_id	= ?
SQL;

$SQL_guncelle = <<< SQL
UPDATE
	tb_duyurular
SET
	 baslik		= ?
	,tarih		= ?
	,icerik		= ?
	,birim_id	= ?
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
		$sorgu_sonuc = $vt->insert( $SQL_ekle, array(
			 $_REQUEST[	'baslik' ]
			,$tarih
			,$_REQUEST[	'icerik' ]
			,$_REQUEST[	'birim_id' ]
		) );
		if( $sorgu_sonuc[ 0 ] ){
			$___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt eklenirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		}else{
			$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => $sorgu_sonuc[ 2 ] ); 
		}
		$id = $sorgu_sonuc[ 2 ]; 
	break;
	case 'guncelle':	
		$sorgu_sonuc = $vt->insert( $SQL_guncelle, array(
			 $_REQUEST[	'baslik' ]
			,$tarih
			,$_REQUEST[	'icerik' ]
			,$_REQUEST[	'birim_id' ]
			,$id
		) );

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