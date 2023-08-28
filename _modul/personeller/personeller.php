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
$personel_id				= array_key_exists( 'personel_id' ,$_REQUEST ) ? $_REQUEST[ 'personel_id' ]	: 0;

if( $_SESSION[ 'kullanici_turu' ] == "personel"  ){
	if( $personel_id != $_SESSION[ 'kullanici_id' ] )
		$personel_id		= "";
}

$satir_renk					= $personel_id > 0	? 'table-warning'						: '';
$kaydet_buton_yazi			= $personel_id > 0	? 'Güncelle'							: 'Kaydet';
$kaydet_buton_cls			= $personel_id > 0	? 'btn btn-warning btn-sm pull-right'	: 'btn btn-success btn-sm pull-right';
$kaydet_buton_yetki_islem	= $personel_id > 0	? 'guncelle'									: 'kaydet';



$SQL_tum_personeller = <<< SQL
SELECT 
	o.*,
	CONCAT( o.adi, ' ', o.soyadi ) AS o_adi,
	u.adi as uzmanlik_dali_adi
FROM 
	tb_personeller AS o
LEFT JOIN tb_uzmanlik_dallari AS u ON u.id = o.uzmanlik_dali_id
WHERE
	o.universite_id 	= ? AND
	o.uzmanlik_dali_id 		= ? AND
	o.aktif 		  	= 1 
ORDER BY o.adi ASC
SQL;

$SQL_tum_personeller2 = <<< SQL
SELECT 
	o.*,
	CONCAT( o.adi, ' ', o.soyadi ) AS o_adi,
	u.adi as uzmanlik_dali_adi
FROM 
	tb_personeller AS o
LEFT JOIN tb_uzmanlik_dallari AS u ON u.id = o.uzmanlik_dali_id
WHERE
	o.universite_id 	= ? AND
	o.uzmanlik_dali_id 		= ? AND
	o.id 		= ? AND
	o.aktif 		  	= 1 
ORDER BY o.adi ASC
SQL;


$SQL_tek_personel_oku = <<< SQL
SELECT 
	*
FROM 
	tb_personeller
WHERE 
	id 				= ? AND
	aktif 			= 1 
SQL;

/*Üniversiteye Ait uzmanlik Dalını Listele*/
$SQL_uzmanlik_dallari = <<< SQL
SELECT
	*
FROM
	tb_uzmanlik_dallari
WHERE
	aktif 		  	= 1
SQL;

$SQL_uyruklar = <<< SQL
SELECT
	 *
FROM
	tb_uyruklar
ORDER BY sira
SQL;

$SQL_birim_agaci_getir = <<< SQL
SELECT
	*
FROM 
	tb_birim_agaci
SQL;

@$birim_agacilar 		= $vt->select($SQL_birim_agaci_getir, array(  ) )[ 2 ];



if( $_SESSION[ 'kullanici_turu' ] == "personel" ){
	$personeller					= $vt->select( $SQL_tum_personeller2, array( $_SESSION[ 'universite_id'], $_SESSION[ 'uzmanlik_dali_id'], $_SESSION[ 'kullanici_id'] ) )[ 2 ];
}else{
	$personeller					= $vt->select( $SQL_tum_personeller, array( $_SESSION[ 'universite_id'], $_SESSION[ 'uzmanlik_dali_id'] ) )[ 2 ];
}

$uzmanlik_dallari			= $vt->select( $SQL_uzmanlik_dallari, array(  ) )[ 2 ];
$uyruklar					= $vt->select( $SQL_uyruklar, array(  ) )[ 2 ];
@$tek_personel				= $vt->select( $SQL_tek_personel_oku, array( $personel_id ) )[ 2 ][ 0 ];		

?>

<div class="modal fade" id="sil_onay">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Lütfen Dikkat</h4>
			</div>
			<div class="modal-body">
				<p>Bu kaydı silmek istediğinize emin misiniz?</p>
			</div>
			<div class="modal-footer justify-content-between">
				<button type="button" class="btn btn-default" data-dismiss="modal">Hayır</button>
				<a class="btn btn-danger btn-evet">Evet</a>
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


