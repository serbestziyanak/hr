<?php
$fn	= new Fonksiyonlar();
$vt = new VeriTabani();


/* SEG dosyalarından gelen mesaj */
if( array_key_exists( 'sonuclar', $_SESSION ) ) {
	$mesaj								= $_SESSION[ 'sonuclar' ][ 'mesaj' ];
	$mesaj_turu							= $_SESSION[ 'sonuclar' ][ 'hata' ] ? 'kirmizi' 	: 'yesil';
	$_REQUEST[ 'personel_id' ]			= $_SESSION[ 'sonuclar' ][ 'id' ];
	unset( $_SESSION[ 'sonuclar' ] );
	echo "<script>mesajVer('$mesaj', '$mesaj_turu')</script>";
}


$islem					= array_key_exists( 'islem'		         ,$_REQUEST ) ? $_REQUEST[ 'islem' ]				: 'ekle';
$personel_id			= array_key_exists( 'personel_id' ,$_REQUEST ) ? $_REQUEST[ 'personel_id' ]	: 0;
$birim_id				= array_key_exists( 'birim_id' ,$_REQUEST ) ? $_REQUEST[ 'birim_id' ]	: 0;
$sayfa_id				= array_key_exists( 'sayfa_id' ,$_REQUEST ) ? $_REQUEST[ 'sayfa_id' ]	: 0;
$birim_adi				= array_key_exists( 'birim_adi' ,$_REQUEST ) ? $_REQUEST[ 'birim_adi' ]	: "";
$sayfa_adi				= array_key_exists( 'sayfa_adi' ,$_REQUEST ) ? $_REQUEST[ 'sayfa_adi' ]	: "";

if( $_SESSION[ 'kullanici_turu' ] == "personel"  ){
	if( $personel_id != $_SESSION[ 'kullanici_id' ] )
		$personel_id		= "";
}

$satir_renk					= $personel_id > 0	? 'table-warning'						: '';
$kaydet_buton_yazi			= $personel_id > 0	? 'Güncelle'							: 'Kaydet';
$kaydet_buton_cls			= $personel_id > 0	? 'btn btn-warning btn-sm pull-right'	: 'btn btn-success btn-sm pull-right';
$kaydet_buton_yetki_islem	= $personel_id > 0	? 'guncelle'									: 'kaydet';





$SQL_birim_agaci_getir = <<< SQL
SELECT
	*
FROM 
	tb_birim_agaci
SQL;

$SQL_birim_sayfalari_getir = <<< SQL
SELECT
	*
FROM 
	tb_birim_sayfalari
WHERE 
	birim_id = ?
SQL;

$SQL_sayfa_bilgileri = <<< SQL
SELECT 
	*
FROM 
	tb_birim_sayfalari
WHERE 
	id = ?
SQL;

$SQL_sayfa_icerik_bilgileri = <<< SQL
SELECT 
	*
FROM 
	tb_birim_sayfa_icerikleri
WHERE 
	sayfa_id 				= ?
SQL;


@$birim_agaclari 		= $vt->select($SQL_birim_agaci_getir, array(  ) )[ 2 ];
@$birim_sayfalari 		= $vt->select($SQL_birim_sayfalari_getir, array( $birim_id ) )[ 2 ];
@$sayfa_bilgileri 		= $vt->selectSingle($SQL_sayfa_bilgileri, array( $sayfa_id ) )[ 2 ];


@$sayfa_icerik_bilgileri = $vt->selectSingle( $SQL_sayfa_icerik_bilgileri, array( $sayfa_id ) )[ 2 ];	
if( $sayfa_id > 0 ){
	if( $sayfa_icerik_bilgileri['id'] > 0 )
		$islem = "icerik_guncelle";
	else
		$islem = "icerik_ekle";
}
		



?>

<div class="modal fade" id="sil_onay">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title"><?php echo dil_cevir( "Dikkat!", $dizi_dil, $sistem_dil ); ?></h4>
			</div>
			<div class="modal-body">
				<p><?php echo dil_cevir( "Bu kaydı silmek istediğinize emin misiniz?", $dizi_dil, $sistem_dil ); ?></p>
			</div>
			<div class="modal-footer justify-content-between">
				<button type="button" class="btn btn-default" data-dismiss="modal"><?php echo dil_cevir( "İptal", $dizi_dil, $sistem_dil ); ?></button>
				<a class="btn btn-danger btn-evet"><?php echo dil_cevir( "Evet", $dizi_dil, $sistem_dil ); ?></a>
			</div>
		</div>
	</div>
</div>


<script>
	/* Kayıt silme onay modal açar. */
	$( '#sil_onay' ).on( 'show.bs.modal', function( e ) {
		$( this ).find( '.btn-evet' ).attr( 'href', $( e.relatedTarget ).data( 'href' ) );
	} );
