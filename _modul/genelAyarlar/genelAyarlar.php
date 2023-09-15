<?php
$fn	= new Fonksiyonlar();
$vt = new VeriTabani();


/* SEG dosyalarından gelen mesaj */
if( array_key_exists( 'sonuclar', $_SESSION ) ) {
	$mesaj								= $_SESSION[ 'sonuclar' ][ 'mesaj' ];
	$mesaj_turu							= $_SESSION[ 'sonuclar' ][ 'hata' ] ? 'kirmizi' : 'yesil';
	$_REQUEST[ 'genel_ayar_id' ]				= $_SESSION[ 'sonuclar' ][ 'id' ];
	unset( $_SESSION[ 'sonuclar' ] );
	echo "<script>mesajVer('$mesaj', '$mesaj_turu')</script>";
}


$islem			= array_key_exists( 'islem'		,$_REQUEST )  ? $_REQUEST[ 'islem' ]	 : 'ekle';
$birim_id		= array_key_exists( 'birim_id' ,$_REQUEST ) ? $_REQUEST[ 'birim_id' ]	: 0;
$birim_adi		= array_key_exists( 'birim_adi' ,$_REQUEST ) ? $_REQUEST[ 'birim_adi' ]	: "";


$satir_renk				= $genel_ayar_id > 0	? 'table-warning'						: '';
$kaydet_buton_yazi		= $genel_ayar_id > 0	? 'Güncelle'							: 'Kaydet';
$kaydet_buton_cls		= $genel_ayar_id > 0	? 'btn btn-warning btn-sm pull-right'	: 'btn btn-success btn-sm pull-right';



$SQL_tek_genel_ayar_oku = <<< SQL
SELECT 
	*
FROM 
	tb_genel_ayarlar
WHERE 
	birim_id = ? 
SQL;

$SQL_birim_agaci_getir = <<< SQL
SELECT
	*
FROM 
	tb_birim_agaci
SQL;

@$birim_agaclari 		= $vt->select($SQL_birim_agaci_getir, array(  ) )[ 2 ];
@$tek_genel_ayar 		= $vt->selectSingle( $SQL_tek_genel_ayar_oku, array( $birim_id ) )[ 2 ];

//var_dump($tek_genel_ayar);

