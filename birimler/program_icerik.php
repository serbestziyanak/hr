<?php

$SQL_birim_bilgileri = <<< SQL
SELECT
  *
FROM 
  tb_birim_agaci
WHERE
  program_kodu = ? 
SQL;
@$birim_bilgileri = $vt->selectSingle($SQL_birim_bilgileri, array( $_REQUEST['id'] ) )[ 2 ];
$birim_id = $birim_bilgileri['id'];

$SQL_birim_bilgileri2 = <<< SQL
SELECT
  *
FROM 
  tb_birim_agaci
WHERE
  id = ? 
SQL;
@$duzey = $vt->selectSingle($SQL_birim_bilgileri2, array( $birim_bilgileri['ust_id'] ) )[ 2 ];
$duzey_adi = $duzey['adi'];
@$bolum = $vt->selectSingle($SQL_birim_bilgileri2, array( $duzey['ust_id'] ) )[ 2 ];
$bolum_adi = $bolum['adi'];
@$fakulte = $vt->selectSingle($SQL_birim_bilgileri2, array( $bolum['ust_id'] ) )[ 2 ];
$fakulte_adi = $fakulte['adi'];

$SQL_birim_sayfa_bilgileri = <<< SQL
SELECT
  *
FROM 
  tb_birim_sayfalari
WHERE
  birim_id = ? 
SQL;
@$birim_sayfalari = $vt->select($SQL_birim_sayfa_bilgileri, array( $birim_id ) )[ 2 ];


$SQL_birim_sayfa_icerikleri = <<< SQL
SELECT
  *
FROM 
  tb_birim_sayfa_icerikleri
WHERE
  sayfa_id = ? 
SQL;



?>


<!--==============================
    Breadcumb
============================== -->
    <div class="breadcumb-wrapper " data-bg-src="assets/img/bg/2.jpg" data-overlay="title" data-opacity="8">
        <div class="breadcumb-shape" data-bg-src="assets/img/bg/breadcumb_shape_1_1.png">
        </div>
        <div class="shape-mockup breadcumb-shape2 jump d-lg-block d-none" data-right="30px" data-bottom="30px">
            <img src="assets/img/bg/breadcumb_shape_1_2.png" alt="shape">
        </div>
        <div class="shape-mockup breadcumb-shape3 jump-reverse d-lg-block d-none" data-left="50px" data-bottom="80px">
            <img src="assets/img/bg/breadcumb_shape_1_3.png" alt="shape">
        </div>
        <div class="container">
            <div class="breadcumb-content text-center">
                <h1 class="breadcumb-title"><?php echo dil_cevir( "Programlar", $dizi_dil, $_REQUEST["dil"] ); ?></h1>
                <ul class="breadcumb-menu">
                    <li><a href="<?php echo $_REQUEST['kisa_ad']; ?>"><?php echo dil_cevir( "Anasayfa", $dizi_dil, $_REQUEST["dil"] ); ?></a></li>
                    <li><?php echo dil_cevir( "Programlar", $dizi_dil, $_REQUEST["dil"] );?></li>
                </ul>
            </div>
        </div>
    </div>
    <!--==============================
Project Area  
==============================-->
    <!--==============================
