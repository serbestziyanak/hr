<?php
include "../_cekirdek/fonksiyonlar.php";
$vt = new VeriTabani();
$fn = new Fonksiyonlar();

$birim_id				= array_key_exists( 'birim_id' ,$_REQUEST ) ? $_REQUEST[ 'birim_id' ]	: 0;

$SQL_birim_sayfalari_getir = <<< SQL
SELECT
	*
FROM 
	tb_birim_sayfalari
WHERE 
	birim_id = ?
SQL;

$SQL_slaytlar = <<< SQL
SELECT
  *
FROM 
  tb_slaytlar
WHERE 
  birim_id = ?
SQL;

$SQL_genel_ayarlar = <<< SQL
SELECT
  *
FROM 
  tb_genel_ayarlar
WHERE 
  birim_id = ?
SQL;

$SQL_duyurular = <<< SQL
SELECT
  *
FROM 
  tb_duyurular
ORDER BY tarih DESC
SQL;

$SQL_etkinlikler = <<< SQL
SELECT
  *
FROM 
  tb_etkinlikler
ORDER BY tarih DESC
SQL;

$SQL_duyuru_icerik = <<< SQL
SELECT
  *
FROM 
  tb_duyurular
WHERE
  id = ? 
SQL;

$SQL_etkinlik_icerik = <<< SQL
SELECT
  *
FROM 
  tb_etkinlikler
WHERE
  id = ? 
SQL;

$SQL_birim_bilgileri = <<< SQL
SELECT
  *
FROM 
  tb_birim_agaci
WHERE
  kisa_ad = ? 
SQL;

$SQL_birim_sayfa_bilgileri = <<< SQL
SELECT
  *
FROM 
  tb_birim_sayfalari
WHERE
  kisa_ad = ? 
SQL;

$SQL_birim_sayfa_icerikleri = <<< SQL
SELECT
  *
FROM 
  tb_birim_sayfa_icerikleri
WHERE
  sayfa_id = ? 
SQL;


@$birim_bilgileri 	    = $vt->selectSingle($SQL_birim_bilgileri, array( $_REQUEST['kisa_ad'] ) )[ 2 ];
$birim_id				= @array_key_exists( 'id' ,$birim_bilgileri ) ? $birim_bilgileri[ 'id' ]	: 0;
@$birim_sayfa_bilgileri = $vt->selectSingle($SQL_birim_sayfa_bilgileri, array( $_REQUEST['sayfa_kisa_ad'] ) )[ 2 ];
$sayfa_id				= @array_key_exists( 'id' ,$birim_sayfa_bilgileri ) ? $birim_sayfa_bilgileri[ 'id' ]	: 0;
@$birim_sayfa_icerikleri = $vt->selectSingle($SQL_birim_sayfa_icerikleri, array( $sayfa_id ) )[ 2 ];

@$birim_sayfalari 		= $vt->select($SQL_birim_sayfalari_getir, array( $birim_id ) )[ 2 ];
@$duyurular 	        = $vt->select($SQL_duyurular, array( $birim_id ) )[ 2 ];
@$etkinlikler 	        = $vt->select($SQL_etkinlikler, array( $birim_id ) )[ 2 ];
@$slaytlar 	            = $vt->select($SQL_slaytlar, array( $birim_id ) )[ 2 ];
@$genel_ayarlar 	    = $vt->selectSingle($SQL_genel_ayarlar, array( $birim_id ) )[ 2 ];

if( $birim_id == 0 ){
    include "error.html";
    exit;
}
?>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
  <base href="/hr/birim_sayfalari/" />
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title><?php echo $birim_bilgileri['adi']; ?></title>
    <meta name="author" content="themeholy">
    <meta name="description" content="Edura - Online Courses & Education HTML Template">
    <meta name="keywords" content="Edura - Online Courses & Education HTML Template">
    <meta name="robots" content="INDEX,FOLLOW">

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicons - Place favicon.ico in the root directory -->
    <link rel="apple-touch-icon" sizes="57x57" href="assets/img/favicons/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="assets/img/favicons/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="assets/img/favicons/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/favicons/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="assets/img/favicons/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="assets/img/favicons/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="assets/img/favicons/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="assets/img/favicons/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="assets/img/favicons/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="assets/img/favicons/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicons/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicons/favicon-16x16.png">
    <link rel="manifest" href="assets/img/favicons/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="assets/img/favicons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">

    <!--==============================
	  Google Fonts
	============================== -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@400;500;600;700;800&family=Jost:wght@300;400;500;600;700;800;900&family=Roboto:wght@100;300;400;500;700&display=swap" rel="stylesheet">


    <!--==============================
	    All CSS File
	============================== -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!-- Fontawesome Icon -->
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="assets/css/magnific-popup.min.css">
    <!-- Slick Slider -->
    <link rel="stylesheet" href="assets/css/slick.min.css">
    <!-- Nice Select -->
    <link rel="stylesheet" href="assets/css/nice-select.min.css">
    <!-- Theme Custom CSS -->
    <link rel="stylesheet" href="assets/css/style.css">

</head>

<body>


    <!--[if lte IE 9]>
    	<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
  <![endif]-->



    <!--********************************
   		Code Start From Here 
	******************************** -->




    <!--==============================
     Preloader
  ==============================-->
    <div class="preloader ">
        <button class="th-btn style3 preloaderCls">Cancel Preloader </button>
        <div class="preloader-inner">
            <span class="loader"></span>
        </div>
    </div>
    <!--==============================
    Sidemenu