</script>



	<!--birim_sayfa EKLEME MODALI-->
	<div class="modal fade" id="kategori_ekle" modul= 'birimSayfalari' yetki_islem='duzenle' >
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header bg-success text-white">
					<h3 class="card-title">Yeni Sayfa Ekle<?php echo dil_cevir( "Yeni Sayfa Ekle", $dizi_dil, $sistem_dil ); ?></h3>
					<button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form class="form-horizontal" action = "_modul/birimSayfalari/birimSayfalariSEG.php" method = "POST">
					<div class="modal-body">
						<input type="hidden" id="yeni_kategori_ust_id"  name="ust_id">
						<input type="hidden" id="kategori_birim_id"  name="birim_id">
						<div class="form-group">
							<label class="control-label"><?php echo dil_cevir( "Üst Sayfa", $dizi_dil, $sistem_dil ); ?></label>
							<input required type="text" class="form-control" id="kategori_ad"  autocomplete="off" disabled>
						</div>

						<div class="form-group">
							<label class="control-label"><?php echo dil_cevir( "Adı", $dizi_dil, $sistem_dil ); ?> (TR)</label>
							<input required type="text" class="form-control" name ="adi"  autocomplete="off" >
						</div>
						<div class="form-group">
							<label class="control-label"><?php echo dil_cevir( "Adı", $dizi_dil, $sistem_dil ); ?> (KZ)</label>
							<input  type="text" class="form-control" name ="adi_kz"  autocomplete="off" >
						</div>
						<div class="form-group">
							<label class="control-label"><?php echo dil_cevir( "Adı", $dizi_dil, $sistem_dil ); ?> (EN)</label>
							<input  type="text" class="form-control" name ="adi_en"  autocomplete="off"">
						</div>
						<div class="form-group">
							<label class="control-label"><?php echo dil_cevir( "Adı", $dizi_dil, $sistem_dil ); ?> (RU)</label>
							<input  type="text" class="form-control" name ="adi_ru"  autocomplete="off" ">
						</div>
						<div class="form-group">
							<label  class="control-label"><?php echo dil_cevir( "Kategori Mi?", $dizi_dil, $sistem_dil ); ?> </label>
							<div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-focused bootstrap-switch-animate bootstrap-switch-off" >
								<div class="bootstrap-switch-container" >
									<input type="checkbox" name="kategori" data-bootstrap-switch="" data-off-color="danger" data-on-text="Kategori" data-off-text="Değil" data-on-color="success">
								</div>
							</div>
						</div>

					</div>
					<div class="modal-footer justify-content-between">
						<button type="button" class="btn btn-success" data-dismiss="modal"><?php echo dil_cevir( "İptal", $dizi_dil, $sistem_dil ); ?></button>
						<button  modul= 'birimSayfalari' yetki_islem='kaydet' type="submit" class="btn btn-danger"><?php echo dil_cevir( "Kaydet", $dizi_dil, $sistem_dil ); ?></button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>

	<!--birim_sayfa -->
	<div class="modal fade" id="kategori_duzenle" modul= 'birimSayfalari' yetki_islem='duzenle' >
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header bg-warning">
					<h4 class="card-title"><?php echo dil_cevir( "Sayfa Düzenle", $dizi_dil, $sistem_dil ); ?></h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form class="form-horizontal" action = "_modul/birimSayfalari/birimSayfalariSEG.php" method = "POST">
					<div class="modal-body">
						<input type="hidden" id="islem" name="islem">
						<input type="hidden" id="birim_sayfa_id" name="id">
						<input type="hidden" id="birim_id_duzenle" name="birim_id">

						<div class="form-group">
							<label class="control-label"><?php echo dil_cevir( "Adı", $dizi_dil, $sistem_dil ); ?> (TR)</label>
							<input required type="text" class="form-control" name ="adi"  autocomplete="off" id="kategori_ad_duzenle">
						</div>
						<div class="form-group">
							<label class="control-label"><?php echo dil_cevir( "Adı", $dizi_dil, $sistem_dil ); ?> (KZ)</label>
							<input  type="text" class="form-control" name ="adi_kz"  autocomplete="off" id="kategori_ad_duzenle_kz">
						</div>
						<div class="form-group">
							<label class="control-label"><?php echo dil_cevir( "Adı", $dizi_dil, $sistem_dil ); ?> (EN)</label>
							<input  type="text" class="form-control" name ="adi_en"  autocomplete="off" id="kategori_ad_duzenle_en">
						</div>
						<div class="form-group">
							<label class="control-label"><?php echo dil_cevir( "Adı", $dizi_dil, $sistem_dil ); ?> (RU)</label>
							<input  type="text" class="form-control" name ="adi_ru"  autocomplete="off" id="kategori_ad_duzenle_ru">
						</div>

					</div>
					<div class="modal-footer justify-content-between">
						<button type="button" class="btn btn-danger" data-dismiss="modal"><?php echo dil_cevir( "İptal", $dizi_dil, $sistem_dil ); ?></button>
						<button  modul= 'birimSayfalari' yetki_islem='duzenle' type="submit" class="btn btn-success"><?php echo dil_cevir( "Güncelle", $dizi_dil, $sistem_dil ); ?></button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>