if( $tek_genel_ayar['id'] > 0 )
	$islem = "guncelle";
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
			<?php if( !isset($_REQUEST['birim_id']) ){ ?>
			<div class="col-md-4 p-0">
				<div class="card card-secondary">
					<div class="card-header">
						<h3 class="card-title">Birimler</h3>
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
																	<a modul= 'genelAyarlar' yetki_islem='birim_sec' href='index.php?modul=genelAyarlar&birim_id=$kategori[id]&birim_adi=$kategori[$adi]' onclick='event.stopPropagation();'  class='btn btn-dark float-right btn-xs ml-1' >Seç</a>
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
														$birim_sec_butonu = "<a modul= 'genelAyarlar' yetki_islem='birim_sec' href='index.php?modul=genelAyarlar&birim_id=$kategori[id]&birim_adi=$kategori[$adi]' onclick='event.stopPropagation();'  class='btn btn-dark float-right btn-xs ml-1' >Seç</a>";

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

			<div class="col-md-12">
				<div class="card card-secondary">
					<div class="card-header p-2">
						<ul class="nav nav-pills tab-container">
							<h6 style = 'font-size: 1rem;'> &nbsp;&nbsp;&nbsp; Genel Ayarlar Düzenle</h6>

							
						</ul>
					</div>
					<div class="card-body">
								<?php if( $birim_id > 0 ){ ?>
								<div class="alert alert-success" role="alert">
								Şu anda <b><?php echo $birim_adi ?></b> için işlem yapmaktasınız. Birimi değiştirmek için <a href="?modul=genelAyarlar" class="alert-link">tıklayınız.</a>
								</div>		
								<?php } ?>						

						<div class="tab-content">
							<!-- GENEL BİLGİLER -->
							<div class="tab-pane active" id="_genel">
								<form class="form-horizontal" action = "_modul/genelAyarlar/genelAyarlarSEG.php" method = "POST" enctype="multipart/form-data">
									<?php foreach( array_keys($tek_genel_ayar) as $anahtar ){ ?>
									<input type="hidden"  name="<?php echo $anahtar;  ?>" value='<?php echo $tek_genel_ayar[$anahtar];  ?>'>
									<?php } ?>
									<div class="form-group">
										<label class="control-label">Dil</label>
										<select class="form-control" name = "dil" id="dil" required onchange="dil_degistir(this);">
											<option value="_tr" <?php if( $_REQUEST['dil'] == "" ) echo "selected"; ?> >Türkçe</option>
											<option value="_kz" <?php if( $_REQUEST['dil'] == "_kz" ) echo "selected"; ?> >қазақ</option>
											<option value="_en" <?php if( $_REQUEST['dil'] == "_en" ) echo "selected"; ?> >English</option>
											<option value="_ru" <?php if( $_REQUEST['dil'] == "_ru" ) echo "selected"; ?> >Россия</option>
										</select>
									</div>

									<input type = "hidden" name = "islem" value = "<?php echo $islem; ?>" >
									<input type = "hidden" name = "birim_id" value = "<?php echo $birim_id; ?>">
									<input type = "hidden" name = "birim_adi" value = "<?php echo $birim_adi; ?>">
									<input type = "hidden" name = "logo_eski" value = "<?php echo $tek_genel_ayar[ 'logo' ]; ?>">
									<input type = "hidden" name = "footer_logo_eski" value = "<?php echo $tek_genel_ayar[ 'footer_logo' ]; ?>">
									<input type = "hidden" name = "footer_sag_logo_eski" value = "<?php echo $tek_genel_ayar[ 'footer_sag_logo' ]; ?>">

									<div class="form-group card-body bg-light">
										<label class="control-label">Logo</label>
										<input type="file" name="logo" class="" >
										<img src="resimler/logolar/<?php echo $tek_genel_ayar[ 'logo' ]; ?>" height="100">
									</div>

									<div class="form-group card-body bg-light">
										<label class="control-label">Footer Logo</label>
										<input type="file" name="footer_logo" class="" >
										<img src="resimler/logolar/<?php echo $tek_genel_ayar[ 'footer_logo' ]; ?>" height="100">
									</div>

									<div class="form-group card-body bg-light">
										<label class="control-label">Footer Sağ Alt Logo</label>
										<input type="file" name="footer_sag_logo" class="" >
										<img src="resimler/logolar/<?php echo $tek_genel_ayar[ 'footer_sag_logo' ]; ?>" height="100">
									</div>

									<div class="form-group">
										<label class="control-label">Footer Sağ Alt Logo Link</label>
										<input  type="text" class="form-control" name ="footer_sag_logo_link" value = "<?php echo $tek_genel_ayar[ "footer_sag_logo_link" ]; ?>"  autocomplete="off">
									</div>
									<div class="form-group">
										<label class="control-label">Map</label>
										<input  type="text" class="form-control" name ="map" value = "<?php echo $tek_genel_ayar[ "map" ]; ?>"  autocomplete="off">
									</div>
									<div class="form-group">
										<label class="control-label">Adres</label>
										<textarea  type="text" class="form-control" id ="adres" name ="adres" value = "<?php echo $tek_genel_ayar[ "adres" ]; ?>"  autocomplete="off"><?php echo $tek_genel_ayar[ "adres" ]; ?></textarea>
									</div>
									<div class="form-group">
										<label class="control-label">Tel</label>
										<input  type="text" class="form-control" name ="tel" value = "<?php echo $tek_genel_ayar[ "tel" ]; ?>"  autocomplete="off">
									</div>
									<div class="form-group">
										<label class="control-label">Email</label>
										<input  type="text" class="form-control" name ="email" value = "<?php echo $tek_genel_ayar[ "email" ]; ?>"  autocomplete="off">
									</div>
									<div class="form-group">
										<label class="control-label">Facebook</label>
										<input  type="text" class="form-control" name ="facebook" value = "<?php echo $tek_genel_ayar[ "facebook" ]; ?>"  autocomplete="off">
									</div>
									<div class="form-group">
										<label class="control-label">Twitter</label>
										<input  type="text" class="form-control" name ="twitter" value = "<?php echo $tek_genel_ayar[ "twitter" ]; ?>"  autocomplete="off">
									</div>
									<div class="form-group">
										<label class="control-label">Instagram</label>
										<input  type="text" class="form-control" name ="instagram" value = "<?php echo $tek_genel_ayar[ "instagram" ]; ?>"  autocomplete="off">
									</div>

									<div class="form-group">
										<label class="control-label">Linkedin</label>
										<input  type="text" class="form-control" name ="linkedin" value = "<?php echo $tek_genel_ayar[ "linkedin" ]; ?>"  autocomplete="off">
									</div>

									<div class="form-group">
										<label class="control-label">Youtube</label>
										<input  type="text" class="form-control" name ="youtube" value = "<?php echo $tek_genel_ayar[ "youtube" ]; ?>"  autocomplete="off">
									</div>

									<div class="form-group">
										<label class="control-label">Slogan</label>
										<input  type="text" class="form-control" id ="slogan" name ="slogan" value = "<?php echo $tek_genel_ayar[ "slogan" ]; ?>"  autocomplete="off">
									</div>
									<div class="form-group">
										<label class="control-label">Anasayfa Başlık</label>
										<input required type="text" class="form-control" id ="anasayfa_baslik" name ="anasayfa_baslik" value = "<?php echo $tek_genel_ayar[ "anasayfa_baslik" ]; ?>"  autocomplete="off">
									</div>
									<div class="form-group">
										<label class="control-label">Anasayfa İçerik</label>
										<style>
										.ck-editor__editable_inline:not(.ck-comment__input *) {
											height: 600px;
											overflow-y: auto;
										}
										</style>
										<textarea id="editor" style="display:none" name="anasayfa_icerik">
										<?php echo @$tek_genel_ayar[ "anasayfa_icerik" ]; ?>
										</textarea>
									</div>
									<div class="form-group">
										<label class="control-label">Öğrenci Sayısı</label>
										<input  type="text" class="form-control" name ="ogrenci_sayisi" value = "<?php echo $tek_genel_ayar[ "ogrenci_sayisi" ]; ?>"  autocomplete="off">
									</div>
									<div class="form-group">
										<label class="control-label">Bölüm Sayısı</label>
										<input  type="text" class="form-control" name ="bolum_sayisi" value = "<?php echo $tek_genel_ayar[ "bolum_sayisi" ]; ?>"  autocomplete="off">
									</div>
									<div class="form-group">
										<label class="control-label">Eğitmen Sayısı</label>
										<input  type="text" class="form-control" name ="egitmen_sayisi" value = "<?php echo $tek_genel_ayar[ "egitmen_sayisi" ]; ?>"  autocomplete="off">
									</div>
									<div class="form-group">
										<label class="control-label">Yayın Sayısı</label>
										<input  type="text" class="form-control" name ="yayin_sayisi" value = "<?php echo $tek_genel_ayar[ "yayin_sayisi" ]; ?>"  autocomplete="off">
									</div>
									<div class="form-group">
										<label class="control-label">Slogan2</label>
										<input  type="text" class="form-control" id ="slogan2" name ="slogan2" value = "<?php echo $tek_genel_ayar[ "slogan2" ]; ?>"  autocomplete="off">
									</div>
									<div class="form-group">
										<label class="control-label">Slogan3</label>
										<input  type="text" class="form-control" id ="slogan3" name ="slogan3" value = "<?php echo $tek_genel_ayar[ "slogan3" ]; ?>"  autocomplete="off">
									</div>
									<div class="form-group">
										<label class="control-label">Buton 1</label>
										<input  type="text" class="form-control" id ="buton_deger1" name ="buton_deger1" value = "<?php echo $tek_genel_ayar[ "buton_deger1" ]; ?>"  autocomplete="off">
									</div>

									<div class="form-group">
										<label class="control-label">Buton 1 Url</label>
										<input  type="text" class="form-control" name ="buton_url1" value = "<?php echo $tek_genel_ayar[ "buton_url1" ]; ?>"  autocomplete="off">
									</div>
									<div class="form-group">
										<label class="control-label">Buton 2</label>
										<input  type="text" class="form-control" id ="buton_deger2" name ="buton_deger2" value = "<?php echo $tek_genel_ayar[ "buton_deger2" ]; ?>"  autocomplete="off">
									</div>

									<div class="form-group">
										<label class="control-label">Buton 2 Url</label>
										<input  type="text" class="form-control" name ="buton_url2" value = "<?php echo $tek_genel_ayar[ "buton_url2" ]; ?>"  autocomplete="off">
									</div>

									<div class="card-footer">
										<button modul= 'genel_ayarlar' yetki_islem="kaydet" type="submit" class="<?php echo $kaydet_buton_cls; ?>"><span class="fa fa-save"></span> <?php echo $kaydet_buton_yazi; ?></button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<?php }?>

		</div>
	</div>