============================== -->
    <div class="sidemenu-wrapper d-none d-lg-block ">
        <div class="sidemenu-content">
            <button class="closeButton sideMenuCls"><i class="far fa-times"></i></button>
            <div class="widget woocommerce widget_shopping_cart">
                <h3 class="widget_title">Duyurular</h3>
                <div class="widget_shopping_cart_content">
                    <ul class="woocommerce-mini-cart cart_list product_list_widget ">
                        <?php foreach( $duyurular as $duyuru ){ ?>
                        <li class="woocommerce-mini-cart-item mini_cart_item">
                            <a href="#"><img src="../resimler/duyurular/<?php echo $duyuru['foto']; ?>" alt="Cart Image"><?php echo $duyuru['baslik']; ?></a>
                            <small class="text-muted"><i class="fa-solid fa-calendar-days"></i> <?php echo $fn->tarihVer($duyuru['tarih']); ?></small>
                           
                        </li>
                        <?php } ?>
                    </ul>
                    <p class="woocommerce-mini-cart__total total">
                        <strong>Subtotal:</strong>
                        <span class="woocommerce-Price-amount amount">
                            <span class="woocommerce-Price-currencySymbol">$</span>4398.00</span>
                    </p>
                    <p class="woocommerce-mini-cart__buttons buttons">
                        <a href="cart.html" class="th-btn wc-forward">View cart</a>
                        <a href="checkout.html" class="th-btn checkout wc-forward">Checkout</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="popup-search-box d-none d-lg-block">
        <button class="searchClose"><i class="fal fa-times"></i></button>
        <form action="#">
            <input type="text" placeholder="What are you looking for?">
            <button type="submit"><i class="fal fa-search"></i></button>
        </form>
    </div>
    <!--==============================
    Mobile Menu
  ============================== -->
    <div class="th-menu-wrapper">
        <div class="th-menu-area text-center">
            <button class="th-menu-toggle"><i class="fal fa-times"></i></button>
            <div class="mobile-logo">
                <a href="index.php"><img src="assets/img/ayu_logo2.png" alt="Edura"></a>
            </div>
            <div class="th-mobile-menu">
                <ul>
                <?php 
                    function buildListMobile(array $array, int $ust_id, int $ilk, $birim_id, $birim_kisa_ad): string
                    {
                        if( $ilk )
                        $menu = "";
                        else
                        $menu = "<ul class='sub-menu'>";
                        foreach($array as $item) {
                            if( $item['ust_id'] == $ust_id ){
                                if( $item['kategori'] == 0 )
                                    $menu .= "<li><a href='{$birim_kisa_ad}/{$item['kisa_ad']}'>{$item['adi']}</a></li>";
                                else
                                        $menu .= "<li class='menu-item-has-children'><a href='#'>{$item['adi']}</a>";
                                if ( $item['kategori'] == 1 ) {
                                        $menu .= buildListMobile($array, $item['id'],0, $birim_id, $birim_kisa_ad);
                                }
                                $menu .= "</li>";
                            }
                        }
                        $menu .= "</ul>";

                        return $menu;
                    }
                    echo buildListMobile($birim_sayfalari, 0, 1, $birim_id, $_REQUEST['kisa_ad']);
                ?>
                </ul>

                <!--ul>
                    <li class="menu-item-has-children">
                        <a href="index.php">Home</a>
                        <ul class="sub-menu">
                            <li class="menu-item-has-children">
                                <a href="#">Multipage</a>
                                <ul class="sub-menu">
                                    <li  class="menu-item-has-children">
                                        <a href="index.php">Home University</a>
                                        <ul class="sub-menu">
                                            <li><a href="home1-rtl.html">University RTL</a></li>
                                            <li><a href="home2-rtl.html">Online Education RTL</a></li>
                                            <li><a href="home3-rtl.html">University Admission RTL</a></li>
                                            <li><a href="home4-rtl.html">Digital Education RTL</a></li>
                                        </ul>
                                    </li>


                                    <li><a href="home-2.html">Home Online Education</a></li>
                                    <li><a href="home-3.html">Home University Admission</a></li>
                                    <li><a href="home-4.html">Home Digital Education</a></li>
                                    <li><a href="home-5.html">Home Academy <span class="new-label">New</span></a></li>
                                    <li><a href="home-6.html">Home Online Training <span class="new-label">New</span></a></li>
                                    <li><a href="home-7.html">Home Online Mentors <span class="new-label">New</span></a></li>
                                    <li><a href="home-8.html">Home Online Courses <span class="new-label">New</span></a></li>
                                    <li><a href="home-9.html">Home Kindergarten <span class="new-label">New</span></a></li>
                                    <li><a href="home-10.html">Home University <span class="new-label">New</span></a></li>
                                    <li><a href="home-11.html">Online Education <span class="new-label">New</span></a></li>
                                    <li><a href="home-12.html">Online Instructor <span class="new-label">New</span></a></li>
                                    <li><a href="home-13.html">Skill Development <span class="new-label">New</span></a></li>
                                    <li><a href="home-14.html">Home Trainer <span class="new-label">New</span></a></li>
                                    <li><a href="home-15.html">Home Admission <span class="new-label">New</span></a></li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children">
                                <a href="#">Onepage</a>
                                <ul class="sub-menu">
                                    <li><a href="home1-onepage.html">University Onepage</a></li>
                                    <li><a href="home2-onepage.html">Online Education Onepage</a></li>
                                    <li><a href="home3-onepage.html">University Admission Onepage</a></li>
                                    <li><a href="home4-onepage.html">Digital Education Onepage</a></li>
                                    <li><a href="home5-onepage.html">Academy Onepage <span class="new-label">New</span></a></li>
                                    <li><a href="home6-onepage.html">Online Training Onepage <span class="new-label">New</span></a></li>
                                    <li><a href="home7-onepage.html">Online Mentors Onepage <span class="new-label">New</span></a></li>
                                    <li><a href="home8-onepage.html">Online Courses Onepage <span class="new-label">New</span></a></li>
                                    <li><a href="home9-onepage.html">Kindergarten Onepage <span class="new-label">New</span></a></li>
                                    <li><a href="home10-onepage.html">University Onepage <span class="new-label">New</span></a></li>
                                    <li><a href="home11-onepage.html">Online Education Onepage <span class="new-label">New</span></a></li>
                                    <li><a href="home12-onepage.html">Online Instructor Onepage <span class="new-label">New</span></a></li>
                                    <li><a href="home13-onepage.html">Skill Development Onepage <span class="new-label">New</span></a></li>
                                    <li><a href="home14-onepage.html">Trainer Onepage <span class="new-label">New</span></a></li>
                                    <li><a href="home15-onepage.html">Admission Onepage <span class="new-label">New</span></a></li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children">
                                <a href="#">RTL</a>
                                <ul class="sub-menu">
                                    <li><a href="home1-rtl.html">University RTL</a></li>
                                    <li><a href="home2-rtl.html">Online Education RTL</a></li>
                                    <li><a href="home3-rtl.html">University Admission RTL</a></li>
                                    <li><a href="home4-rtl.html">Digital Education RTL</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#">Courses</a>
                        <ul class="sub-menu">
                            <li><a href="course.html">Courses With Sidebar</a></li>
                            <li><a href="course-2.html">Courses Without Sidebar</a></li>
                            <li><a href="course-3.html">Courses Videos</a></li>
                            <li><a href="course-details.html">Course Details</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#">Teachers</a>
                        <ul class="sub-menu">
                            <li><a href="team.html">Instructors</a></li>
                            <li><a href="team-details.html">Instructors Details</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#">Pages</a>
                        <ul class="sub-menu">
                            <li><a href="about.html">About Us</a></li>
                            <li class="menu-item-has-children">
                                <a href="#">Shop</a>
                                <ul class="sub-menu">
                                    <li><a href="shop.html">Shop</a></li>
                                    <li><a href="shop-details.html">Shop Details</a></li>
                                    <li><a href="cart.html">Cart Page</a></li>
                                    <li><a href="checkout.html">Checkout</a></li>
                                    <li><a href="wishlist.html">Wishlist</a></li>
                                </ul>
                            </li>
                            <li><a href="event.html">Events</a></li>
                            <li><a href="event-details.html">Event Details</a></li>
                            <li><a href="gallery.html">Gallery</a></li>
                            <li><a href="error.html">Error Page</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#">Blog</a>
                        <ul class="sub-menu">
                            <li><a href="blog.html">Blog</a></li>
                            <li><a href="blog-details.html">Blog Details</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="contact.html">Contact</a>
                    </li>
                </ul-->
            </div>
        </div>
    </div>
    <!--==============================
	Header Area
