<?php
$fn	= new Fonksiyonlar();
$vt = new VeriTabani();


/* SEG dosyalarından gelen mesaj */
if( array_key_exists( 'sonuclar', $_SESSION ) ) {
	$mesaj								= $_SESSION[ 'sonuclar' ][ 'mesaj' ];
	$mesaj_turu							= $_SESSION[ 'sonuclar' ][ 'hata' ] ? 'kirmizi' : 'yesil';
	unset( $_SESSION[ 'sonuclar' ] );
	echo "<script>mesajVer('$mesaj', '$mesaj_turu')</script>";
}


$islem			= array_key_exists( 'islem'		,$_REQUEST )  ? $_REQUEST[ 'islem' ]	 : 'ekle';
$id    			= array_key_exists( 'id'	,$_REQUEST )  ? $_REQUEST[ 'id' ]	 : 0;
$birim_id		= array_key_exists( 'birim_id' ,$_REQUEST ) ? $_REQUEST[ 'birim_id' ]	: 0;
$birim_adi		= array_key_exists( 'birim_adi' ,$_REQUEST ) ? $_REQUEST[ 'birim_adi' ]	: "";



$satir_renk				= $id > 0	? 'table-warning'						: '';
$kaydet_buton_yazi		= $id > 0	? 'Güncelle'							: 'Kaydet';
$kaydet_buton_cls		= $id > 0	? 'btn btn-warning btn-sm pull-right'	: 'btn btn-success btn-sm pull-right';


$SQL_tum_gorevler = <<< SQL
SELECT 
	g.*
	,concat(p.adi,' ',p.soyadi) as adi_soyadi
	,concat(p.adi_kz,' ',p.soyadi_kz) as adi_soyadi_kz
	,concat(p.adi_en,' ',p.soyadi_en) as adi_soyadi_en
	,concat(p.adi_ru,' ',p.soyadi_ru) as adi_soyadi_ru
	,gk.adi as gorev_adi
	,gk.adi_kz as gorev_adi_kz
	,gk.adi_en as gorev_adi_en
	,gk.adi_ru as gorev_adi_ru
FROM 
	tb_gorevler as g
LEFT JOIN tb_gorev_kategorileri AS gk ON gk.id = g.gorev_kategori_id
LEFT JOIN tb_personeller AS p ON p.id = g.personel_id
WHERE 
	g.birim_id = ?
SQL;

$SQL_tek_gorev_oku = <<< SQL
SELECT 
	*
FROM 
	tb_gorevler
WHERE 
	id = ? 
SQL;

$SQL_birim_agaci_getir = <<< SQL
SELECT
	*
FROM 
	tb_birim_agaci
SQL;

$SQL_personeller = <<< SQL
SELECT
	*
FROM 
	tb_personeller
WHERE aktif = 1
SQL;

$SQL_gorev_kategorileri = <<< SQL
SELECT
	*
FROM 
	tb_gorev_kategorileri
SQL;

@$birim_agaclari 	= $vt->select($SQL_birim_agaci_getir, array(  ) )[ 2 ];
$gorevler			= $vt->select( $SQL_tum_gorevler, 	array( $birim_id ) )[ 2 ];
@$tek_gorev 		= $vt->selectSingle( $SQL_tek_gorev_oku, array( $id ) )[ 2 ];
$personeller		= $vt->select( $SQL_personeller, 	array(  ) )[ 2 ];
$gorev_kategorileri	= $vt->select( $SQL_gorev_kategorileri, 	array(  ) )[ 2 ];

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
				<button type="button" class="btn btn-default" data-dismiss="modal"><?php echo dil_cevir( "Hayır", $dizi_dil, $sistem_dil ); ?></button>
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