<section class="content">
	<div class="container-fluid">
		<div class="row">
			<?php if( !isset($_REQUEST['birim_id']) ){ ?>
			<div class="col-md-3 p-0">
				<div class="card card-secondary">
					<div class="card-header">
						<h3 class="card-title"><?php echo dil_cevir( "Birimler", $dizi_dil, $sistem_dil ); ?></h3>
					</div>
					<div class="card-body p-0">
						<div class="overflow-auto" style="height:600px;">
							<table class="table table-sm table-hover text-sm">
							<tbody>
								<?php
								//var_dump($birim_sayfalari);
									function kategoriListele3( $kategoriler, $parent = 0, $renk = 0,$vt, $ogrenci_id, $sistem_dil){
										$sistem_dil2 = $sistem_dil == "_tr" ? "" : $sistem_dil ;
										$adi = "adi".$sistem_dil2;

										$html = "<tr class='expandable-body'>
														<td>
															<div class='p-0'>
																<table class='table table-hover'>
																	<tbody>";

										foreach ($kategoriler as $kategori){
											if( $kategori['ust_id'] == $parent ){
												if( $parent == 0 ) {
													$renk = 1;
												} 

												if( $kategori['kategori'] == 0){
													$html .= "
															<tr>
																<td class=' bg-renk7 p-1' >
																	$kategori[$adi]
																	<a modul= 'birimSayfalari' yetki_islem='birim_sec' href='index.php?modul=birimSayfalari&birim_id=$kategori[id]&birim_adi=$kategori[$adi]' onclick='event.stopPropagation();'  class='btn btn-dark float-right btn-xs ml-1' >Seç</a>
																</td>
															</tr>";									

												}
												if( $kategori['kategori'] == 1 ){
													if( $kategori['ust_id'] == 0 )
														$agac_acik = "true";
													else
														$agac_acik = "false";

													if( $kategori['grup'] == 1 )
														$birim_sec_butonu = "";
													else
														$birim_sec_butonu = "<a modul= 'birimSayfalari' yetki_islem='birim_sec' href='index.php?modul=birimSayfalari&birim_id=$kategori[id]&birim_adi=$kategori[$adi]' onclick='event.stopPropagation();'  class='btn btn-dark float-right btn-xs ml-1' >Seç</a>";

														$html .= "
																<tr data-widget='expandable-table' aria-expanded='$agac_acik' class='border-0'>
																	<td class='bg-renk$renk p-1'>																
																		$kategori[$adi]
																		$birim_sec_butonu
																	<i class='expandable-table-caret fas fa-caret-right fa-fw'></i>
																	</td>
																</tr>
															";								
														$renk++;
														$html .= kategoriListele3($kategoriler, $kategori['id'],$renk, $vt, $ogrenci_id, $sistem_dil);
														
														$renk--;
													
												}
											}

										}
										$html .= '
																</tbody>
															</table>
														</div>
													</td>
												</tr>';
										return $html;
									}
									if( count( $birim_agaclari ) ) 
										echo kategoriListele3($birim_agaclari,0,0, $vt, $ogrenci_id, $sistem_dil);
									

								?>
							</tbody>
							</table>
						</div>

					</div>

				</div>
			</div>
			<?php }else{ ?>
			<div class="col-md-3 p-0">
				<div class="card card-secondary">
					<div class="card-header">
						<h3 class="card-title"><?php echo dil_cevir( "Birim Sayfaları", $dizi_dil, $sistem_dil ); ?></h3>							
					</div>
					<div class="card-body p-1">
						<div class="overflow-auto" style="height:600px;">
							<table class="table table-sm table-hover text-sm">
							<tbody>
								<tr >
									<td class="bg-dark p-1">
										<?php echo dil_cevir( "Sayfalar", $dizi_dil, $sistem_dil ); ?>
										<a  modul= 'birimSayfalari' yetki_islem='kategori-ekle' href='#' class='btn btn-success float-right btn-xs KategoriEkle' data-id = "0" data-kategori_ad ='Ana Kategori' data-birim_id ='<?php echo $birim_id; ?>' data-modal='kategori_ekle'>Sayfa Ekle<?php echo dil_cevir( "asdasdasdasd", $dizi_dil, $sistem_dil ); ?></a>
									</td>
								</tr>	
								<?php
								//var_dump($birim_sayfalari);
									function kategoriListele4( $kategoriler, $parent = 0, $renk = 0,$vt, $birim_id, $birim_adi, $sistem_dil){
										$sistem_dil2 = $sistem_dil == "_tr" ? "" : $sistem_dil ;
										$adi = "adi".$sistem_dil2;

										if( $_SESSION[ 'kullanici_turu' ] == "ogrenci" ){
											$degerlendirme_ekle_class = "";
										}else{
											$degerlendirme_ekle_class = "degerlendirmeEkle";
										}
										$html = "<tr class='expandable-body'>
														<td>
															<div class='p-0'>
																<table class='table table-hover'>
																	<tbody>";

										foreach ($kategoriler as $kategori){
											if( $kategori[$adi] == "" )
												$turkce_ad_ekle = "<i>".$kategori['adi']."</i>";
											else
												$turkce_ad_ekle = "";

											if( $kategori['ust_id'] == $parent ){
												if( $parent == 0 ) {
													$renk = 1;
												} 

												if( $kategori['kategori'] == 0){
													$html .= "
															<tr>
																<td class=' bg-renk7 p-1' >
																	$kategori[$adi]$turkce_ad_ekle
																	<div class='btn-group float-right'>
																		<button type='button' class='btn btn-dark btn-xs dropdown-toggle' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false' >
																			İşlem
																		</button>
																		<div class='dropdown-menu'>
																			<a modul= 'birimSayfalari' yetki_islem='duzenle' href='#' id='$kategori[id]' data-id='$kategori[id]' class='dropdown-item modalAc' data-birim_id = '$birim_id' data-kategori_ad_duzenle='$kategori[adi]' data-kategori_ad_duzenle_kz='$kategori[adi_kz]' data-kategori_ad_duzenle_en='$kategori[adi_en]' data-kategori_ad_duzenle_ru='$kategori[adi_ru]' data-modal='kategori_duzenle' data-islem='guncelle' data-kategori='$kategori[kategori]'>Düzenle</a>
																			<button modul= 'birimSayfalari' yetki_islem='sil' class='dropdown-item float-right' data-href='_modul/birimSayfalari/birimSayfalariSEG.php?islem=sil&id=$kategori[id]&birim_id=$birim_id' data-toggle='modal' data-target='#sil_onay'>Sil</button>
																			<div class='dropdown-divider'></div>
																			<a modul= 'birimSayfalari' yetki_islem='icerik_duzenle' class='dropdown-item' href='index.php?modul=birimSayfalari&birim_id=$birim_id&birim_adi=$birim_adi&sayfa_id=$kategori[id]&sayfa_adi=$kategori[$adi]'>İçeriği Düzenle</a>
																		</div>
																	</div>											
																	
																</td>
															</tr>";									

												}
												if( $kategori['kategori'] == 1 ){

														$html .= "
																<tr data-widget='expandable-table' aria-expanded='true' class='border-0'>
																	<td class='bg-renk$renk p-1'>
																		$kategori[$adi]$turkce_ad_ekle
																		<div class='btn-group float-right'>
																			<button type='button' class='btn btn-dark btn-xs dropdown-toggle' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false' >
																				İşlem
																			</button>
																			<div class='dropdown-menu'>
																				<a modul= 'birimSayfalari' yetki_islem='kategori-ekle' href='#' class='dropdown-item KategoriEkle' data-birim_id = '$birim_id' id='$kategori[id]' data-id='$kategori[id]' data-kategori_ad ='$kategori[$adi]' data-ders_id='$kategori[ders_id]' data-modal='kategori_ekle' onclick='event.stopPropagation();' >Sayfa Ekle</a>
																				<a modul= 'birimSayfalari' yetki_islem='duzenle' href='#' id='$kategori[id]' data-birim_id = '$birim_id' data-id='$kategori[id]' data-ders_id='$kategori[ders_id]' class='dropdown-item modalAc' data-kategori_ad_duzenle='$kategori[adi]' data-kategori_ad_duzenle_kz='$kategori[adi_kz]' data-kategori_ad_duzenle_en='$kategori[adi_en]' data-kategori_ad_duzenle_ru='$kategori[adi_ru]' data-modal='kategori_duzenle' data-islem='guncelle' data-kategori ='$kategori[kategori]' onclick='event.stopPropagation();' >Düzenle</a>
																				<button modul= 'birimSayfalari' yetki_islem='sil' class='dropdown-item' data-href='_modul/birimSayfalari/birimSayfalariSEG.php?islem=sil&id=$kategori[id]&birim_id=$birim_id' data-toggle='modal' data-target='#sil_onay' onclick='$(#sil_onay).modal();event.stopPropagation();' >Sayfayı Sil</button>
																			</div>
																		</div>											
																	<i class='expandable-table-caret fas fa-caret-right fa-fw'></i>
																	</td>
																</tr>
															";								
														$renk++;
														$html .= kategoriListele4($kategoriler, $kategori['id'],$renk, $vt, $birim_id, $birim_adi, $sistem_dil);
														
														$renk--;
													
												}
											}

										}
										$html .= '
																</tbody>
															</table>
														</div>
													</td>
												</tr>';
										return $html;
									}
									if( count( $birim_sayfalari ) ) 
										echo kategoriListele4($birim_sayfalari,0,0, $vt, $birim_id,$birim_adi, $sistem_dil);
									

								?>
							</tbody>
							</table>

						</div>

					</div>

				</div>
			</div>
			<?php } ?>
			<div class="col-md-9">
				<div class="card card-olive" id = "card_personeller">
					<div class="card-header">
						<h3 class="card-title"><?php echo $birim_adi." / ".$sayfa_adi ?></h3>
					</div>

					<form class="form-horizontal" action = "_modul/birimSayfalari/birimSayfalariSEG.php" method = "POST" enctype="multipart/form-data">
					<?php if( $birim_id > 0 ){ ?>

					<div class="card-body">
						<?php foreach( array_keys($sayfa_icerik_bilgileri) as $anahtar ){ ?>
						<input type="hidden"  name="<?php echo $anahtar;  ?>" value='<?php echo $sayfa_icerik_bilgileri[$anahtar];  ?>'>
						<?php } ?>
						<div class="form-group">
							<label class="control-label"><?php echo dil_cevir( "Dil", $dizi_dil, $sistem_dil ); ?></label>
							<select class="form-control" name = "dil" id="dil" required onchange="dil_degistir(this);">
								<option value="_tr" <?php if( $_REQUEST['dil'] == "" ) echo "selected"; ?> >Türkçe</option>
								<option value="_kz" <?php if( $_REQUEST['dil'] == "_kz" ) echo "selected"; ?> >қазақ</option>
								<option value="_en" <?php if( $_REQUEST['dil'] == "_en" ) echo "selected"; ?> >English</option>
								<option value="_ru" <?php if( $_REQUEST['dil'] == "_ru" ) echo "selected"; ?> >Россия</option>
							</select>
						</div>

						<input type = "hidden" name = "islem" value = "<?php echo $islem; ?>" >
						<input type = "hidden" name = "birim_id" value = "<?php echo $birim_id; ?>">
						<input type = "hidden" name = "sayfa_id" value = "<?php echo $sayfa_id; ?>">
						<input type = "hidden" name = "birim_adi" value = "<?php echo $birim_adi; ?>">
						<input type = "hidden" name = "sayfa_adi" value = "<?php echo $sayfa_adi; ?>">
						<h5 class="float-left text-olive"><?php echo dil_cevir( "Sayfa Ayarları", $dizi_dil, $sistem_dil ); ?></h5><br><hr style="border: 2px solid green; border-radius: 5px; width:100%;" >
						<div class="card card-body">
							<div class="form-group clearfix">
								<div class="icheck-success d-inline">
									<input type="checkbox" id="checkboxPrimary1" name="aktif" <?php if( $sayfa_bilgileri[ "aktif" ] == 1 ) echo "checked"; if( $islem == "icerik_ekle" ) echo "checked";  ?> >
									<label for="checkboxPrimary1">
										<?php echo dil_cevir( "Aktif", $dizi_dil, $sistem_dil ); ?>
									</label>
									<small class="form-text text-muted"><?php echo dil_cevir( "İşaretlenmezse Sayfa Yayınlanmaz", $dizi_dil, $sistem_dil ); ?></small>
								</div>
							</div>
							<div class="form-group clearfix">
								<div class="icheck-primary d-inline">
									<input type="checkbox" id="checkboxPrimary2" name="harici" <?php if( $sayfa_bilgileri[ "harici" ] == 1 ) echo "checked"; ?> >
									<label for="checkboxPrimary2">
										<?php echo dil_cevir( "Harici Sayfa", $dizi_dil, $sistem_dil ); ?>
									</label>
									<small class="form-text text-muted"><?php echo dil_cevir( "Menüde görünmeyecek sayfalar için işaretlenmelidir.", $dizi_dil, $sistem_dil ); ?></small>
								</div>
							</div>
							<div class="form-group clearfix">
								<div class="icheck-secondary d-inline">
									<input type="checkbox" id="link_check" name="link" onclick="link_aktif(this);" <?php if( $sayfa_bilgileri[ "link" ] == 1 ) echo "checked"; ?> >
									<label for="link_check">
										<?php echo dil_cevir( "Link", $dizi_dil, $sistem_dil ); ?>
									</label>
								</div>
							</div>
							<div class="form-group">
								<input required type="text" id="link_yonlendirme" placeholder="Link" class="form-control form-control-sm" name ="link_url" value = "<?php echo $sayfa_bilgileri[ "link_url" ]; ?>"  autocomplete="off" <?php if( $sayfa_bilgileri[ "link" ] == 1 ) echo "";else echo "disabled"; if( $islem == "icerik_ekle" ) echo "disabled";  ?>>
								<small class="form-text text-muted"><?php echo dil_cevir( "Bu alana Link eklenirse menü bu linke yönlendirilecektir.", $dizi_dil, $sistem_dil ); ?></small>
							</div>

						</div>
						<br><h5 class="float-right text-olive"><?php echo dil_cevir( "Sayfa İçeriği", $dizi_dil, $sistem_dil ); ?></h5><br><hr style="border: 2px solid green; border-radius: 5px; width:100%;" >
						<div class="form-group">
							<label class="control-label"><?php echo dil_cevir( "Başlık", $dizi_dil, $sistem_dil ); ?></label>
							<input required type="text" placeholder="Başlık" class="form-control form-control-sm" name ="baslik" id ="baslik" value = "<?php echo $sayfa_icerik_bilgileri[ "baslik" ]; ?>"  autocomplete="off">
						</div>
						<div class="form-group">
							<label class="control-label"><?php echo dil_cevir( "İçerik", $dizi_dil, $sistem_dil ); ?></label>
							<style>
								.ck-editor__editable_inline:not(.ck-comment__input *) {
									height: 600px;
									overflow-y: auto;
								}
							</style>
							<textarea id="editor" style="display:none" name="icerik"  >
							<?php echo $sayfa_icerik_bilgileri[ "icerik" ]; ?>
							</textarea>
						</div>
					</div>

					<div class="card-footer">
						<button modul= 'birimSayfalari' yetki_islem="<?php echo $kaydet_buton_yetki_islem; ?>" type="submit" class="<?php echo $kaydet_buton_cls; ?>"><span class="fa fa-save"></span> <?php echo $kaydet_buton_yazi; ?></button>
					</div>
                        <?php }else{ ?>
                            <div class="text-center" style="height:600px;">
                                <h2> <?php echo dil_cevir( "Lütfen Birim Seçiniz", $dizi_dil, $sistem_dil ); ?></h2>
                                <br>
                                <div class="spinner-grow text-primary " role="status">
                                <span class="sr-only">Loading...</span>
                                </div>
                                <div class="spinner-grow text-secondary" role="status">
                                <span class="sr-only">Loading...</span>
                                </div>
                                <div class="spinner-grow text-success" role="status">
                                <span class="sr-only">Loading...</span>
                                </div>
                                <div class="spinner-grow text-danger" role="status">
                                <span class="sr-only">Loading...</span>
                                </div>
                                <div class="spinner-grow text-warning" role="status">
                                <span class="sr-only">Loading...</span>
                                </div>
                                <div class="spinner-grow text-info" role="status">
                                <span class="sr-only">Loading...</span>
                                </div>
                                <div class="spinner-grow text-dark" role="status">
                                <span class="sr-only">Loading...</span>
                                </div>
                            </div>
                        <?php } ?>

					</form>

				</div>
			</div>
		</div>
	</div>