==============================-->
    <header class="th-header header-layout1">
        <div class="header-top">
            <div class="container">
                <div class="row justify-content-center justify-content-lg-between align-items-center gy-2">
                    <div class="col-auto d-none d-lg-block">
                        <div class="header-links">
                            <ul>
                                <li><i class="far fa-phone"></i><a href="tel:<?php echo $genel_ayarlar['tel']; ?>"><?php echo $genel_ayarlar['tel']; ?></a></li>
                                <li class="d-none d-xl-inline-block"><i class="far fa-envelope"></i><a href="mailto:<?php echo $genel_ayarlar['email']; ?>"><?php echo $genel_ayarlar['email']; ?></a></li>
                                <li><i class="far fa-clock"></i>Mon - Fri: 9:00 - 18:00</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-auto">
                        <div class="header-links header-right">
                            <ul>
                                <li>
                                    <div class="header-social">
                                        <span class="social-title">Follow Us:</span>
                                        <a href="<?php echo $genel_ayarlar['facebook']; ?>"><i class="fab fa-facebook-f"></i></a>
                                        <a href="<?php echo $genel_ayarlar['twitter']; ?>"><i class="fab fa-twitter"></i></a>
                                        <a href="<?php echo $genel_ayarlar['linkedin']; ?>"><i class="fab fa-linkedin-in"></i></a>
                                        <a href="<?php echo $genel_ayarlar['youtube']; ?>"><i class="fab fa-youtube"></i></a>
                                        <a href="<?php echo $genel_ayarlar['instagram']; ?>"><i class="fa-brands fa-instagram"></i></a>
                                    </div>
                                </li>
                                <li class="d-none d-lg-inline-block">
                                    <i class="far fa-user"></i><a href="contact.html">Login / Register</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="sticky-wrapper">
            <!-- Main Menu Area -->
            <div class="menu-area">
                <div class="container">
                    <div class="row align-items-center justify-content-between">
                        <div class="col-auto">
                            <div class="header-logo" style="padding: 0px;">
                                <a href="<?php echo $_REQUEST['kisa_ad']; ?>"><img src="assets/img/ayu_logo2.png" alt="Edura" style="height:75px;"></a>
                            </div>
                        </div>
                        <div class="col-auto">
                            <div class="row">
                                <div class="col-auto">
                                    <nav class="main-menu d-none d-lg-inline-block">
                                        <ul>
                                        <?php 
                                            function buildList(array $array, int $ust_id, int $ilk, $birim_id, $birim_kisa_ad): string
                                            {
                                                if( $ilk )
                                                $menu = "";
                                                else
                                                $menu = "<ul class='sub-menu'>";
                                                foreach($array as $item) {
                                                    if( $item['ust_id'] == $ust_id ){
                                                        if( $item['kategori'] == 0 )
                                                            $menu .= "<li><a href='{$birim_kisa_ad}/{$item['kisa_ad']}'>{$item['adi']}</a></li>";
                                                        else
                                                             $menu .= "<li class='menu-item-has-children'><a href='#' >{$item['adi']}</a>";
                                                        if ( $item['kategori'] == 1 ) {
                                                                $menu .= buildList($array, $item['id'],0, $birim_id, $birim_kisa_ad);
                                                        }
                                                        $menu .= "</li>";
                                                    }
                                                }
                                                $menu .= "</ul>";

                                                return $menu;
                                            }
                                            echo buildList($birim_sayfalari, 0, 1, $birim_id, $_REQUEST['kisa_ad']);
                                        ?>
                                        </ul>
                                        <!--ul>
                                            <li class="menu-item-has-children">
                                                <a href="index.php">Home</a>
                                                <ul class="sub-menu">
                                                    <li class="menu-item-has-children">
                                                        <a href="#">Multipage</a>
                                                        <ul class="sub-menu">
                                                            <li  class="menu-item-has-children">
                                                                <a href="index.php">Home University</a>
                                                                <ul class="sub-menu">
                                                                    <li><a href="home1-rtl.html">University RTL</a></li>
                                                                    <li><a href="home2-rtl.html">Online Education RTL</a></li>
                                                                    <li><a href="home3-rtl.html">University Admission RTL</a></li>
                                                                    <li><a href="home4-rtl.html">Digital Education RTL</a></li>
                                                                </ul>
                                                            </li>


                                                            <li><a href="home-2.html">Home Online Education</a></li>
                                                            <li><a href="home-3.html">Home University Admission</a></li>
                                                            <li><a href="home-4.html">Home Digital Education</a></li>
                                                            <li><a href="home-5.html">Home Academy <span class="new-label">New</span></a></li>
                                                            <li><a href="home-6.html">Home Online Training <span class="new-label">New</span></a></li>
                                                            <li><a href="home-7.html">Home Online Mentors <span class="new-label">New</span></a></li>
                                                            <li><a href="home-8.html">Home Online Courses <span class="new-label">New</span></a></li>
                                                            <li><a href="home-9.html">Home Kindergarten <span class="new-label">New</span></a></li>
                                                            <li><a href="home-10.html">Home University <span class="new-label">New</span></a></li>
                                                            <li><a href="home-11.html">Online Education <span class="new-label">New</span></a></li>
                                                            <li><a href="home-12.html">Online Instructor <span class="new-label">New</span></a></li>
                                                            <li><a href="home-13.html">Skill Development <span class="new-label">New</span></a></li>
                                                            <li><a href="home-14.html">Home Trainer <span class="new-label">New</span></a></li>
                                                            <li><a href="home-15.html">Home Admission <span class="new-label">New</span></a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="menu-item-has-children">
                                                        <a href="#">Onepage</a>
                                                        <ul class="sub-menu">
                                                            <li><a href="home1-onepage.html">University Onepage</a></li>
                                                            <li><a href="home2-onepage.html">Online Education Onepage</a></li>
                                                            <li><a href="home3-onepage.html">University Admission Onepage</a></li>
                                                            <li><a href="home4-onepage.html">Digital Education Onepage</a></li>
                                                            <li><a href="home5-onepage.html">Academy Onepage <span class="new-label">New</span></a></li>
                                                            <li><a href="home6-onepage.html">Online Training Onepage <span class="new-label">New</span></a></li>
                                                            <li><a href="home7-onepage.html">Online Mentors Onepage <span class="new-label">New</span></a></li>
                                                            <li><a href="home8-onepage.html">Online Courses Onepage <span class="new-label">New</span></a></li>
                                                            <li><a href="home9-onepage.html">Kindergarten Onepage <span class="new-label">New</span></a></li>
                                                            <li><a href="home10-onepage.html">University Onepage <span class="new-label">New</span></a></li>
                                                            <li><a href="home11-onepage.html">Online Education Onepage <span class="new-label">New</span></a></li>
                                                            <li><a href="home12-onepage.html">Online Instructor Onepage <span class="new-label">New</span></a></li>
                                                            <li><a href="home13-onepage.html">Skill Development Onepage <span class="new-label">New</span></a></li>
                                                            <li><a href="home14-onepage.html">Trainer Onepage <span class="new-label">New</span></a></li>
                                                            <li><a href="home15-onepage.html">Admission Onepage <span class="new-label">New</span></a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="menu-item-has-children">
                                                        <a href="#">RTL</a>
                                                        <ul class="sub-menu">
                                                            <li><a href="home1-rtl.html">University RTL</a></li>
                                                            <li><a href="home2-rtl.html">Online Education RTL</a></li>
                                                            <li><a href="home3-rtl.html">University Admission RTL</a></li>
                                                            <li><a href="home4-rtl.html">Digital Education RTL</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="menu-item-has-children">
                                                <a href="#">Courses</a>
                                                <ul class="sub-menu">
                                                    <li><a href="course.html">Courses With Sidebar</a></li>
                                                    <li><a href="course-2.html">Courses Without Sidebar</a></li>
                                                    <li><a href="course-3.html">Courses Videos</a></li>
                                                    <li><a href="course-details.html">Course Details</a></li>
                                                </ul>
                                            </li>
                                            <li class="menu-item-has-children">
                                                <a href="#">Teachers</a>
                                                <ul class="sub-menu">
                                                    <li><a href="team.html">Instructors</a></li>
                                                    <li><a href="team-details.html">Instructors Details</a></li>
                                                </ul>
                                            </li>
                                            <li class="menu-item-has-children">
                                                <a href="#">Pages</a>
                                                <ul class="sub-menu">
                                                    <li><a href="about.html">About Us</a></li>
                                                    <li class="menu-item-has-children">
                                                        <a href="#">Shop</a>
                                                        <ul class="sub-menu">
                                                            <li><a href="shop.html">Shop</a></li>
                                                            <li><a href="shop-details.html">Shop Details</a></li>
                                                            <li><a href="cart.html">Cart Page</a></li>
                                                            <li><a href="checkout.html">Checkout</a></li>
                                                            <li><a href="wishlist.html">Wishlist</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="event.html">Events</a></li>
                                                    <li><a href="event-details.html">Event Details</a></li>
                                                    <li><a href="gallery.html">Gallery</a></li>
                                                    <li><a href="error.html">Error Page</a></li>
                                                </ul>
                                            </li>
                                            <li class="menu-item-has-children">
                                                <a href="#">Blog</a>
                                                <ul class="sub-menu">
                                                    <li><a href="blog.html">Blog</a></li>
                                                    <li><a href="blog-details.html">Blog Details</a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="contact.html">Contact</a>
                                            </li>
                                        </ul-->
                                    </nav>
                                    <button type="button" class="th-menu-toggle d-block d-lg-none"><i class="far fa-bars"></i></button>
                                </div>
                                <div class="col-auto d-none d-xl-block">
                                    <div class="header-button">
                                        <button type="button" class="icon-btn searchBoxToggler"><i class="far fa-search"></i></button>
                                        <!--a href="wishlist.html" class="icon-btn">
                                            <i class="far fa-heart"></i>
                                            <span class="badge">3</span>
                                        </a-->
                                        <button type="button" class="icon-btn sideMenuToggler">
                                            <i class="fa-solid fa-bullhorn"></i>
                                            <span class="badge">5</span>
                                        </button>
                                        <a href="https://portal.ayu.edu.kz/" target="_blank" class="th-btn ml-25">AYU Portal <i class="fas fa-arrow-right ms-1"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