</section>
<script type="text/javascript">
	var simdi = new Date(); 
	$(function () {
		$('#tarih').datetimepicker({
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

var tbl_genel_ayarlar = $( "#tbl_genel_ayarlar" ).DataTable( {
	"responsive": true, "lengthChange": true, "autoWidth": true,
	"stateSave": true,
	"pageLength" : 25,
	//"buttons": ["excel", "pdf", "print","colvis"],

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
} ).buttons().container().appendTo('#tbl_genel_ayarlar_wrapper .col-md-6:eq(0)');



$('#card_genel_ayarlar').on('maximized.lte.cardwidget', function() {
	var tbl_genel_ayarlar = $( "#tbl_genel_ayarlar" ).DataTable();
	var column = tbl_genel_ayarlar.column(  tbl_genel_ayarlar.column.length - 1 );
	column.visible( ! column.visible() );
	var column = tbl_genel_ayarlar.column(  tbl_genel_ayarlar.column.length - 2 );
	column.visible( ! column.visible() );
});

$('#card_genel_ayarlar').on('minimized.lte.cardwidget', function() {
	var tbl_genel_ayarlar = $( "#tbl_genel_ayarlar" ).DataTable();
	var column = tbl_genel_ayarlar.column(  tbl_genel_ayarlar.column.length - 1 );
	column.visible( ! column.visible() );
	var column = tbl_genel_ayarlar.column(  tbl_genel_ayarlar.column.length - 2 );
	column.visible( ! column.visible() );
} );



</script>
        <script>
            // This sample still does not showcase all CKEditor&nbsp;5 features (!)
            // Visit https://ckeditor.com/docs/ckeditor5/latest/features/index.html to browse all the features.
            CKEDITOR.ClassicEditor.create(document.getElementById("editor"), {
                // https://ckeditor.com/docs/ckeditor5/latest/features/toolbar/toolbar.html#extended-toolbar-configuration-format
				ckfinder: {
					uploadUrl: '/admin/plugins/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files&responseType=json'
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
                placeholder: 'İçeriği buraya giriniz.',
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
			<?php if( $islem == "guncelle" ){ ?>
				document.getElementById("adres").value = document.getElementsByName("adres"+dil)[0].value;
				document.getElementById("anasayfa_baslik").value = document.getElementsByName("anasayfa_baslik"+dil)[0].value;
				document.getElementById("slogan2").value = document.getElementsByName("slogan2"+dil)[0].value;
				document.getElementById("slogan3").value = document.getElementsByName("slogan3"+dil)[0].value;
				document.getElementById("buton_deger1").value = document.getElementsByName("buton_deger1"+dil)[0].value;
				document.getElementById("buton_deger2").value = document.getElementsByName("buton_deger2"+dil)[0].value;
				//document.getElementById("editor").value = document.getElementsByName("icerik"+dil)[0].value;
				window.editor.data.set(document.getElementsByName("anasayfa_icerik"+dil)[0].value);
			<?php } ?>
		}
	</script>
