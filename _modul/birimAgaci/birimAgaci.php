<?php
$fn = new Fonksiyonlar();

$islem 		= array_key_exists( 'islem', $_REQUEST )  		? $_REQUEST[ 'islem' ] 	    : 'ekle';
$id 		= array_key_exists( 'id', $_REQUEST ) ? $_REQUEST[ 'id' ] : 0;


$kaydet_buton_yazi		= $islem == "guncelle"	? 'Güncelle'							: 'Kaydet';
$kaydet_buton_cls		= $islem == "guncelle"	? 'btn btn-warning btn-sm pull-right'	: 'btn btn-success btn-sm pull-right';


/* SEG dosyalarından gelen mesaj */
if( array_key_exists( 'sonuclar', $_SESSION ) ) {
	$mesaj                 			= $_SESSION[ 'sonuclar' ][ 'mesaj' ];
	$mesaj_turu            			= $_SESSION[ 'sonuclar' ][ 'hata' ] ? 'kirmizi' : 'yesil';
	unset( $_SESSION[ 'sonuclar' ] );
	echo "<script>mesajVer('$mesaj', '$mesaj_turu')</script>";
}

$SQL_birim_agaci_getir = <<< SQL
SELECT
	*
FROM 
	tb_birim_agaci
SQL;

$SQL_birim_bilgileri = <<< SQL
SELECT
	*
FROM 
	tb_birim_agaci
WHERE
	id = ?
SQL;

@$birim_agacilar 		= $vt->select($SQL_birim_agaci_getir, array(  ) )[ 2 ];
@$birim_bilgileri 		= $vt->selectSingle($SQL_birim_bilgileri, array( $id ) )[ 2 ];

?>	