<?php if( $sayfa_id > 0 ){
    include "icerik.php";
}else{ ?>
    <!--==============================
Hero Area
==============================-->
    <div class="th-hero-wrapper hero-1" id="hero">
        <div class="hero-slider-1 th-carousel" data-fade="true" data-slide-show="1" data-md-slide-show="1" data-dots="false">


            <div class="th-hero-slide">
                <div class="th-hero-bg" data-overlay="title" data-opacity="8" data-bg-src="assets/img/hero/1.jpg"></div>
                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-md-6">
                            <div class="hero-style1">
                                <h1 class="hero-title text-white" data-ani="slideinleft" data-ani-delay="0.4s">
                                    <?php echo $birim_bilgileri['adi']; ?> 
                                <p class="hero-text" data-ani="slideinleft" data-ani-delay="0.6s"><?php echo $genel_ayarlar['slogan']; ?></p>
                            </div>
                        </div>
                        <div class="col-md-6 text-lg-end text-center">
                            <div class="hero-img1">
                                <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                                <div class="carousel-indicators">
                                    <?php 
                                        $sira=0;
                                        foreach( $slaytlar as $slayt ){
                                            $slayt_aktif = $sira == 0 ? "active" : "";
                                            $slayt_aria = $sira == 0 ? "active" : "";
                                    ?>
                                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="<?php echo $sira; ?>" class="<?php echo $slayt_aktif; ?>" ></button>
                                    <?php $sira++; } ?>
                                </div>
                                <div class="carousel-inner">
                                    <?php 
                                        $sira=0;
                                        foreach( $slaytlar as $slayt ){
                                        $sira++;
                                        $slayt_aktif = $sira == 1 ? "active" : "";
                                    ?>
                                    <div class="carousel-item <?php echo $slayt_aktif; ?>">
                                    <img src="../resimler/slaytlar/<?php echo $slayt['foto']; ?>"  class="d-block w-100"  alt="First slide">
                                    </div>
                                    <?php } ?>
                                </div>
                                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Previous</span>
                                </button>
                                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Next</span>
                                </button>
                                </div>                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hero-shape shape1">
                    <img src="assets/img/hero/shape_1_1.png" alt="shape">
                </div>
                <div class="hero-shape shape2">
                    <img src="assets/img/hero/shape_1_2.png" alt="shape">
                </div>
                <div class="hero-shape shape3"></div>

                <div class="hero-shape shape4 shape-mockup jump-reverse" data-right="3%" data-bottom="7%">
                    <img src="assets/img/hero/shape_1_3.png" alt="shape">
                </div>
                <div class="hero-shape shape5 shape-mockup jump-reverse" data-left="0" data-bottom="0">
                    <img src="assets/img/hero/shape_1_4.png" alt="shape">
                </div>
            </div>
        </div>
    </div>
    <!--======== / Hero Section ========-->
    <!--==============================
Contact Area  
==============================-->


    <!--div class="space-top">
        <div class="container">
            <div class="category-sec-wrap">
                <div class="shape-mockup category-shape-arrow d-xl-block d-none">
                    <img src="assets/img/normal/category-arrow.svg" alt="img">
                </div>
                <div class="row">
                    <div class="col-xl-4">
                        <div class="title-area mb-25 mb-lg-0 text-xl-start text-center">
                            <span class="sub-title"><i class="fal fa-book me-2"></i> Courses Categories</span>
                            <h2 class="sec-title">Explore Top Categories</h2>
                            <a href="course.html" class="th-btn">View All Category<i class="fa-regular fa-arrow-right ms-2"></i></a>
                        </div>
                    </div>
                    <div class="col-xl-8">
                        <div class="row slider-shadow th-carousel category-slider" data-slide-show="4" data-ml-slide-show="3" data-md-slide-show="3" data-sm-slide-show="2" data-arrows="true" data-xl-arrows="true">
                            <div class="col-md-6 col-xl-4">
                                <div class="category-card">
                                    <div class="category-card_icon">
                                        <img src="assets/img/icon/cat-1_1.svg" alt="image">
                                    </div>
                                    <div class="category-card_content">
                                        <h3 class="category-card_title"><a href="course.html">Web Development</a></h3>
                                        <p class="category-card_text">56+ Courses </p>
                                        <a href="course-details.html" class="th-btn">Learn More <i class="fa-solid fa-arrow-right ms-1"></i></a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 col-xl-4">
                                <div class="category-card">
                                    <div class="category-card_icon">
                                        <img src="assets/img/icon/cat-1_2.svg" alt="image">
                                    </div>
                                    <div class="category-card_content">
                                        <h3 class="category-card_title"><a href="course.html">Digital Marketing</a></h3>
                                        <p class="category-card_text">50+ Courses </p>
                                        <a href="course-details.html" class="th-btn">Learn More <i class="fa-solid fa-arrow-right ms-1"></i></a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 col-xl-4">
                                <div class="category-card">
                                    <div class="category-card_icon">
                                        <img src="assets/img/icon/cat-1_3.svg" alt="image">
                                    </div>
                                    <div class="category-card_content">
                                        <h3 class="category-card_title"><a href="course.html">UI/UX Design</a></h3>
                                        <p class="category-card_text">36+ Courses </p>
                                        <a href="course-details.html" class="th-btn">Learn More <i class="fa-solid fa-arrow-right ms-1"></i></a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 col-xl-4">
                                <div class="category-card">
                                    <div class="category-card_icon">
                                        <img src="assets/img/icon/cat-1_4.svg" alt="image">
                                    </div>
                                    <div class="category-card_content">
                                        <h3 class="category-card_title"><a href="course.html">Graphic Design</a></h3>
                                        <p class="category-card_text">24+ Courses </p>
                                        <a href="course-details.html" class="th-btn">Learn More <i class="fa-solid fa-arrow-right ms-1"></i></a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 col-xl-4">
                                <div class="category-card">
                                    <div class="category-card_icon">
                                        <img src="assets/img/icon/cat-1_1.svg" alt="image">
                                    </div>
                                    <div class="category-card_content">
                                        <h3 class="category-card_title"><a href="course.html">Web Development</a></h3>
                                        <p class="category-card_text">56+ Courses </p>
                                        <a href="course-details.html" class="th-btn">Learn More <i class="fa-solid fa-arrow-right ms-1"></i></a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 col-xl-4">
                                <div class="category-card">
                                    <div class="category-card_icon">
                                        <img src="assets/img/icon/cat-1_2.svg" alt="image">
                                    </div>
                                    <div class="category-card_content">
                                        <h3 class="category-card_title"><a href="course.html">Digital Marketing</a></h3>
                                        <p class="category-card_text">50+ Courses </p>
                                        <a href="course-details.html" class="th-btn">Learn More <i class="fa-solid fa-arrow-right ms-1"></i></a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 col-xl-4">
                                <div class="category-card">
                                    <div class="category-card_icon">
                                        <img src="assets/img/icon/cat-1_3.svg" alt="image">
                                    </div>
                                    <div class="category-card_content">
                                        <h3 class="category-card_title"><a href="course.html">UI/UX Design</a></h3>
                                        <p class="category-card_text">36+ Courses </p>
                                        <a href="course-details.html" class="th-btn">Learn More <i class="fa-solid fa-arrow-right ms-1"></i></a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 col-xl-4">
                                <div class="category-card">
                                    <div class="category-card_icon">
                                        <img src="assets/img/icon/cat-1_4.svg" alt="image">
                                    </div>
                                    <div class="category-card_content">
                                        <h3 class="category-card_title"><a href="course.html">Graphic Design</a></h3>
                                        <p class="category-card_text">24+ Courses </p>
                                        <a href="course-details.html" class="th-btn">Learn More <i class="fa-solid fa-arrow-right ms-1"></i></a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div-->
    <!--==============================
About Area  
==============================-->
    <div class="space overflow-hidden" id="about-sec">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-6">
                    <div class="img-box1 mb-40 mb-xl-0">
                        <div class="img1">
                            <img class="tilt-active" src="assets/img/bg/1.jpg" alt="About" style="width: 444px;height: 399px;object-fit: cover;">
                        </div>
                        <div class="about-grid" data-bg-src="assets/img/bg/3.jpg" style="width: 154px;height: 197px;object-fit: cover;">
                            <h3 class="about-grid_year"><span class="counter-number">10</span>k<span class="text-theme">+</span></h3>
                            <p class="about-grid_text">Students Active Our Courses</p>
                        </div>
                        <div class="img2">
                            <img class="tilt-active" src="assets/img/bg/7.jpg" alt="About" style="width: 340px;height: 265px;object-fit: cover;">
                        </div>
                        <div class="shape-mockup about-shape1 jump" data-left="-67px" data-bottom="0">
                            <img src="assets/img/normal/about_1_shape1.png" alt="img">
                        </div>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="title-area mb-30">
                        <span class="sub-title"><i class="fal fa-book me-2"></i> <?php echo $genel_ayarlar['anasayfa_baslik']; ?></span>
                        <h2 class="sec-title"><?php echo $genel_ayarlar['anasayfa_baslik']; ?></h2>
                    </div>
                    <p class="mt-n2 mb-25">
                        <?php echo $genel_ayarlar['anasayfa_icerik']; ?>
                    </p>
                    <div class="btn-group mt-40">
                        <a href="#" class="th-btn">Daha Fazla<i class="fa-regular fa-arrow-right ms-2"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--==============================
Servce Area  
==============================-->
    <section class="space" data-bg-src="assets/img/bg/course_bg_1.png" id="course-sec">
        <div class="container">
            <div class="mb-35 text-center text-md-start">
                <div class="row align-items-center justify-content-between">
                    <div class="col-md-8">
                        <div class="title-area mb-md-0">
                            <span class="sub-title"><i class="fal fa-book me-2"></i> Son Duyurular</span>
                            <h2 class="sec-title">Duyurular</h2>
                        </div>
                    </div>
                    <div class="col-md-auto">
                        <a href="#" class="th-btn">Tüm Duyurular<i class="fa-solid fa-arrow-right ms-2"></i></a>
                    </div>
                </div>
            </div>
            <div class="row slider-shadow th-carousel course-slider-1" data-slide-show="4" data-ml-slide-show="3" data-lg-slide-show="3" data-md-slide-show="2" data-sm-slide-show="1" data-arrows="true">
                <?php foreach( $duyurular as $duyuru ){ ?>
                <div class="col-md-6 col-lg-4">
                    <div class="course-box" style="height: 500px;">
                        <div class="course-img" style="height: 200px;">
                            <img src="../resimler/duyurular/<?php echo $duyuru['foto'] ?>" alt="img" style="height: 200px;object-fit: cover;">
                            <span class="tag"><i class="fas fa-clock"></i> <?php echo $fn->tarihVer($duyuru['tarih']); ?></span>
                        </div>
                        <div class="course-content">
                            <div class="course-rating">
                                <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5">
                                    <span style="width:100%">Rated <strong class="rating">5.00</strong> out of 5</span>
                                </div>
                            </div>
                            <h3 class="course-title" style="font-size: 16px; height:100px;">
                                <a href="course-details.html">
                                <?php echo $duyuru['baslik'] ?>
                                </a>
                            </h3>
                            <div class="course-meta ">
                                <span><i class="fa-solid fa-calendar-days"></i></i><?php echo $fn->tarihVer($duyuru['tarih']); ?></span>
                                <span><i class="fal fa-user"></i>Students 60+</span>
                                <span><i class="fal fa-chart-simple"></i>Beginner</span>
                            </div>
                            <div class="course-author ">
                                <div class="author-info">
                                    <img src="assets/img/ayu_logo.png" alt="author">
                                    <a href="course.html" class="author-name"><?php echo $birim_bilgileri['adi']; ?></a>
                                </div>
                                <div class="offer-tag">Yeni</div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </section>
    <!--==============================
Counter Area  
==============================-->
    <div class="container">
        <div class="counter-area-1 bg-theme" data-bg-src="assets/img/bg/counter-bg_1.png">
            <div class="row justify-content-between">
                <div class="col-sm-6 col-xl-3 counter-card-wrap">
                    <div class="counter-card">
                        <h2 class="counter-card_number"><span class="counter-number">3.9</span>k<span class="fw-normal">+</span></h2>
                        <p class="counter-card_text"><strong>Successfully</strong> Trained</p>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3 counter-card-wrap">
                    <div class="counter-card">
                        <h2 class="counter-card_number"><span class="counter-number">15.8</span>k<span class="fw-normal">+</span></h2>
                        <p class="counter-card_text"><strong>Classes</strong> Completed</p>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3 counter-card-wrap">
                    <div class="counter-card">
                        <h2 class="counter-card_number"><span class="counter-number">97.5</span>k<span class="fw-normal">+</span></h2>
                        <p class="counter-card_text"><strong>Satisfaction</strong> Rate</p>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3 counter-card-wrap">
                    <div class="counter-card">
                        <h2 class="counter-card_number"><span class="counter-number">100.2</span>k<span class="fw-normal">+</span></h2>
                        <p class="counter-card_text"><strong>Students</strong> Community</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--==============================
Cta Area  
==============================-->
    <section class="cta-area-2 position-relative space-bottom">
        <div class="cta-bg-img" data-bg-src="assets/img/bg/cta-bg2.png">
        </div>
        <div class="cta-bg-img2" data-bg-src="assets/img/bg/cta-bg2-shape.png">
        </div>

        <div class="shape-mockup cta-shape1 jump d-md-block d-none" data-left="-2%" data-bottom="-7%">
            <img src="assets/img/normal/cta_2_shape1.png" alt="img">
        </div>

        <div class="shape-mockup cta-shape2 jump-reverse d-md-block d-none" data-right="-1%" data-top="-3%">
            <img src="assets/img/normal/cta_2_shape2.png" alt="img">
        </div>

        <div class="shape-mockup cta-shape3 spin d-md-block d-none" data-right="20%" data-top="30%">
            <img src="assets/img/normal/cta_2_shape3.png" alt="img">
        </div>

        <div class="container text-center">
            <div class="cta-wrap2">
                <div class="title-area text-center mb-35">
                    <span class="sub-title"><i class="fal fa-book me-2"></i>Are You Ready For This Offer</span>
                    <h2 class="sec-title text-white">40% Offer First <span class="text-theme2">100 Student’s</span> For Featured <br> <span class="fw-normal">Topics by Education Category</span></h2>
                    <p class="cta-text">Get unlimited access to 6,000+ of Udemy’s top courses for your team. Learn and improve skills across
                        business, tec, design, and more.</p>
                </div>
                <div class="btn-group justify-content-center">
                    <a href="about.html" class="th-btn style3">Join With Us<i class="fas fa-arrow-right ms-2"></i></a>
                    <a href="contact.html" class="th-btn style2">Become A Teacher<i class="fas fa-arrow-right ms-2"></i></a>
                </div>
            </div>
        </div>
    </section>
    <!--==============================
Event Area  
==============================-->
    <section class="space" data-bg-src="assets/img/bg/event-bg_1.png">
        <div class="shape-mockup event-shape1 jump" data-top="0" data-left="-60px">
            <img src="assets/img/team/team-shape_1_1.png" alt="img">
        </div>
        <div class="container">
            <div class="title-area text-center">
                <span class="sub-title"><i class="fal fa-book me-2"></i> Güncel Etkinlikler</span>
                <h2 class="sec-title">Etkinlikler</h2>
            </div>
            <div class="row slider-shadow event-slider-1 th-carousel gx-70" data-slide-show="3" data-lg-slide-show="3" data-md-slide-show="1" data-sm-slide-show="1" data-xs-slide-show="1" data-arrows="true">
                <?php foreach( $etkinlikler as $etkinlik ){ ?>
                <div class="col-lg-6 col-xl-4">
                    <div class="event-card">
                        <div class="event-card_img" data-mask-src="assets/img/event/event_img-shape.png">
                            <img src="../resimler/etkinlikler/<?php echo $etkinlik['foto'] ?>" alt="event" style="width: 200px;height: 200px;object-fit: cover;">
                        </div>
                        <div class="event-card_content">
                            <div class="event-author">
                                <div class="avater">
                                    <img src="assets/img/ayu_logo.png" alt="avater">
                                </div>
                                <div class="details">
                                    <span class="author-name">David Smith</span>
                                    <p class="author-desig">Chief - Executive</p>
                                </div>
                            </div>
                            <div class="event-meta">
                                <p><i class="fal fa-location-dot"></i>259, NewYork,</p>
                                <p><i class="fal fa-clock"></i>08:00 am - 10:00 am</p>
                            </div>
                            <h3 class="event-card_title" style="font-size: 16px;;">
                                <a href="event-details.html">
                                <?php echo $etkinlik['baslik']; ?>
                                </a>
                            </h3>
                            <div class="event-card_bottom">
                                <a href="event-details.html" class="th-btn">View Event <i class="far fa-arrow-right ms-1"></i></a>
                            </div>
                            <div class="event-card-shape jump">
                                <img src="assets/img/event/event-box-shape1.png" alt="img">
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </section>


<?php } ?>

    <!--==============================
	Footer Area
==============================-->
    <footer class="footer-wrapper footer-layout1" data-bg-src="assets/img/bg/footer-bg.png">
        <div class="shape-mockup footer-shape1 jump" data-left="60px" data-top="70px">
            <img src="assets/img/normal/footer-bg-shape1.png" alt="img">
        </div>
        <div class="shape-mockup footer-shape2 jump-reverse" data-right="80px" data-bottom="120px">
            <img src="assets/img/normal/footer-bg-shape2.png" alt="img">
        </div>
        <div class="footer-top">
            <div class="container">
                <div class="footer-contact-wrap">
                    <div class="footer-contact">
                        <div class="footer-contact_icon icon-btn">
                            <i class="fal fa-phone"></i>
                        </div>
                        <div class="media-body">
                            <p class="footer-contact_text">Call us any time:</p>
                            <a href="tel:<?php echo $genel_ayarlar['tel']; ?>" class="footer-contact_link"><?php echo $genel_ayarlar['tel']; ?></a>
                        </div>
                    </div>
                    <div class="divider"></div>
                    <div class="footer-contact">
                        <div class="footer-contact_icon icon-btn">
                            <i class="fal fa-envelope"></i>
                        </div>
                        <div class="media-body">
                            <p class="footer-contact_text">Email us 24/7 hours:</p>
                            <a href="mailto:<?php echo $genel_ayarlar['email']; ?>" class="footer-contact_link"><?php echo $genel_ayarlar['email']; ?>v</a>
                        </div>
                    </div>
                    <div class="divider"></div>
                    <div class="footer-contact">
                        <div class="footer-contact_icon icon-btn">
                            <i class="fal fa-location-dot"></i>
                        </div>
                        <div class="media-body">
                            <p class="footer-contact_text">Our university location:</p>
                            <a href="https://goo.gl/maps/FfX1sG6LPF4vTT1g7" class="footer-contact_link"><?php echo $genel_ayarlar['adres']; ?></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-wrap" data-bg-src="assets/img/bg/jiji.png">
            <div class="widget-area">
                <div class="container">
                    <div class="row justify-content-between">
                        <div class="col-md-6 col-xxl-3 col-xl-3">
                            <div class="widget footer-widget">
                                <div class="th-widget-about">
                                    <div class="about-logo">
                                        <a href="index.php"><img src="assets/img/ayu_logo_beyaz.png" alt="Ahmet Yesevi Üniversitesi" style="height: 200px;"></a>
                                    </div>
                                    <p class="about-text">Continually optimize backward manufactured products whereas communities negotiate life compelling alignments</p>
                                    <div class="th-social">
                                        <h6 class="title text-white">FOLLOW US ON:</h6>
                                        <a href="<?php echo $genel_ayarlar['facebook']; ?>"><i class="fab fa-facebook-f"></i></a>
                                        <a href="<?php echo $genel_ayarlar['twitter']; ?>"><i class="fab fa-twitter"></i></a>
                                        <a href="<?php echo $genel_ayarlar['linkedin']; ?>"><i class="fab fa-linkedin-in"></i></a>
                                        <a href="<?php echo $genel_ayarlar['youtube']; ?>"><i class="fab fa-youtube"></i></a>
                                        <a href="<?php echo $genel_ayarlar['instagram']; ?>"><i class="fa-brands fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-auto">
                            <div class="widget widget_nav_menu footer-widget">
                                <h3 class="widget_title">Quick Links</h3>
                                <div class="menu-all-pages-container">
                                    <ul class="menu">
                                        <li><a href="course.html">Life Coach</a></li>
                                        <li><a href="course.html">Business Coach</a></li>
                                        <li><a href="course.html">Health Coach</a></li>
                                        <li><a href="course.html">Development</a></li>
                                        <li><a href="course.html">Web Design</a></li>
                                        <li><a href="course.html">SEO Optimize</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-auto">
                            <div class="widget widget_nav_menu footer-widget">
                                <h3 class="widget_title">Resources</h3>
                                <div class="menu-all-pages-container">
                                    <ul class="menu">
                                        <li><a href="contact.html">Community</a></li>
                                        <li><a href="contact.html">Support</a></li>
                                        <li><a href="contact.html">Video Guides</a></li>
                                        <li><a href="contact.html">Documentation</a></li>
                                        <li><a href="contact.html">Security</a></li>
                                        <li><a href="contact.html">Template</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xxl-3 col-xl-3">
                            <div class="widget newsletter-widget footer-widget">
                                <h3 class="widget_title">Get in touch!</h3>
                                <p class="footer-text">Subscribe our newsletter to get our latest
                                    Update & news</p>
                                <form class="newsletter-form form-group">
                                    <input class="form-control" type="email" placeholder="Email Email" required="">
                                    <i class="far fa-envelope"></i>
                                    <button type="submit" class="th-btn style3">Subscribe Now <i class="far fa-arrow-right ms-1"></i></button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="copyright-wrap">
                    <div class="row justify-content-between align-items-center">
                        <div class="col-md-6">
                            <p class="copyright-text">Copyright © 2023 <a href="index.php">Ahmet Yesevi Üniversitesi</a> All Rights Reserved.</p>
                        </div>
                        <div class="col-md-6 text-end d-none d-md-block">
                            <div class="footer-links">
                                <ul>
                                    <li><a href="about.html">Privacy Policy</a></li>
                                    <li><a href="about.html">Terms & Condition</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!--********************************
			Code End  Here 
	******************************** -->

    <!-- Scroll To Top -->
    <div class="scroll-top">
        <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" style="transition: stroke-dashoffset 10ms linear 0s; stroke-dasharray: 307.919, 307.919; stroke-dashoffset: 307.919;"></path>
        </svg>
    </div>

    <!--==============================
    All Js File
============================== -->
    <!-- Jquery -->
    <script src="assets/js/vendor/jquery-3.6.0.min.js"></script>
    <!-- Slick Slider -->
    <script src="assets/js/slick.min.js"></script>
    <!-- Bootstrap -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- Magnific Popup -->
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <!-- Counter Up -->
    <script src="assets/js/jquery.counterup.min.js"></script>
    <!-- Circle Progress -->
    <script src="assets/js/circle-progress.js"></script>
    <!-- Range Slider -->
    <script src="assets/js/jquery-ui.min.js"></script>
    <!-- Isotope Filter -->
    <script src="assets/js/imagesloaded.pkgd.min.js"></script>
    <script src="assets/js/isotope.pkgd.min.js"></script>
    <!-- Tilt JS -->
    <script src="assets/js/tilt.jquery.min.js"></script>
    <!-- Tweenmax JS -->
    <script src="assets/js/tweenmax.min.js"></script>
    <!-- Nice Select JS -->
    <script src="assets/js/nice-select.min.js"></script>

    <!-- Main Js File -->
    <script src="assets/js/main.js"></script>

</html>