</section>

	<script>
		function link_aktif(eleman){
			if(eleman.checked)
				document.getElementById("link_yonlendirme").disabled = false;
			else
				document.getElementById("link_yonlendirme").disabled = true;
		}
        $('.soru').summernote();

		$( '#sil_onay' ).on( 'show.bs.modal', function( e ) {
			event.stopPropagation();
			$( this ).find( '.btn-evet' ).attr( 'href', $( e.relatedTarget ).data( 'href' ) );
		} );
		
	    $('.KategoriEkle').on("click", function(e) { 
	        var ust_id      = $(this).data("id");
	        var birim_id	= $(this).data("birim_id");
	        var kategori_ad = $(this).data("kategori_ad");
	        var modal 		= $(this).data("modal");

	        document.getElementById("yeni_kategori_ust_id").value 	 = ust_id;
	        document.getElementById("kategori_ad").value = kategori_ad;
	        document.getElementById("kategori_birim_id").value = birim_id;
	        $('#'+ modal).modal( "show" );
	    });
		
		$('.modalAc').on("click", function(e) { 
			var modal 		= $(this).data("modal");
			var kategori_ad = $(this).data("kategori_ad_duzenle");
			var kategori_ad_kz = $(this).data("kategori_ad_duzenle_kz");
			var kategori_ad_en = $(this).data("kategori_ad_duzenle_en");
			var kategori_ad_ru = $(this).data("kategori_ad_duzenle_ru");
			var modal 		= $(this).data("modal");
			var kategori 	= $(this).data("kategori");
			var islem 		= $(this).data("islem");
			var birim_sayfa_id = $(this).data("id");
			var birim_id = $(this).data("birim_id");

			if ( kategori == 1 ) {
				$( "[name='kategori_duzenle']" ).bootstrapSwitch( 'state', true, true);
			}else{
				$( "[name='kategori_duzenle']" ).bootstrapSwitch( 'state', false, false);
			}

			document.getElementById("birim_sayfa_id").value 		= birim_sayfa_id;
			document.getElementById("kategori_ad_duzenle").value 	= kategori_ad;
			document.getElementById("kategori_ad_duzenle_kz").value 	= kategori_ad_kz;
			document.getElementById("kategori_ad_duzenle_en").value 	= kategori_ad_en;
			document.getElementById("kategori_ad_duzenle_ru").value 	= kategori_ad_ru;
			document.getElementById("birim_id_duzenle").value 		= birim_id;
			document.getElementById("islem").value 					= islem;
		        
		    $('#'+ modal).modal( "show" );
	    });

		$('.gorevli').on("click", function(e) { 
	        var id 	        = $(this).data("id");
	        var data_islem  = $(this).data("islem");
	        var data_url    = $(this).data("url");
	        var data_modul  = $(this).data("modul");
	        var div         = $(this).data("div");
	        $("#"+div).empty();
	        $.post(data_url, { islem : data_islem, id : id, modul : data_modul }, function (response) {
	            $("#"+div).append(response);
	            $('#gorevliEkleModal').modal( "show" )
	        });
	    });
	    function dersSecimi(ders_id){
			var  url 		= window.location;
			var origin		= url.origin;
			var path		= url.pathname;
			var search		= (new URL(document.location)).searchParams;
			var modul   	= search.get('modul');
			var ders_id  	= "&ders_id="+ders_id;
			
			window.location.replace(origin + path+'?modul='+modul+''+ders_id);
		}


	</script>