Event Area  
==============================-->
    <section class="space-top space-extra2-bottom">
        <div class="container">
            <div class="row">
                <div class="col-xxl-9 col-lg-8">
                    <div class="course-single">
                        <div class="course-single-top">
                            <?php
                            foreach( $birim_sayfalari as $birim_sayfa ){
                                if( $birim_sayfa['kisa_ad'] == 'program-hakkinda' ){
                                @$sayfa_icerik = $vt->selectSingle($SQL_birim_sayfa_icerikleri, array( $birim_sayfa['id'] ) )[ 2 ];
                                
                                break;
                                }
                            }
                            ?>
                            <h5 ><a href="<?php echo $_REQUEST['dil']; ?>/<?php echo $fakulte['kisa_ad']; ?>"><?php echo $fakulte['adi']; ?></a> / <a href="<?php echo $_REQUEST['dil']; ?>/<?php echo $bolum['kisa_ad']; ?>"><?php echo $bolum['adi']; ?></a> / <a><?php echo $duzey_adi; ?></a></h5>
                            <h2 class="course-title"><?php echo $birim_bilgileri['program_kodu']; ?> - <?php echo $birim_bilgileri['adi']; ?></h2>
                            <?php if( $sayfa_icerik['foto'] != "" ){ ?>
                            <div class="course-img">
                                <img src="../admin/resimler/programlar/<?php echo $sayfa_icerik['foto']; ?>" alt="Course Image">
                                <span class="tag"><i class="fas fa-clock"></i> <?php echo $fakulte_adi; ?></span>
                                <span class="tag2 bg-theme"><i class="fas fa-clock"></i> <?php echo $bolum_adi; ?></span>
                            </div>
                            <?php } ?>
                            <!--div class="course-meta style2">
                                <span><i class="fal fa-file"></i>Lesson 8</span>
                                <span><i class="fal fa-user"></i>Students 60+</span>
                                <span><i class="fal fa-chart-simple"></i>Beginner</span>
                            </div-->
                            <h2 class="course-title"><?php echo $sayfa_icerik['baslik']; ?></h2>
                            <p>
                                <?php echo $sayfa_icerik['icerik']; ?>
                            </p>
                            <!--ul class="course-single-meta">
                                <li class="course-single-meta-author">
                                    <img src="assets/img/course/author2.png" alt="author">
                                    <span>
                                        <span class="meta-title">Instructor: </span>
                                        <a href="course.html">Max Alexix</a>
                                    </span>
                                </li>
                                <li>
                                    <span class="meta-title">Category: </span>
                                    <a href="course.html">Web Development</a>
                                </li>
                                <li>
                                    <span class="meta-title">Last Update: </span>
                                    <a href="course.html">20 Jun, 2023</a>
                                </li>
                                <li>
                                    <span class="meta-title">Review: </span>
                                    <div class="course-rating">
                                        <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                            <span style="width:80%">Rated <strong class="rating">4.00</strong> out of 5</span>
                                        </div>
                                        (4.00)
                                    </div>
                                </li>
                            </ul-->
                        </div>
                        <div class="course-single-bottom">
                            <ul class="nav course-tab" id="courseTab" role="tablist">
                                <?php
                                $sira = 0;
                                $icon = array( "fa-regular fa-bookmark","fa-regular fa-star-sharp","fa-regular fa-book","fa-regular fa-user" );
                                foreach( $birim_sayfalari as $birim_sayfa ){
                                    if( $birim_sayfa['kisa_ad'] == 'program-hakkinda' )
                                        continue;
                                    $sira++;
                                ?>
                                <li class="nav-item " role="presentation">
                                    <a style="" class="nav-link <?php if( $sira == 1 ) echo "active"; ?>" id="tab-<?php echo $birim_sayfa['id']; ?>" data-bs-toggle="tab" href="#Coursedescription<?php echo $birim_sayfa['id']; ?>" role="tab" aria-controls="Coursedescription" aria-selected="true">
                                        <i class="<?php echo $icon[$sira-1]; ?>"></i>
                                        <?php echo $birim_sayfa['adi']; ?>
                                    </a>
                                </li>
                                <?php 
                                }
                                ?>
                                <!--li class="nav-item" role="presentation">
                                    <a class="nav-link active" id="description-tab" data-bs-toggle="tab" href="#Coursedescription" role="tab" aria-controls="Coursedescription" aria-selected="true"><i class="fa-regular fa-bookmark"></i>Overview</a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" id="curriculam-tab" data-bs-toggle="tab" href="#curriculam" role="tab" aria-controls="curriculam" aria-selected="false"><i class="fa-regular fa-book"></i>Curriculam</a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" id="instructor-tab" data-bs-toggle="tab" href="#instructor" role="tab" aria-controls="instructor" aria-selected="false"><i class="fa-regular fa-user"></i>Instructor</a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" id="reviews-tab" data-bs-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false"><i class="fa-regular fa-star-sharp"></i>Reviews</a>
                                </li-->
                            </ul>
                            <div class="tab-content" id="productTabContent">
                                <?php
                                $sira = 0;
                                foreach( $birim_sayfalari as $birim_sayfa ){
                                    if( $birim_sayfa['kisa_ad'] == 'program-hakkinda' )
                                        continue;
                                    $sira++;
                                    @$sayfa_icerik = $vt->selectSingle($SQL_birim_sayfa_icerikleri, array( $birim_sayfa['id'] ) )[ 2 ];
                                ?>
                                <div class="tab-pane fade <?php if( $sira == 1 ) echo "show active"; ?>" id="Coursedescription<?php echo $birim_sayfa['id']; ?>" role="tabpanel" aria-labelledby="tab-<?php echo $birim_sayfa['id']; ?>">
                                    <div class="course-description">
                                        <h5 class="h5"><?php echo $sayfa_icerik['baslik']; ?></h5>
                                        <p>
                                            <?php echo $sayfa_icerik['icerik']; ?>
                                        </p>
                                    </div>
                                </div>
                                <?php 
                                }
                                ?>

                                <div class="tab-pane fade" id="curriculam" role="tabpanel" aria-labelledby="curriculam-tab">
                                    <div class="course-curriculam">
                                        <h5 class="h5">The Course Curriculam</h5>
                                        <p class="mb-30">Grursus mal suada faci lisis Lorem ipsum dolarorit more ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit to the consectetur elit. All the Lorem Ipsum generators on the Internet tend to repeat that predefined chunks as necessary, making this the first true dummy generator on the Internet.</p>
                                        <div class="checklist mb-1">
                                            <ul>
                                                <li>How to use social media to reach local, national and international audiences</li>
                                                <li>How to set up and market events, using online tools, so you no longer depend</li>
                                                <li>How to create and run online shows, adapt your performance techniques and</li>
                                                <li>Mentoring and troubleshooting and post-training support from Jason</li>
                                                <li>How to use social media to reach local, national and international audiences</li>
                                                <li>How to set up and market events, using online tools</li>
                                                <li>Adapt your performance techniques and manage your audience throughout</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="instructor" role="tabpanel" aria-labelledby="instructor-tab">
                                    <div class="course-instructor">
                                        <div class="course-author-box">
                                            <div class="auhtor-img">
                                                <img src="assets/img/team/team_2_1.jpg" alt="Author Image">
                                            </div>
                                            <div class="media-body">
                                                <h3 class="author-name"><a class="text-inherit" href="team-details.html">Kevin Perry</a></h3>
                                                <p class="author-text">Optimize resource eveling innoation whereas visionary value. Compellingly engage extensible process with business process improvements.</p>
                                                <div class="author-meta">
                                                    <a href="course.html"><i class="fal fa-file-video"></i>4 Courses</a>
                                                    <span><i class="fal fa-users"></i>2500 Students</span>
                                                </div>
                                                <div class="th-social">
                                                    <a href="https://facebook.com/" target="_blank"><i class="fab fa-facebook-f"></i></a>
                                                    <a href="https://twitter.com/" target="_blank"><i class="fab fa-twitter"></i></a>
                                                    <a href="https://linkedin.com/" target="_blank"><i class="fab fa-linkedin-in"></i></a>
                                                    <a href="https://instagram.com/" target="_blank"><i class="fab fa-instagram"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
                                    <div class="course-Reviews">
                                        <div class="th-comments-wrap ">
                                            <ul class="comment-list">
                                                <li class="review th-comment-item">
                                                    <div class="th-post-comment">
                                                        <div class="comment-avater">
                                                            <img src="assets/img/blog/comment-author-3.jpg" alt="Comment Author">
                                                        </div>
                                                        <div class="comment-content">
                                                            <h4 class="name">Mark Jack</h4>
                                                            <span class="commented-on"><i class="fal fa-calendar-alt"></i>22 April, 2022</span>
                                                            <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5">
                                                                <span style="width:100%">Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span>
                                                            </div>
                                                            <p class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="review th-comment-item">
                                                    <div class="th-post-comment">
                                                        <div class="comment-avater">
                                                            <img src="assets/img/blog/comment-author-2.jpg" alt="Comment Author">
                                                        </div>
                                                        <div class="comment-content">
                                                            <h4 class="name">Alexa Deo</h4>
                                                            <span class="commented-on"><i class="fal fa-calendar-alt"></i>26 April, 2022</span>
                                                            <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5">
                                                                <span style="width:100%">Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span>
                                                            </div>
                                                            <p class="text">The purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn't distract from the layout. A practice not without controversy, laying out pages.</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="review th-comment-item">
                                                    <div class="th-post-comment">
                                                        <div class="comment-avater">
                                                            <img src="assets/img/blog/comment-author-1.jpg" alt="Comment Author">
                                                        </div>
                                                        <div class="comment-content">
                                                            <h4 class="name">Tara sing</h4>
                                                            <span class="commented-on"><i class="fal fa-calendar-alt"></i>26 April, 2022</span>
                                                            <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5">
                                                                <span style="width:100%">Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span>
                                                            </div>
                                                            <p class="text">The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software.</p>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div> <!-- Comment Form -->
                                        <div class="th-comment-form ">
                                            <div class="form-title">
                                                <h3 class="blog-inner-title ">Add a review</h3>
                                            </div>
                                            <div class="row">
                                                <div class="form-group rating-select d-flex align-items-center">
                                                    <label>Your Rating</label>
                                                    <p class="stars">
                                                        <span>
                                                            <a class="star-1" href="#">1</a>
                                                            <a class="star-2" href="#">2</a>
                                                            <a class="star-3" href="#">3</a>
                                                            <a class="star-4" href="#">4</a>
                                                            <a class="star-5" href="#">5</a>
                                                        </span>
                                                    </p>
                                                </div>
                                                <div class="col-12 form-group">
                                                    <textarea placeholder="Write a Message" class="form-control"></textarea>
                                                    <i class="text-title far fa-pencil-alt"></i>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <input type="text" placeholder="Your Name" class="form-control">
                                                    <i class="text-title far fa-user"></i>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <input type="text" placeholder="Your Email" class="form-control">
                                                    <i class="text-title far fa-envelope"></i>
                                                </div>
                                                <div class="col-12 form-group">
                                                    <input id="reviewcheck" name="reviewcheck" type="checkbox">
                                                    <label for="reviewcheck">Save my name, email, and website in this browser for the next time I comment.<span class="checkmark"></span></label>
                                                </div>
                                                <div class="col-12 form-group mb-0">
                                                    <button class="th-btn">Post Review <i class="far fa-arrow-right ms-1"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-3 col-lg-4">
                    <aside class="sidebar-area">
                        <div class="widget  ">
                            <h3 class="widget_title"><?php echo dil_cevir( "Duyurular", $dizi_dil, $_REQUEST["dil"] ); ?></h3>
                            <div class="recent-post-wrap">
                                <?php foreach( $duyurular as $duyuru ){ 
                                    if( $duyuru['foto'] == "" )
                                        $duyuru_foto = "ayu_logo.png";
                                    else
                                        $duyuru_foto = $duyuru['foto'];    
                                
                                ?>
                                <div class="recent-post">
                                    <div class="media-img">
                                        <a href="<?php echo $_REQUEST["dil"]."/".$_REQUEST['kisa_ad']; ?>/duyurular/<?php echo $duyuru['id']; ?>"><img src="../admin/resimler/duyurular/<?php echo $duyuru_foto; ?>" alt="Blog Image"  style="width: 80px;height: 80px;object-fit: cover;"></a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="post-title" style="font-size: 12px;"><a class="text-inherit" href="<?php echo $_REQUEST['dil']; ?>/<?php echo $_REQUEST['kisa_ad']; ?>/duyurular/<?php echo $duyuru['id']; ?>"><?php echo $duyuru['baslik'.$dil]; ?></a></h4>
                                        <div class="recent-post-meta">
                                            <small class="text-muted"><a href="<?php echo $_REQUEST['dil']; ?>/<?php echo $_REQUEST['kisa_ad']; ?>/duyurular/<?php echo $duyuru['id']; ?>"><i class="fal fa-calendar"></i><?php echo $fn->tarihVer($duyuru['tarih']); ?></a></small>
                                        </div>
                                    </div>
                                </div>
                                <?php } ?>
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </section>
