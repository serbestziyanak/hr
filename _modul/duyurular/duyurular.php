<?php
$fn	= new Fonksiyonlar();
$vt = new VeriTabani();


/* SEG dosyalarından gelen mesaj */
if( array_key_exists( 'sonuclar', $_SESSION ) ) {
	$mesaj								= $_SESSION[ 'sonuclar' ][ 'mesaj' ];
	$mesaj_turu							= $_SESSION[ 'sonuclar' ][ 'hata' ] ? 'kirmizi' : 'yesil';
	$_REQUEST[ 'id' ]				= $_SESSION[ 'sonuclar' ][ 'id' ];
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


$SQL_tum_duyurular = <<< SQL
SELECT 
	*
FROM 
	tb_duyurular
WHERE 
	birim_id = ?
SQL;

$SQL_tek_duyuru_oku = <<< SQL
SELECT 
	*
FROM 
	tb_duyurular
WHERE 
	id = ? 
SQL;

$SQL_birim_agaci_getir = <<< SQL
SELECT
	*
FROM 
	tb_birim_agaci
SQL;

@$birim_agaclari 		= $vt->select($SQL_birim_agaci_getir, array(  ) )[ 2 ];
$duyurular			= $vt->select( $SQL_tum_duyurular, 	array( $birim_id ) )[ 2 ];
@$tek_duyuru 		= $vt->select( $SQL_tek_duyuru_oku, array( $id ) )[ 2 ][ 0 ];

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
									function kategoriListele3( $kategoriler, $parent = 0, $renk = 0,$vt, $ogrenci_id){
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
																<td class=' bg-renk7 p-1' >
																	$kategori[adi]
																	<a modul= 'duyurular' yetki_islem='birim_sec' href='index.php?modul=duyurular&birim_id=$kategori[id]&birim_adi=$kategori[adi]' onclick='event.stopPropagation();'  class='btn btn-dark float-right btn-xs ml-1' >Seç</a>
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
														$birim_sec_butonu = "<a modul= 'duyurular' yetki_islem='birim_sec' href='index.php?modul=duyurular&birim_id=$kategori[id]&birim_adi=$kategori[adi]' onclick='event.stopPropagation();'  class='btn btn-dark float-right btn-xs ml-1' >Seç</a>";

														$html .= "
																<tr data-widget='expandable-table' aria-expanded='$agac_acik' class='border-0'>
																	<td class='bg-renk$renk p-1'>																
																		$kategori[adi]
																		$birim_sec_butonu
																	<i class='expandable-table-caret fas fa-caret-right fa-fw'></i>
																	</td>
																</tr>
															";								
														$renk++;
														$html .= kategoriListele3($kategoriler, $kategori['id'],$renk, $vt, $ogrenci_id);
														
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
										echo kategoriListele3($birim_agaclari,0,0, $vt, $ogrenci_id);
									

								?>
							</tbody>
							</table>
						</div>

					</div>

				</div>
			</div>
			<?php }else{ ?>

			<div class="col-md-4">
				<div class="card card-secondary" id = "card_duyurular">
					<div class="card-header">
						<h3 class="card-title">Duyurular</h3>
						<div class = "card-tools">
							<button type="button" data-toggle = "tooltip" title = "Tam sayfa göster" class="btn btn-tool" data-card-widget="maximize"><i class="fas fa-expand fa-lg"></i></button>
							<a id = "yeni_duyuru" data-toggle = "tooltip" title = "Yeni Duyuru Ekle" href = "?modul=duyurular&islem=ekle&birim_id=<?php echo $birim_id; ?>&birim_adi=<?php echo $birim_adi; ?>" class="btn btn-tool" ><i class="fas fa-plus fa-lg"></i></a>
						</div>
					</div>
					<div class="card-body">
						<table id="tbl_duyurular" class="table table-bordered table-hover table-sm" width = "100%" >
							<thead>
								<tr>
									<th style="width: 15px">#</th>
									<th>Başlık</th>
									<th data-priority="1" style="width: 20px">Düzenle</th>
									<th data-priority="1" style="width: 20px">Sil</th>
								</tr>
							</thead>
							<tbody>
								<?php $sayi = 1; foreach( $duyurular AS $duyuru ) { ?>
								<tr oncontextmenu="fun();" class ="duyuru-Tr <?php if( $duyuru[ 'id' ] == $id ) echo $satir_renk; ?>" data-id="<?php echo $duyuru[ 'id' ]; ?>">
									<td><?php echo $sayi++; ?></td>
									<td><?php echo $duyuru[ 'baslik' ]; ?></td>
									<td align = "center">
										<a modul = 'duyurular' yetki_islem="duzenle" class = "btn btn-sm btn-warning btn-xs" href = "?modul=duyurular&islem=guncelle&id=<?php echo $duyuru[ 'id' ]; ?>&birim_id=<?php echo $birim_id; ?>&birim_adi=<?php echo $birim_adi; ?>" >
											Düzenle
										</a>
									</td>
									<td align = "center">
										<button modul= 'duyurular' yetki_islem="sil" class="btn btn-xs btn-danger" data-href="_modul/duyurular/duyurularSEG.php?islem=sil&id=<?php echo $duyuru[ 'id' ]; ?>&birim_id=<?php echo $birim_id; ?>&birim_adi=<?php echo $birim_adi; ?>" data-toggle="modal" data-target="#sil_onay">Sil</button>
									</td>
								</tr>
								<?php } ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<?php } ?>
			<div class="col-md-8">
				<div class="card <?php if( $id == 0 ) echo 'card-secondary' ?>">
					<div class="card-header p-2">
						<ul class="nav nav-pills tab-container">
							<?php if( $id > 0 ) { ?>
								<h6 style = 'font-size: 1rem;'> &nbsp;&nbsp;&nbsp; Duyuru Düzenle</h6>
							<?php } else {
								echo "<h6 style = 'font-size: 1rem;'> &nbsp;&nbsp;&nbsp; Duyuru Ekle</h6>";
								}
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
								Şu anda <b><?php echo $birim_adi ?></b> için işlem yapmaktasınız. Birimi değiştirmek için <a href="?modul=duyurular" class="alert-link">tıklayınız.</a>
								</div>		
								<?php } ?>						
								<form class="form-horizontal" action = "_modul/duyurular/duyurularSEG.php" method = "POST" enctype="multipart/form-data">
									<input type = "hidden" name = "islem" value = "<?php echo $islem; ?>" >
									<input type = "hidden" name = "id" value = "<?php echo $id; ?>">
									<input type = "hidden" name = "birim_id" value = "<?php echo $birim_id; ?>">
									<input type = "hidden" name = "birim_adi" value = "<?php echo $birim_adi; ?>">
									<div class="form-group">
										<label class="control-label">Foto</label>
										<input type="file" name="foto" class="" ><br>
										<small class="text-muted">Eklediğiniz görsel 555 x 320 boyutlarında olmalıdır. </small>
									</div>
									<?php if( $islem == "guncelle" ){ ?>
									<div class="form-group">
										<label class="control-label">Var olan görsel</label><br>
										<img src="resimler/duyurular/<?php echo $tek_duyuru[ 'foto' ]; ?>" width="200">
									</div>
									<?php } ?>
									<div class="form-group">
										<label class="control-label">Tarih</label>
										<div class="input-group date" id="tarih" data-target-input="nearest">
											<div class="input-group-append" data-target="#tarih" data-toggle="datetimepicker">
												<div class="input-group-text"><i class="fa fa-calendar"></i></div>
											</div>
											<input required type="text" data-target="#tarih" data-toggle="datetimepicker" name="tarih" value="<?php if( $tek_duyuru[ 'tarih' ] !='' ){echo date('d.m.Y',strtotime($tek_duyuru[ 'tarih' ] ));}//else{ echo date('d.m.Y'); } ?>" class="form-control form-control-sm datetimepicker-input" data-target="#datetimepicker1"/>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label">Başlık</label>
										<input required type="text" class="form-control" name ="baslik" value = "<?php echo $tek_duyuru[ "baslik" ]; ?>"  autocomplete="off">
									</div>
									<div class="form-group">
										<label class="control-label">İçerik</label>
										<style>
										.ck-editor__editable_inline:not(.ck-comment__input *) {
											height: 600px;
											overflow-y: auto;
										}
										</style>
										<textarea id="editor" style="display:none" name="icerik">
										<?php echo @$tek_duyuru[ "icerik" ]; ?>
										</textarea>
									</div>

									<div class="card-footer">
										<?php if( $birim_id >0 ){ ?>
										<button modul= 'duyurular' yetki_islem="kaydet" type="submit" class="<?php echo $kaydet_buton_cls; ?>"><span class="fa fa-save"></span> <?php echo $kaydet_buton_yazi; ?></button>
										<?php } ?>
									</div>
								</form>
							</div>
						</div>
                        <?php }else{ ?>
                            <div class="text-center" style="height:600px;">
                                <h2> Lütfen Birim Seçiniz</h2>
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

var tbl_duyurular = $( "#tbl_duyurular" ).DataTable( {
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
} ).buttons().container().appendTo('#tbl_duyurular_wrapper .col-md-6:eq(0)');



$('#card_duyurular').on('maximized.lte.cardwidget', function() {
	var tbl_duyurular = $( "#tbl_duyurular" ).DataTable();
	var column = tbl_duyurular.column(  tbl_duyurular.column.length - 1 );
	column.visible( ! column.visible() );
	var column = tbl_duyurular.column(  tbl_duyurular.column.length - 2 );
	column.visible( ! column.visible() );
});

$('#card_duyurular').on('minimized.lte.cardwidget', function() {
	var tbl_duyurular = $( "#tbl_duyurular" ).DataTable();
	var column = tbl_duyurular.column(  tbl_duyurular.column.length - 1 );
	column.visible( ! column.visible() );
	var column = tbl_duyurular.column(  tbl_duyurular.column.length - 2 );
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