<script type="text/javascript">
	var simdi = new Date(); 
	//var simdi="11/25/2015 15:58";
	$(function () {
		$('#dogum_tarihi').datetimepicker({
			//defaultDate: simdi,
			format: 'DD.MM.yyyy',
			icons: {
			time: "far fa-clock",
			date: "fa fa-calendar",
			up: "fa fa-arrow-up",
			down: "fa fa-arrow-down"
			}
		});
	});
	
	$(function () {
		$('#ise_baslama_tarihi').datetimepicker({
			//defaultDate: simdi,
			format: 'DD.MM.yyyy',
			icons: {
			time: "far fa-clock",
			date: "fa fa-calendar",
			up: "fa fa-arrow-up",
			down: "fa fa-arrow-down"
			}
		});
	});
	
	$(function () {
		$('#sozlesme_baslama_tarihi').datetimepicker({
			//defaultDate: simdi,
			format: 'DD.MM.yyyy',
			icons: {
			time: "far fa-clock",
			date: "fa fa-calendar",
			up: "fa fa-arrow-up",
			down: "fa fa-arrow-down"
			}
		});
	});

	$(function () {
		$('#sozlesme_bitis_tarihi').datetimepicker({
			//defaultDate: simdi,
			format: 'DD.MM.yyyy',
			icons: {
			time: "far fa-clock",
			date: "fa fa-calendar",
			up: "fa fa-arrow-up",
			down: "fa fa-arrow-down"
			}
		});
	});
	
	$(function () {
		$('#tez_tarihi').datetimepicker({
			//defaultDate: simdi,
			format: 'DD.MM.yyyy',
			icons: {
			time: "far fa-clock",
			date: "fa fa-calendar",
			up: "fa fa-arrow-up",
			down: "fa fa-arrow-down"
			}
		});
	});
	

	