<section class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-8">
				<div class="card card-olive" id = "card_personeller">
					<div class="card-header">
						<h3 class="card-title">Personeller</h3>
						<div class = "card-tools">
							<button type="button" data-toggle = "tooltip" title = "Tam sayfa göster" class="btn btn-tool" data-card-widget="maximize"><i class="fas fa-expand fa-lg"></i></button>
							<a id = "yeni_ogretim_elemanlari" data-toggle = "tooltip" title = "Yeni Personel Ekle" href = "?modul=personeller&islem=ekle" class="btn btn-tool" ><i class="fas fa-plus fa-lg"></i></a>
						</div>
					</div>
					<div class="card-body">
						<table id="tbl_personeller" class="table table-bordered table-hover table-sm" width = "100%" >
							<thead>
								<tr>
									<th style="width: 15px">#</th>
									<th>TC No</th>
									<th>Personel No</th>
									<th>Adı Soyadı</th>
									<th>Başlama Tarihi</th>
									<th>Uzmanlık Dalı</th>
									<th data-priority="1" style="width: 20px">Profil</th>
									<th data-priority="1" style="width: 20px">Düzenle</th>
									<th data-priority="1" style="width: 20px">Sil</th>
								</tr>
							</thead>
							<tbody>
								<?php $sayi = 1; foreach( $personeller AS $personel ) { ?>
								<tr oncontextmenu="fun();" class ="ogretim_elemanlari-Tr <?php if( $personel[ 'id' ] == $personel_id ) echo $satir_renk; ?>" data-id="<?php echo $personel[ 'id' ]; ?>">
									<td><?php echo $sayi++; ?></td>
									<td><?php echo $personel[ 'tc_kimlik_no' ]; ?></td>
									<td><?php echo $personel[ 'personel_no' ]; ?></td>
									<td><?php echo $personel[ 'o_adi' ]; ?></td>
									<td><?php echo $fn->tarihVer($personel[ 'baslama_tarihi' ]); ?></td>
									<td><?php echo $personel[ 'uzmanlik_dali_adi' ]; ?></td>
									<td align = "center">
										<a modul = 'personeller' yetki_islem="profil_goster" class="text-olive" href = "?modul=personelProfil&personel_id=<?php echo $personel[ 'id' ]; ?>" >
											<h5><i class="fas fa-id-card"></i></h5>
										</a>
									</td>
									<td align = "center">
										<a modul = 'personeller' yetki_islem="duzenle" class = "btn btn-sm btn-warning btn-xs" href = "?modul=personeller&islem=guncelle&personel_id=<?php echo $personel[ 'id' ]; ?>" >
											Düzenle
										</a>
									</td>
									<td align = "center">
										<button modul= 'personeller' yetki_islem="sil" class="btn btn-xs btn-danger" data-href="_modul/personeller/personellerSEG.php?islem=sil&personel_id=<?php echo $personel[ 'id' ]; ?>" data-toggle="modal" data-target="#sil_onay">Sil</button>
									</td>
								</tr>
								<?php } ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card card-secondary">
					<div class="card-header">
							<?php if( $personel_id > 0 ) { ?>
								<h3 class="card-title">Personel Düzenle</h3>
							<?php } else {
								echo "<h3 class='card-title'>Personel Ekle</h3>";
								}
							?>
							
					</div>
					<form class="form-horizontal" action = "_modul/personeller/personellerSEG.php" method = "POST" enctype="multipart/form-data">
						<div class="card-body">
							<input type = "hidden" name = "islem" value = "<?php echo $islem; ?>" >
							<input type = "hidden" name = "personel_id" value = "<?php echo $personel_id; ?>">
							<input type = "hidden" name = "universite_id" value = "<?php echo $_SESSION['universite_id']; ?>">
							<?php
								if( $islem == "guncelle" ){
									$resim_src = "resimler/".$tek_personel[ "resim" ];
								}else{
									$resim_src = "resimler/resim_yok.png";
								}
							?>
							<div class="text-center">
								<img class="img-fluid img-circle img-thumbnail mw-100"
									style="width:120px; cursor:pointer;"
									src="<?php echo $resim_src; ?>" 
									alt="User profile picture"
									id = "personel_kullanici_resim">
							</div>
							<p class="text-muted text-center">Fotoğraf değiştirmek için fotoğrafa tıklayınız</p>	
							<h3 class="profile-username text-center"><?php echo $tek_personel[ "adi" ]." ".$tek_personel[ "soyadi" ]; ?></h3>
							<input type="file" id="gizli_input_file" name = "input_personel_resim" style = "display:none;" name = "resim" accept="image/gif, image/jpeg, image/png"  onchange="resimOnizle(this)"; />

							<br><h5 class="float-right text-olive">Kişisel Bilgiler</h5><br><hr style="border: 2px solid green; border-radius: 5px; width:100%;" >
							<div class="form-group ">
								<label  class="control-label">Birimler</label>
								<div class="overflow-auto" style="height:300px;">
								<table class="table table-sm table-hover ">
								<tbody>
									<?php
									//var_dump($birim_agacilar);
										function kategoriListele3( $kategoriler, $parent = 0, $renk = 0,$vt, $SQL_ogrenci_birim_agaci_degerlendirme, $ogrenci_id){
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
												if( $kategori['ust_id'] == $parent ){
													if( $parent == 0 ) {
														$renk = 1;
													} 

													if( $kategori['kategori'] == 0){
														$html .= "
																<tr>
																	<td class=' bg-renk7' >
																			<div class='icheck-success d-inline'>
																				<input type='radio' class='form-control form-control-sm' id='icheck_$kategori[id]' name='birim_id' value='$kategori[id]' required>
																				<label for='icheck_$kategori[id]'>
																				$kategori[adi]
																				</label>
																			</div>
																	</td>
																</tr>";									

													}
													if( $kategori['kategori'] == 1 ){
														if( $kategori['ust_id'] == 0 )
															$agac_acik = "true";
														else
															$agac_acik = "false";

															$html .= "
																	<tr data-widget='expandable-table' aria-expanded='$agac_acik' class='border-0'>
																		<td class='bg-renk$renk'>																
																			$kategori[adi]
																		<i class='expandable-table-caret fas fa-caret-right fa-fw'></i>
																		</td>
																	</tr>
																";								
															$renk++;
															$html .= kategoriListele3($kategoriler, $kategori['id'],$renk, $vt, $SQL_ogrenci_birim_agaci_degerlendirme, $ogrenci_id);
															
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
										if( count( $birim_agacilar ) ) 
											echo kategoriListele3($birim_agacilar,0,0, $vt, $SQL_ogrenci_birim_agaci_degerlendirme, $ogrenci_id);
										

									?>
								</tbody>
								</table>
								</div>
							</div>
							<div class="form-group">
								<label  class="control-label">Uyruk</label>
								<select class="form-control form-control-sm select2" name = "uyruk_id" required>
									<option>Seçiniz...</option>
									<?php 
										foreach( $uyruklar AS $uyruk ){
											echo '<option value="'.$uyruk[ "id" ].'" '.( $tek_personel[ "uyruk_id" ] == $uyruk[ "id" ] ? "selected" : null) .'>'.$uyruk[ "adi" ].' ('.$uyruk[ "kisa_ad" ].')</option>';
										}

									?>
								</select>
							</div>

							<div class="form-group">
								<label class="control-label">In Numarası</label>
								<input required type="text" placeholder="In Numarası" class="form-control form-control-sm" name ="in_no" value = "<?php echo $tek_personel[ "in_no" ]; ?>"  autocomplete="off">
							</div>
							<div class="form-group">
								<label class="control-label">Vatandaşlık No</label>
								<input required type="text" placeholder="Vatandaşlık No" class="form-control form-control-sm" name ="vatandaslik_no" value = "<?php echo $tek_personel[ "vatandaslik_no" ]; ?>"  autocomplete="off">
							</div>

							<div class="form-group">
								<label class="control-label">Pasaport No</label>
								<input required type="text" placeholder="Pasaport No" class="form-control form-control-sm" name ="pasaport_no" value = "<?php echo $tek_personel[ "pasaport_no" ]; ?>"  autocomplete="off">
							</div>

							<div class="form-group">
								<label class="control-label">Adı</label>
								<input required type="text" placeholder="Adı" class="form-control form-control-sm" name ="adi" value = "<?php echo $tek_personel[ "adi" ]; ?>"  autocomplete="off">
							</div>
							<div class="form-group">
								<label class="control-label">Soyadı</label>
								<input required type="text" placeholder="Soyadı" class="form-control form-control-sm" name ="soyadi" value = "<?php echo $tek_personel[ "soyadi" ]; ?>"  autocomplete="off">
							</div>
							<div class="form-group">
								<label class="control-label">Cinsiyet</label><br>
								<div class='icheck-danger d-inline'>
									<input type='radio' class='form-control form-control-sm' id='kadin' name='cinsiyet' value="1" required>
									<label for='kadin'>
										Kadın
									</label>
								</div>
								<div class='icheck-primary d-inline'>
									<input type='radio' class='form-control form-control-sm' id='erkek' name='cinsiyet' value="2" required>
									<label for='erkek'>
										Erkek
									</label>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label">Doğum Tarihi</label>
								<div class="input-group date" id="dogum_tarihi" data-target-input="nearest">
									<div class="input-group-append" data-target="#dogum_tarihi" data-toggle="datetimepicker">
										<div class="input-group-text"><i class="fa fa-calendar"></i></div>
									</div>
									<input required type="text" data-target="#dogum_tarihi" data-toggle="datetimepicker" name="dogum_tarihi" value="<?php if( $tek_personel[ 'dogum_tarihi' ] !='' ){echo date('d.m.Y',strtotime($tek_personel[ 'dogum_tarihi' ] ));}//else{ echo date('d.m.Y'); } ?>" class="form-control form-control-sm datetimepicker-input" data-target="#datetimepicker1"/>
								</div>
							</div>
							<div class="form-group">
								<label  class="control-label">Kan Grubu</label>
								<select class="form-control form-control-sm select2" name = "kan_grubu_id" required>
									<option>Seçiniz...</option>
									<?php 
										foreach( $uyruklar AS $uyruk ){
											echo '<option value="'.$uyruk[ "id" ].'" '.( $tek_personel[ "uyruk_id" ] == $uyruk[ "id" ] ? "selected" : null) .'>'.$uyruk[ "adi" ].' ('.$uyruk[ "kisa_ad" ].')</option>';
										}

									?>
								</select>
							</div>
							<div class="form-group">
								<label class="control-label">Doğum Yeri</label>
								<input required type="text" class="form-control form-control-sm" name ="dogum_yeri" value = "<?php echo $tek_personel[ "dogum_yeri" ]; ?>"  autocomplete="off">
							</div>
							<br><h5 class="float-left text-olive">İletişim Bilgileri</h5><br><hr style="border: 2px solid green; border-radius: 5px; width:100%;" >
							<div class="form-group">
								<label class="control-label">Cep Telefonu</label>
								<input required type="tel" class="form-control form-control-sm" name ="cep_tel" value = "<?php echo $tek_personel[ "cep_tel" ]; ?>" pattern="[0-9]{10}" placeholder="5555555555" autocomplete="off">
							</div>
							<div class="form-group">
								<label class="control-label">E Mail</label>
								<input required type="email" class="form-control form-control-sm" name ="email" value = "<?php echo $tek_personel[ "email" ]; ?>"  autocomplete="off">
							</div>
							<div class="form-group">
								<label class="control-label">Adres</label>
								<textarea name="adres" class="form-control form-control-sm" ><?php echo $tek_personel[ "adres" ]; ?></textarea>
							</div>
							<br><h5 class="float-right text-olive">TUS Bilgileri</h5><br><hr style="border: 2px solid green; border-radius: 5px; width:100%;" >
							<div class="form-group">
								<label class="control-label">TUS Dönemi</label>
								<input required type="text" class="form-control form-control-sm" name ="tus_donemi" value = "<?php echo $tek_personel[ "tus_donemi" ]; ?>"  autocomplete="off">
							</div>									
							<div class="form-group">
								<label class="control-label">TUS Puanı</label>
								<input required type="number" min="0.01" max="100.0" step="0.01" class="form-control form-control-sm" name ="tus_puani" value = "<?php echo $tek_personel[ "tus_puani" ]; ?>"  autocomplete="off">
							</div>
							<br><h5 class="float-left text-olive">Uzmanlık Eğitimi Bilgileri</h5><br><hr style="border: 2px solid green; border-radius: 5px; width:100%;" >
							<div class="form-group">
								<label class="control-label">Başlama Tarihi</label>
								<div class="input-group date" id="baslama_tarihi" data-target-input="nearest">
									<div class="input-group-append" data-target="#baslama_tarihi" data-toggle="datetimepicker">
										<div class="input-group-text"><i class="fa fa-calendar"></i></div>
									</div>
									<input required type="text" data-target="#baslama_tarihi" data-toggle="datetimepicker" name="baslama_tarihi" value="<?php if( $tek_personel[ 'baslama_tarihi' ] !='' ){echo date('d.m.Y',strtotime($tek_personel[ 'baslama_tarihi' ] ));}//else{ echo date('d.m.Y'); } ?>" class="form-control form-control-sm datetimepicker-input" data-target="#datetimepicker1"/>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label">Bitirme Tarihi</label>
								<div class="input-group date" id="bitis_tarihi" data-target-input="nearest">
									<div class="input-group-append" data-target="#bitis_tarihi" data-toggle="datetimepicker">
										<div class="input-group-text"><i class="fa fa-calendar"></i></div>
									</div>
									<input type="text" data-target="#bitis_tarihi" data-toggle="datetimepicker" name="bitis_tarihi" value="<?php if( $tek_personel[ 'bitis_tarihi' ] !='' ){echo date('d.m.Y',strtotime($tek_personel[ 'bitis_tarihi' ] ));}//else{ echo date('d.m.Y'); } ?>" class="form-control form-control-sm datetimepicker-input" data-target="#datetimepicker1"/>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label">Tez Teslim Tarihi</label>
								<div class="input-group date" id="tez_tarihi" data-target-input="nearest">
									<div class="input-group-append" data-target="#tez_tarihi" data-toggle="datetimepicker">
										<div class="input-group-text"><i class="fa fa-calendar"></i></div>
									</div>
									<input type="text" data-target="#tez_tarihi" data-toggle="datetimepicker" name="tez_tarihi" value="<?php if( $tek_personel[ 'tez_tarihi' ] !='' ){echo date('d.m.Y',strtotime($tek_personel[ 'tez_tarihi' ] ));}//else{ echo date('d.m.Y'); } ?>" class="form-control form-control-sm datetimepicker-input" data-target="#datetimepicker1"/>
								</div>
							</div>
							<div class="form-group">
								<label  class="control-label">Eğitim Danışmanı</label>
								<select class="form-control form-control-sm select2" name = "egitim_danisman_id" required>
									<option>Seçiniz...</option>
									<?php 
										foreach( $ogretim_elemanlari AS $ogretim_elemani ){
											echo '<option value="'.$ogretim_elemani[ "id" ].'" '.( $tek_personel[ "egitim_danisman_id" ] == $ogretim_elemani[ "id" ] ? "selected" : null) .'>'.$ogretim_elemani[ "adi_soyadi" ].'</option>';
										}

									?>
								</select>
							</div>
							<div class="form-group">
								<label  class="control-label">Tez Danışmanı</label>
								<select class="form-control form-control-sm select2" name = "tez_danisman_id" required>
									<option>Seçiniz...</option>
									<?php 
										foreach( $ogretim_elemanlari AS $ogretim_elemani ){
											echo '<option value="'.$ogretim_elemani[ "id" ].'" '.( $tek_personel[ "tez_danisman_id" ] == $ogretim_elemani[ "id" ] ? "selected" : null) .'>'.$ogretim_elemani[ "adi_soyadi" ].'</option>';
										}

									?>
								</select>
							</div>
							<br><h5 class="float-right text-olive">Şifre Değiştir</h5><br><hr style="border: 2px solid green; border-radius: 5px; width:100%;" >
							<div class="form-group">
								<label class="control-label">Şifre</label>
								<input required type="password" minlength="6" class="form-control form-control-sm" name ="sifre" value = "<?php echo $tek_personel[ "sifre" ]; ?>"  autocomplete="off">
							</div>
						</div>
						<div class="card-footer">
							<button modul= 'personeller' yetki_islem="<?php echo $kaydet_buton_yetki_islem; ?>" type="submit" class="<?php echo $kaydet_buton_cls; ?>"><span class="fa fa-save"></span> <?php echo $kaydet_buton_yazi; ?></button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
</section>
<script>
/* Kullanıcı resmine tıklayınca file nesnesini tetikle*/
$( function() {
	$( "#personel_kullanici_resim" ).click( function() {
		$( "#gizli_input_file" ).trigger( 'click' );
	});
});

/* Seçilen resim önizle */
function resimOnizle( input ) {
	if ( input.files && input.files[ 0 ] ) {
		var reader = new FileReader();
		reader.onload = function ( e ) {
			$( '#personel_kullanici_resim' ).attr( 'src', e.target.result );
		};
		reader.readAsDataURL( input.files[ 0 ] );
	}
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
		$('#baslama_tarihi').datetimepicker({
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
		$('#bitis_tarihi').datetimepicker({
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