<section class="content">
	<div class="container-fluid">
		<div class="row">
			<?php if( !isset($_REQUEST['birim_id']) ){ ?>
			<div class="col-md-4 p-0">
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
																	<a modul= 'gorevler' yetki_islem='birim_sec' href='index.php?modul=gorevler&birim_id=$kategori[id]&birim_adi=$kategori[$adi]' onclick='event.stopPropagation();'  class='btn btn-dark float-right btn-xs ml-1' >Seç</a>
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
														$birim_sec_butonu = "<a modul= 'gorevler' yetki_islem='birim_sec' href='index.php?modul=gorevler&birim_id=$kategori[id]&birim_adi=$kategori[$adi]' onclick='event.stopPropagation();'  class='btn btn-dark float-right btn-xs ml-1' >Seç</a>";

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

			<div class="col-md-8">
				<div class="card card-secondary" id = "card_gorevler">
					<div class="card-header">
						<h3 class="card-title"><?php echo dil_cevir( "Görevler", $dizi_dil, $sistem_dil ); ?></h3>
						<div class = "card-tools">
							<button type="button" data-toggle = "tooltip" title = "Tam sayfa göster" class="btn btn-tool" data-card-widget="maximize"><i class="fas fa-expand fa-lg"></i></button>
							<a id = "yeni_gorev" data-toggle = "tooltip" title = "Yeni gorev Ekle" href = "?modul=gorevler&islem=ekle&birim_id=<?php echo $birim_id; ?>&birim_adi=<?php echo $birim_adi; ?>" class="btn btn-tool" ><i class="fas fa-plus fa-lg"></i></a>
						</div>
					</div>
					<div class="card-body">
						<table id="tbl_gorevler" class="table table-bordered table-hover table-sm" width = "100%" >
							<thead>
								<tr>
									<th style="width: 15px">#</th>
									<th><?php echo dil_cevir( "Personel", $dizi_dil, $sistem_dil ); ?></th>
									<th><?php echo dil_cevir( "Görev", $dizi_dil, $sistem_dil ); ?></th>
									<th data-priority="1" style="width: 20px"><?php echo dil_cevir( "Düzenle", $dizi_dil, $sistem_dil ); ?></th>
									<th data-priority="1" style="width: 20px"><?php echo dil_cevir( "Sil", $dizi_dil, $sistem_dil ); ?></th>
								</tr>
							</thead>
							<tbody>
								<?php 
									$sayi = 1; 
									$dil = $sistem_dil == "_tr" ? "" : $sistem_dil ;
									foreach( $gorevler AS $gorev ) { 
								?>
								<tr oncontextmenu="fun();" class ="gorev-Tr <?php if( $gorev[ 'id' ] == $id ) echo $satir_renk; ?>" data-id="<?php echo $gorev[ 'id' ]; ?>">
									<td><?php echo $sayi++; ?></td>
									<td><?php echo $gorev[ 'adi_soyadi'.$dil ]; ?></td>
									<td><?php echo $gorev[ 'gorev_adi'.$dil ]; ?></td>
									<td align = "center">
										<a modul = 'gorevler' yetki_islem="duzenle" class = "btn btn-sm btn-warning btn-xs" href = "?modul=gorevler&islem=guncelle&id=<?php echo $gorev[ 'id' ]; ?>&birim_id=<?php echo $birim_id; ?>&birim_adi=<?php echo $birim_adi; ?>" >
											<?php echo dil_cevir( "Düzenle", $dizi_dil, $sistem_dil ); ?>
										</a>
									</td>
									<td align = "center">
										<button modul= 'gorevler' yetki_islem="sil" class="btn btn-xs btn-danger" data-href="_modul/gorevler/gorevlerSEG.php?islem=sil&id=<?php echo $gorev[ 'id' ]; ?>&birim_id=<?php echo $birim_id; ?>&birim_adi=<?php echo $birim_adi; ?>" data-toggle="modal" data-target="#sil_onay"><?php echo dil_cevir( "Sil", $dizi_dil, $sistem_dil ); ?></button>
									</td>
								</tr>
								<?php } ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<?php } ?>
			<div class="col-md-4">
				<div class="card <?php if( $id == 0 ) echo 'card-secondary' ?>">
					<div class="card-header p-2">
						<ul class="nav nav-pills tab-container">
							<?php if( $id > 0 ) { ?>
								<h6 style = 'font-size: 1rem;'> &nbsp;&nbsp;&nbsp; <?php echo dil_cevir( "Görev Düzenle", $dizi_dil, $sistem_dil ); ?></h6>
							<?php } else { ?>

								<h6 style = 'font-size: 1rem;'> &nbsp;&nbsp;&nbsp; <?php echo dil_cevir( "Görev Ekle", $dizi_dil, $sistem_dil ); ?></h6>
							<?php	}
							?>
							
						</ul>
					</div>
					<div class="card-body">
						<?php if( $birim_id > 0 ){ ?>
						<div class="tab-content">
							<!-- GENEL BİLGİLER -->
							<div class="tab-pane active" id="_genel">
								<?php if( $birim_id > 0 ){ ?>
								<div class="alert alert-success" role="alert">
								Şu anda <b><?php echo $birim_adi ?></b> için işlem yapmaktasınız. Birimi değiştirmek için <a href="?modul=gorevler" class="alert-link">tıklayınız.</a>
								</div>		
								<?php } ?>						
								<form class="form-horizontal" action = "_modul/gorevler/gorevlerSEG.php" method = "POST" enctype="multipart/form-data">
									<input type = "hidden" name = "islem" value = "<?php echo $islem; ?>" >
									<input type = "hidden" name = "id" value = "<?php echo $id; ?>">
									<input type = "hidden" name = "birim_id" value = "<?php echo $birim_id; ?>">
									<input type = "hidden" name = "birim_adi" value = "<?php echo $birim_adi; ?>">
									<div class="form-group">
										<label  class="control-label"><?php echo dil_cevir( "Personel", $dizi_dil, $sistem_dil ); ?></label>
										<select class="form-control form-control-sm select2" name = "personel_id" required>
											<option><?php echo dil_cevir( "Seçiniz", $dizi_dil, $sistem_dil ); ?>...</option>
											<?php 
												foreach( $personeller AS $personel ){
													echo '<option value="'.$personel[ "id" ].'" '.( $tek_gorev[ "personel_id" ] == $personel[ "id" ] ? "selected" : null) .'>'.$personel[ "adi" ].' '.$personel[ "soyadi" ].'</option>';
												}

											?>
										</select>
									</div>
									<div class="form-group">
										<label  class="control-label"><?php echo dil_cevir( "Görev", $dizi_dil, $sistem_dil ); ?></label>
										<select class="form-control form-control-sm select2" name = "gorev_kategori_id" required>
											<option><?php echo dil_cevir( "Seçiniz", $dizi_dil, $sistem_dil ); ?>...</option>
											<?php 
												foreach( $gorev_kategorileri AS $gorev_kategori ){
													echo '<option value="'.$gorev_kategori[ "id" ].'" '.( $tek_gorev[ "gorev_kategori_id" ] == $gorev_kategori[ "id" ] ? "selected" : null) .'>'.$gorev_kategori[ "adi" ].'</option>';
												}

											?>
										</select>
									</div>


									<div class="card-footer">
										<?php if( $birim_id >0 ){ ?>
										<button modul= 'gorevler' yetki_islem="kaydet" type="submit" class="<?php echo $kaydet_buton_cls; ?>"><span class="fa fa-save"></span> <?php echo dil_cevir( $kaydet_buton_yazi, $dizi_dil, $sistem_dil ); ?></button>
										<?php } ?>
									</div>
								</form>
							</div>
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

					</div>
				</div>
			</div>
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

var tbl_gorevler = $( "#tbl_gorevler" ).DataTable( {
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
} ).buttons().container().appendTo('#tbl_gorevler_wrapper .col-md-6:eq(0)');



$('#card_gorevler').on('maximized.lte.cardwidget', function() {
	var tbl_gorevler = $( "#tbl_gorevler" ).DataTable();
	var column = tbl_gorevler.column(  tbl_gorevler.column.length - 1 );
	column.visible( ! column.visible() );
	var column = tbl_gorevler.column(  tbl_gorevler.column.length - 2 );
	column.visible( ! column.visible() );
});

$('#card_gorevler').on('minimized.lte.cardwidget', function() {
	var tbl_gorevler = $( "#tbl_gorevler" ).DataTable();
	var column = tbl_gorevler.column(  tbl_gorevler.column.length - 1 );
	column.visible( ! column.visible() );
	var column = tbl_gorevler.column(  tbl_gorevler.column.length - 2 );
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
				document.getElementById("baslik").value = document.getElementsByName("baslik"+dil)[0].value;
				//document.getElementById("editor").value = document.getElementsByName("icerik"+dil)[0].value;
				window.editor.data.set(document.getElementsByName("icerik"+dil)[0].value);
			<?php } ?>
		}
	</script>