<div class="row">
	<div class="col-md-6">
		<div class="card card-dark">
			<div class="card-header">
				<h3 class="card-title">Birimler</h3>
				<!--div class="form-group float-right mb-0">
					<select class="form-control select2" name="ders_id" required  onchange="dersSecimi(this.value);">
						<option value="">Ders Seçiniz...</option>
						<?php foreach( $dersler AS $ders ){ ?>
							<option value="<?php echo $ders[ "id" ];?>" <?php echo $ders[ "id" ] == @$_SESSION[ "ders_id" ] ? 'selected' : null; ?>>
								( <?php echo $ders[ "ders_kodu" ];?> )&nbsp;&nbsp;&nbsp; 
								<b><?php echo $ders[ "adi" ];?></b>
							</option>
						<?php } ?>
					</select>
				</div-->	
			</div>
			<!-- /.card-header -->
			<div class="card-body p-0">
                <table class="table table-sm table-hover ">
                  <tbody>
					<?php
					//var_dump($birim_agacilar);
						function kategoriListele3( $kategoriler, $parent = 0, $renk = 0,$vt, $SQL_ogrenci_birim_agaci_degerlendirme, $ogrenci_id, $dil){
							$adi = "adi".$dil;
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
														$kategori[$adi]
														<span class='m-0 p-0'>
															<button modul= 'birimAgaci' yetki_islem='sil' class='btn btn-xs ml-1 btn-danger float-right' data-href='_modul/birimAgaci/birimAgaciSEG.php?islem=sil&id=$kategori[id]' data-toggle='modal' data-target='#sil_onay'>Sil</button>
															<a modul= 'birimAgaci' yetki_islem='duzenle' href='index.php?modul=birimAgaci&id=$kategori[id]&islem=guncelle' id='$kategori[id]' data-id='$kategori[id]' class='btn btn-warning float-right btn-xs ' data-kategori_ad_duzenle='$kategori[adi]' data-modal='kategori_duzenle' data-islem='guncelle' data-kategori='$kategori[kategori]'>Düzenle</a>
														</span>
													</td>
												</tr>";									

									}
									if( $kategori['kategori'] == 1 ){

											$html .= "
													<tr data-widget='expandable-table' aria-expanded='true' class='border-0'>
														<td class='bg-renk$renk'>
															$kategori[$adi]
															<span>
																<button modul= 'birimAgaci' yetki_islem='sil' class='btn btn-xs ml-1 btn-danger float-right' data-href='_modul/birimAgaci/birimAgaciSEG.php?islem=sil&id=$kategori[id]' data-toggle='modal' data-target='#sil_onay' onclick='$(#sil_onay).modal();event.stopPropagation();' >Sil</button>
																<a modul= 'birimAgaci' yetki_islem='duzenle' href='index.php?modul=birimAgaci&id=$kategori[id]&islem=guncelle' id='$kategori[id]' data-id='$kategori[id]' data-ders_id='$kategori[ders_id]' class='btn btn-warning float-right btn-xs ml-1 ' data-kategori_ad_duzenle='$kategori[adi]' data-kategori_duzenle='$kategori[kategori]' data-grup_duzenle='$kategori[grup]' data-modal='kategori_duzenle' data-islem='guncelle' data-kategori ='$kategori[kategori]' onclick='event.stopPropagation();' >Düzenle</a>
																<a modul= 'birimAgaci' yetki_islem='kategori-ekle' href='index.php?modul=birimAgaci&id=$kategori[id]&islem=ekle' class='btn btn-dark float-right btn-xs' id='$kategori[id]' data-id='$kategori[id]' data-kategori_ad ='$kategori[adi]' data-ders_id='$kategori[ders_id]' data-modal='kategori_ekle' onclick='event.stopPropagation();' >Ekle</a>
															</span>
														<i class='expandable-table-caret fas fa-caret-right fa-fw'></i>
														</td>
													</tr>
												";								
											$renk++;
											$html .= kategoriListele3($kategoriler, $kategori['id'],$renk, $vt, $SQL_ogrenci_birim_agaci_degerlendirme, $ogrenci_id, $dil);
											
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
							echo kategoriListele3($birim_agacilar,0,0, $vt, $SQL_ogrenci_birim_agaci_degerlendirme, $ogrenci_id, $dil);
						

					?>
                  </tbody>
                </table>



			</div>
			<!-- /.card -->
		</div>
		<!-- right column -->
	</div>
	<div class="col-md-6">
		<div class="card card-secondary">
			<div class="card-header">
				<h3 class="card-title">Birim Ekle / Düzenle</h3>
			</div>
			<form class="form-horizontal" action = "_modul/birimAgaci/birimAgaciSEG.php" method = "POST" enctype="multipart/form-data">
			<div class="card-body">
				<?php foreach( $birim_bilgileri as $anahtar=>$deger ){ ?>
				<input type="hidden"  name="<?php echo $anahtar;  ?>" value="<?php echo $deger;  ?>">
				<?php } ?>
				<input type="hidden"  name="dil" value="<?php echo $dil;  ?>">
				<div class="form-group">
					<label class="control-label">Dil</label>
					<select class="form-control select2" name = "dil" required onchange="dil_degistir(this);">
						<option value="tr">Türkçe</option>
						<option value="kz">қазақ</option>
						<option value="en">English</option>
						<option value="ru">Россия</option>
					</select>
				</div>
				<?php if( $islem == 'ekle' ){ ?>
				<input type="hidden"  name="ust_id" value="<?php if( $islem == 'ekle' ) echo $birim_bilgileri['id'];  ?>">
				<div class="form-group">
					<label class="control-label">Üst Birim</label>
					<input required type="text" class="form-control"  value="<?php if( $islem == 'ekle' ) echo $birim_bilgileri['adi'.$dil];  ?>"  autocomplete="off" disabled>
				</div>
				<?php }else{ ?>
				<input type="hidden"  name="birim_agaci_id" value="<?php if( $islem == 'guncelle' ) echo $birim_bilgileri['id'];  ?>">
				<?php } ?>
				<div class="form-group">
					<label class="control-label">Birim Adı</label>
					<input required type="text" class="form-control" id ="adi" name ="adi"  value="<?php if( $islem == 'guncelle' ) echo $birim_bilgileri['adi'.$dil];  ?>"  autocomplete="off">
				</div>
				<script>
					function dil_degistir(eleman){
						//alert(eleman.value);
						document.getElementById("adi").value = document.getElementsByName("adi"+"_"+eleman.value)[0].value;
					}
				</script>
				<div class="form-group clearfix">
					<div class="icheck-success d-inline">
						<input type="checkbox" id="kategori"  name="kategori" <?php if( $islem == 'guncelle' and $birim_bilgileri['kategori'] == 1 ) echo "checked";  ?> >
						<label for="kategori">
							Alt birimleri olacak.
						</label>
						<small class="form-text text-muted">Bu birimin alt birimleri olacaksa işaretlenmelidir.</small>
					</div>
				</div>

				<div class="form-group clearfix">
					<div class="icheck-primary d-inline">
						<input type="checkbox"  id="grup" name="grup"  <?php if( $islem == 'guncelle' and $birim_bilgileri['grup'] == 1 ) echo "checked";  ?> >
						<label for="grup">
							Sadece gruplama için kullanılacak.
						</label>
						<small class="form-text text-muted">Eğer bu bir birim değil, sadece gruplama yapmak için kullanılacaksa işaretleyiniz.</small>
					</div>
				</div>
			</div>
			<div class="card-footer">
				<button modul= 'birimAgaci' yetki_islem="kaydet" type="submit" class="<?php echo $kaydet_buton_cls; ?>"><span class="fa fa-save"></span> <?php echo $kaydet_buton_yazi; ?></button>
			</div>
			</form>
		</div>
	</div>

	<div id="gorevli"></div>

	<!-- UYARI MESAJI VE BUTONU-->
	<div class="modal fade" id="sil_onay">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Lütfen Dikkat!</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p><b>Bu Kaydı silmeniz durumunda kategori Altında bulunan diğer kategoriler silinecektir.</b></p>
					<p>Bu kaydı <b>Silmek</b> istediğinize emin misiniz?</p>
				</div>
				<div class="modal-footer justify-content-between">
					<button type="button" class="btn btn-success" data-dismiss="modal">İptal</button>
					<a type="button" class="btn btn-danger btn-evet">Evet</a>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>

	<!--birim_agaci EKLEME MODALI-->
	<div class="modal fade" id="yeni_ana_kategori_ekle">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Yeni Ana Kategori Ekleme</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form class="form-horizontal" action = "_modul/birimAgaci/birimAgaciSEG.php" method = "POST">
					<div class="modal-body">
						<input type="hidden" id="ust_id"  name="ust_id" >
						<div class="form-group">
							<label class="control-label">Kategori Adı</label>
							<input required type="text" class="form-control" name ="adi"  autocomplete="off">
						</div>
						<div class="form-group">
							<label  class="control-label">Kategori Mi? </label>
							<div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-focused bootstrap-switch-animate bootstrap-switch-off" >
								<div class="bootstrap-switch-container" >
									<input type="checkbox" name="kategori" checked data-bootstrap-switch="" data-off-color="danger" data-on-text="Default" data-off-text="Değil" data-on-color="success">
								</div>
							</div>
						</div>

					</div>
					<div class="modal-footer justify-content-between">
						<button type="button" class="btn btn-success" data-dismiss="modal">İptal</button>
						<button  modul= 'birimAgaci' yetki_islem='kaydet'type="submit" class="btn btn-danger ">Kaydet</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>

	<!--birim_agaci EKLEME MODALI-->
	<div class="modal fade" id="kategori_ekle" modul= 'birimAgaci' yetki_islem='duzenle' >
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Yeni Kategori Ekle</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form class="form-horizontal" action = "_modul/birimAgaci/birimAgaciSEG.php" method = "POST">
					<div class="modal-body">
						<input type="hidden" id="yeni_kategori_ust_id"  name="ust_id">
						<div class="form-group">
							<label class="control-label">Üst Birim</label>
							<input required type="text" class="form-control" id="kategori_ad"  autocomplete="off" disabled>
						</div>

						<div class="form-group">
							<label class="control-label">Birim Adı</label>
							<input required type="text" class="form-control" name ="adi"  autocomplete="off">
						</div>
						<div class="form-group clearfix">
							<div class="icheck-success d-inline">
								<input type="checkbox" id="kategori"  name="kategori" >
								<label for="kategori">
									Alt birimleri olacak.
								</label>
								<small class="form-text text-muted">Bu birimin alt birimleri olacaksa işaretlenmelidir.</small>
							</div>
						</div>

						<div class="form-group clearfix">
							<div class="icheck-primary d-inline">
								<input type="checkbox" id="grup" name="grup" >
								<label for="grup">
									Sadece gruplama için kullanılacak.
								</label>
								<small class="form-text text-muted">Eğer bu bir birim değil, sadece gruplama yapmak için kullanılacaksa işaretleyiniz.</small>
							</div>
						</div>

					</div>
					<div class="modal-footer justify-content-between">
						<button type="button" class="btn btn-success" data-dismiss="modal">İptal</button>
						<button  modul= 'birimAgaci' yetki_islem='kaydet' type="submit" class="btn btn-danger">Kaydet</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>

	<!--birim_agaci -->
	<div class="modal fade" id="kategori_duzenle" modul= 'birimAgaci' yetki_islem='duzenle' >
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Kategori Düzenle</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form class="form-horizontal" action = "_modul/birimAgaci/birimAgaciSEG.php" method = "POST">
					<div class="modal-body">
						<input type="hidden" id="islem" name="islem">
						<input type="hidden" id="birim_agaci_id" name="birim_agaci_id">

						<div class="form-group">
							<label class="control-label">Kategori Adı</label>
							<input required type="text" class="form-control" name ="adi"  autocomplete="off" id="kategori_ad_duzenle">
						</div>
						<div class="form-group clearfix">
							<div class="icheck-success d-inline">
								<input type="checkbox" id="kategori_mi_duzenle"  name="kategori" >
								<label for="kategori_mi_duzenle">
									Alt birimleri olacak.
								</label>
								<small class="form-text text-muted">Bu birimin alt birimleri olacaksa işaretlenmelidir.</small>
							</div>
						</div>

						<div class="form-group clearfix">
							<div class="icheck-primary d-inline">
								<input type="checkbox" id="grup_duzenle" name="grup" >
								<label for="grup_duzenle">
									Sadece gruplama için kullanılacak.
								</label>
								<small class="form-text text-muted">Eğer bu bir birim değil, sadece gruplama yapmak için kullanılacaksa işaretleyiniz.</small>
							</div>
						</div>

					</div>
					<div class="modal-footer justify-content-between">
						<button type="button" class="btn btn-danger" data-dismiss="modal">İptal</button>
						<button  modul= 'birimAgaci' yetki_islem='duzenle' type="submit" class="btn btn-success">Güncelle</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>

	<script>
        $('.soru').summernote();

		$( '#sil_onay' ).on( 'show.bs.modal', function( e ) {
			event.stopPropagation();
			$( this ).find( '.btn-evet' ).attr( 'href', $( e.relatedTarget ).data( 'href' ) );
		} );
		
	    $('.KategoriEkle').on("click", function(e) { 
	        var ust_id      = $(this).data("id");
	        var kategori_ad = $(this).data("kategori_ad");
	        var modal 		= $(this).data("modal");

	        document.getElementById("yeni_kategori_ust_id").value 	 = ust_id;
	        document.getElementById("kategori_ad").value = kategori_ad;
	        $('#'+ modal).modal( "show" );
	    });
		
		$('.modalAc').on("click", function(e) { 
			var modal 		= $(this).data("modal");

			var kategori_ad = $(this).data("kategori_ad_duzenle");
			var modal 		= $(this).data("modal");
			var kategori 	= $(this).data("kategori");
			var grup	 	= $(this).data("grup_duzenle");
			var islem 		= $(this).data("islem");
			var birim_agaci_id = $(this).data("id");

			if ( kategori == 1 ) {
				document.getElementById("kategori_mi_duzenle").checked = true;
			}else{
				document.getElementById("kategori_mi_duzenle").checked = false;
			}

			if ( grup == 1 ) {
				document.getElementById("grup_duzenle").checked = true;
			}else{
				document.getElementById("grup_duzenle").checked = false;
			}

			document.getElementById("birim_agaci_id").value 		 	= birim_agaci_id;
			document.getElementById("kategori_ad_duzenle").value 	= kategori_ad;
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