</script>
<script type="text/javascript">

// ESC tuşuna basınca formu temizle
document.addEventListener( 'keydown', function( event ) {
	if( event.key === "Escape" ) {
		document.getElementById( 'yeni_ogretim_elemanlari' ).click();
	}
});

var tbl_personeller = $( "#tbl_personeller" ).DataTable( {
	"responsive": true, "lengthChange": true, "autoWidth": true,
	"stateSave": true,
	"pageLength" : 25,
	//"buttons": ["excel", "pdf", "print","colvis"],

	buttons : [
		{
			extend	: 'colvis',
			text	: "Alan Seçiniz"
			
		},
		{
			extend	: 'excel',
			text 	: 'Excel',
			exportOptions: {
				columns: ':visible'
			},
			title: function(){
				return "Fakülte Listesi";
			}
		},
		{
			extend	: 'print',
			text	: 'Yazdır',
			exportOptions : {
				columns : ':visible'
			},
			title: function(){
				return "Fakülte Listesi";
			}
		}
	],
	"language": {
		"decimal"			: "",
		"emptyTable"		: "Gösterilecek kayıt yok!",
		"info"				: "Toplam _TOTAL_ kayıttan _START_ ve _END_ arası gösteriliyor",
		"infoEmpty"			: "Toplam 0 kayıttan 0 ve 0 arası gösteriliyor",
		"infoFiltered"		: "",
		"infoPostFix"		: "",
		"thousands"			: ",",
		"lengthMenu"		: "Show _MENU_ entries",
		"loadingRecords"	: "Yükleniyor...",
		"processing"		: "İşleniyor...",
		"search"			: "Ara:",
		"zeroRecords"		: "Eşleşen kayıt bulunamadı!",
		"paginate"			: {
			"first"		: "İlk",
			"last"		: "Son",
			"next"		: "Sonraki",
			"previous"	: "Önceki"
		}
	}
} ).buttons().container().appendTo('#tbl_personeller_wrapper .col-md-6:eq(0)');



