<?php
include "../../_cekirdek/fonksiyonlar.php";
$vt		= new VeriTabani();
$fn		= new Fonksiyonlar();

echo "<pre>";
var_dump($_REQUEST);
echo "</pre>";
//exit;

$islem				= array_key_exists( 'islem', $_REQUEST )		? $_REQUEST[ 'islem' ]		: 'ekle';
$personel_id		= array_key_exists( 'personel_id', $_REQUEST )	? $_REQUEST[ 'personel_id' ]	: 0;
$birim_idler		= array_key_exists( 'birim_idler', $_REQUEST )	? implode(",",$_REQUEST[ 'birim_idler' ])	: "";
$SQL_ekle = <<< SQL
INSERT INTO
	tb_birim_yetkileri
SET
	 birim_idler				= ?
	,personel_id				= ?
SQL;

$SQL_guncelle = <<< SQL
UPDATE
	tb_birim_yetkileri
SET
	birim_idler				= ?
WHERE
	personel_id = ?
SQL;

$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => 0 );

switch( $islem ) {

	case 'guncelle':
		if( $_REQUEST['kayit_var']==1 ){
			$sorgu_sonuc = $vt->update( $SQL_guncelle, array(
					$birim_idler
					,$personel_id
			) );
		}else{
			$sorgu_sonuc = $vt->insert( $SQL_ekle, array(
					 $birim_idler
					,$personel_id
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
		$tek_personel_oku = $vt->select( $SQL_tek_personel_id_oku, array( $personel_id ) ) [ 2 ];
		if (count( $tek_personel_oku ) > 0) {
			$sorgu_sonuc = $vt->delete( $SQL_sil, array( 0, $personel_id ) );
			if( $sorgu_sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt silinrken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		}
	break;
}
$_SESSION[ 'sonuclar' ] 		= $___islem_sonuc;
$_SESSION[ 'sonuclar' ][ 'id' ] = $personel_id;
header( "Location:../../index.php?modul=birimYetkileri&islem=guncelle&personel_id=".$personel_id);
?>