$('#card_personeller').on('maximized.lte.cardwidget', function() {
	var tbl_personeller = $( "#tbl_personeller" ).DataTable();
	var column = tbl_personeller.column(  tbl_personeller.column.length - 1 );
	column.visible( ! column.visible() );
	var column = tbl_personeller.column(  tbl_personeller.column.length - 2 );
	column.visible( ! column.visible() );
});

$('#card_personeller').on('minimized.lte.cardwidget', function() {
	var tbl_personeller = $( "#tbl_personeller" ).DataTable();
	var column = tbl_personeller.column(  tbl_personeller.column.length - 1 );
	column.visible( ! column.visible() );
	var column = tbl_personeller.column(  tbl_personeller.column.length - 2 );
	column.visible( ! column.visible() );
} );


</script>
        <script>
            // This sample still does not showcase all CKEditor&nbsp;5 features (!)
            // Visit https://ckeditor.com/docs/ckeditor5/latest/features/index.html to browse all the features.
            CKEDITOR.ClassicEditor.create(document.getElementById("editor"), {
                // https://ckeditor.com/docs/ckeditor5/latest/features/toolbar/toolbar.html#extended-toolbar-configuration-format
				ckfinder: {
					uploadUrl: '../../plugins/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files&responseType=json'
				},
                toolbar: {
                    items: [
                        'exportPDF','exportWord', '|',
						'ckfinder', 'imageUpload',
                        'findAndReplace', 'selectAll', '|',
                        'heading', '|',
                        'bold', 'italic', 'strikethrough', 'underline', 'code', 'subscript', 'superscript', 'removeFormat', '|',
                        'bulletedList', 'numberedList', 'todoList', '|',
                        'outdent', 'indent', '|',
                        'undo', 'redo',
                        '-',
                        'fontSize', 'fontFamily', 'fontColor', 'fontBackgroundColor', 'highlight', '|',
                        'alignment', '|',
                        'link', 'insertImage', 'blockQuote', 'insertTable', 'mediaEmbed', 'codeBlock', 'htmlEmbed', '|',
                        'specialCharacters', 'horizontalLine', 'pageBreak', '|',
                        'textPartLanguage', '|',
                        'sourceEditing'
                    ],
                    shouldNotGroupWhenFull: true
                },
                // Changing the language of the interface requires loading the language file using the <script> tag.
                // language: 'es',
                list: {
                    properties: {
                        styles: true,
                        startIndex: true,
                        reversed: true
                    }
                },
                // https://ckeditor.com/docs/ckeditor5/latest/features/headings.html#configuration
                heading: {
                    options: [
                        { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                        { model: 'heading1', view: 'h1', title: 'Heading 1', class: 'ck-heading_heading1' },
                        { model: 'heading2', view: 'h2', title: 'Heading 2', class: 'ck-heading_heading2' },
                        { model: 'heading3', view: 'h3', title: 'Heading 3', class: 'ck-heading_heading3' },
                        { model: 'heading4', view: 'h4', title: 'Heading 4', class: 'ck-heading_heading4' },
                        { model: 'heading5', view: 'h5', title: 'Heading 5', class: 'ck-heading_heading5' },
                        { model: 'heading6', view: 'h6', title: 'Heading 6', class: 'ck-heading_heading6' }
                    ]
                },
                // https://ckeditor.com/docs/ckeditor5/latest/features/editor-placeholder.html#using-the-editor-configuration
                placeholder: 'Welcome to CKEditor&nbsp;5!',
                // https://ckeditor.com/docs/ckeditor5/latest/features/font.html#configuring-the-font-family-feature
                fontFamily: {
                    options: [
                        'default',
                        'Arial, Helvetica, sans-serif',
                        'Courier New, Courier, monospace',
                        'Georgia, serif',
                        'Lucida Sans Unicode, Lucida Grande, sans-serif',
                        'Tahoma, Geneva, sans-serif',
                        'Times New Roman, Times, serif',
                        'Trebuchet MS, Helvetica, sans-serif',
                        'Verdana, Geneva, sans-serif'
                    ],
                    supportAllValues: true
                },
                // https://ckeditor.com/docs/ckeditor5/latest/features/font.html#configuring-the-font-size-feature
                fontSize: {
                    options: [ 10, 12, 14, 'default', 18, 20, 22 ],
                    supportAllValues: true
                },
                // Be careful with the setting below. It instructs CKEditor to accept ALL HTML markup.
                // https://ckeditor.com/docs/ckeditor5/latest/features/general-html-support.html#enabling-all-html-features
                htmlSupport: {
                    allow: [
                        {
                            name: /.*/,
                            attributes: true,
                            classes: true,
                            styles: true
                        }
                    ]
                },
                // Be careful with enabling previews
                // https://ckeditor.com/docs/ckeditor5/latest/features/html-embed.html#content-previews
                htmlEmbed: {
                    showPreviews: true
                },
                // https://ckeditor.com/docs/ckeditor5/latest/features/link.html#custom-link-attributes-decorators
                link: {
                    decorators: {
                        addTargetToExternalLinks: true,
                        defaultProtocol: 'https://',
                        toggleDownloadable: {
                            mode: 'manual',
                            label: 'Downloadable',
                            attributes: {
                                download: 'file'
                            }
                        }
                    }
                },
                // https://ckeditor.com/docs/ckeditor5/latest/features/mentions.html#configuration
                mention: {
                    feeds: [
                        {
                            marker: '@',
                            feed: [
                                '@apple', '@bears', '@brownie', '@cake', '@cake', '@candy', '@canes', '@chocolate', '@cookie', '@cotton', '@cream',
                                '@cupcake', '@danish', '@donut', '@dragée', '@fruitcake', '@gingerbread', '@gummi', '@ice', '@jelly-o',
                                '@liquorice', '@macaroon', '@marzipan', '@oat', '@pie', '@plum', '@pudding', '@sesame', '@snaps', '@soufflé',
                                '@sugar', '@sweet', '@topping', '@wafer'
                            ],
                            minimumCharacters: 1
                        }
                    ]
                },
                // The "super-build" contains more premium features that require additional configuration, disable them below.
                // Do not turn them on unless you read the documentation and know how to configure them and setup the editor.
                removePlugins: [
                    // These two are commercial, but you can try them out without registering to a trial.
                    // 'ExportPdf',
                    // 'ExportWord',
                    'CKBox',
                    //'CKFinder',
                    'EasyImage',
                    // This sample uses the Base64UploadAdapter to handle image uploads as it requires no configuration.
                    // https://ckeditor.com/docs/ckeditor5/latest/features/images/image-upload/base64-upload-adapter.html
                    // Storing images as Base64 is usually a very bad idea.
                    // Replace it on production website with other solutions:
                    // https://ckeditor.com/docs/ckeditor5/latest/features/images/image-upload/image-upload.html
                    // 'Base64UploadAdapter',
                    'RealTimeCollaborativeComments',
                    'RealTimeCollaborativeTrackChanges',
                    'RealTimeCollaborativeRevisionHistory',
                    'PresenceList',
                    'Comments',
                    'TrackChanges',
                    'TrackChangesData',
                    'RevisionHistory',
                    'Pagination',
                    'WProofreader',
                    // Careful, with the Mathtype plugin CKEditor will not load when loading this sample
                    // from a local file system (file://) - load this site via HTTP server if you enable MathType.
                    'MathType',
                    // The following features are part of the Productivity Pack and require additional license.
                    'SlashCommand',
                    'Template',
                    'DocumentOutline',
                    'FormatPainter',
                    'TableOfContents',
                    'PasteFromOfficeEnhanced'
                ]
            })
			.then( editor => {
				window.editor = editor;
			});
        </script>
	<script>
		var select = document.getElementById('dil');
		<?php if( isset($_REQUEST['dil'] )){ ?>
			select.value = "<?php echo $_REQUEST['dil'];  ?>";
		<?php }else{ ?>
			select.value = "<?php echo $sistem_dil;  ?>";
		<?php } ?>

		<?php if( isset($_REQUEST['sistem_dil'] )){ ?>
			select.value = "<?php echo $_REQUEST['sistem_dil'];  ?>";
		<?php } ?>

		select.dispatchEvent(new Event('change'));

		function dil_degistir(eleman){
			//alert("<?php echo $islem; ?>");
			if( eleman.value == "_tr" ) dil = ""; else dil = eleman.value;
			<?php if( $islem == "icerik_guncelle" ){ ?>
				document.getElementById("baslik").value = document.getElementsByName("baslik"+dil)[0].value;
				//document.getElementById("editor").value = document.getElementsByName("icerik"+dil)[0].value;
				window.editor.data.set(document.getElementsByName("icerik"+dil)[0].value);
			<?php } ?>
		}
	</script>
