<?php

$SQL_alt_id_getir = <<< SQL
WITH RECURSIVE alt_kategoriler AS (
    SELECT id
    FROM tb_birim_agaci
    WHERE id = ? -- burası istediğiniz başlangıç ID'si
    UNION ALL
    SELECT k.id
    FROM tb_birim_agaci k
    JOIN alt_kategoriler ak ON k.ust_id = ak.id
)
SELECT * FROM alt_kategoriler;
SQL;
$alt_idler	= $vt->select( $SQL_alt_id_getir, array( $birim_id ) )[ 2 ];
foreach( $alt_idler as $alt_id )
	$birim_alt_idler[] = $alt_id['id'];
$birim_alt_idler = implode(",",$birim_alt_idler);


$where = "AND p.birim_id IN (".$birim_alt_idler.")";
$SQL_personeller = <<< SQL
SELECT
     unv.adi as unvan
    ,unv.adi_kz as unvan_kz
    ,unv.adi_en as unvan_en
    ,unv.adi_ru as unvan_ru
    ,p.*
    ,brm.adi as birim_adi
    ,brm.adi_kz as birim_adi_kz
    ,brm.adi_en as birim_adi_en
    ,brm.adi_ru as birim_adi_ru
FROM 
	tb_personeller as p
LEFT JOIN tb_unvanlar AS unv ON p.unvan_id = unv.id
LEFT JOIN tb_birim_agaci as brm ON p.birim_id = brm.id
WHERE p.aktif = 1 $where
ORDER BY unv.sira IS NULL, unv.sira ASC,p.adi
SQL;

$personeller = $vt->select( $SQL_personeller, 	array(  ) )[ 2 ];

?>

    <!--==============================
Team Area  
==============================-->
    <div class="team-area overflow-hidden space">
        <div class="container">
            <div class="row align-items-center gy-4">
                <!-- Single Item -->
                <?php 
                    foreach( $personeller as $personel ){
                        if( $personel['foto'] == "resim_yok.png" or $personel['foto'] == "" ) $foto = "ayu_logo.png"; else $foto = $personel['foto'];
                ?>
                <div class="col-sm-6 col-lg-4 col-xl-3">
                    <div class="team-card style3">
                        <div class="team-img-wrap">
                            <div class="team-img">
                                <img src="../admin/resimler/personel_resimler/<?php echo $foto; ?>" alt="Team" style="width: 327px;height: 300px;object-fit: cover;">
                            </div>
                        </div>
                        <div class="team-hover-wrap">
                            <div class="team-social">
                                <a href="#" class="icon-btn">
                                    <i class="far fa-plus"></i>
                                </a>
                                <div class="th-social">
                                    <a target="_blank" href="<?php echo $personel['orcid'.$dil]; ?>" style="font-size:30px;"><i class="fa-brands fa-orcid"></i></a>
                                    <a target="_blank" href="<?php echo $personel['scholar'.$dil]; ?>"><img src="assets/img/icons8-google-scholar-48.png"></a>
                                    <a target="_blank" href="mailto:<?php echo $personel['email'.$dil]; ?>"><i class="fa-solid fa-envelope"></i></a>
                                    <a target="_blank" href="<?php echo $personel['avesis'.$dil]; ?>"><img src="assets/img/avesis.png"></i></a>
                                </div>
                            </div>
                            <div class="team-content">
                                <h3 class="team-title" style="font-size:18px;"><a href="team-details.html"><?php echo $personel['unvan'.$dil]." ".$personel['adi'.$dil]." ".$personel['soyadi'.$dil]; ?></a></h3>
                                <span class="team-desig"><?php echo $personel['birim_adi'.$dil]; ?></span>
                            </div>
                            <div class="team-info">
                                <span><i class="fal fa-file-check"></i>2 Courses</span>
                                <span><i class="fa-light fa-users"></i>Students 60+</span>
                            </div>
                        </div>
                    </div>
                </div>
                <?php
                    }
                ?>
                <!-- Single Item 
                <div class="col-sm-6 col-lg-4 col-xl-3">
                    <div class="team-card style3">
                        <div class="team-img-wrap">
                            <div class="team-img">
                                <img src="assets/img/team/team_1_2.jpg" alt="Team">
                            </div>
                        </div>
                        <div class="team-hover-wrap">
                            <div class="team-social">
                                <a href="#" class="icon-btn">
                                    <i class="far fa-plus"></i>
                                </a>
                                <div class="th-social">
                                    <a target="_blank" href="https://vimeo.com/"><i class="fab fa-vimeo-v"></i></a>
                                    <a target="_blank" href="https://linkedin.com/"><i class="fab fa-linkedin-in"></i></a>
                                    <a target="_blank" href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
                                    <a target="_blank" href="https://facebook.com/"><i class="fab fa-facebook-f"></i></a>
                                </div>
                            </div>
                            <div class="team-content">
                                <h3 class="team-title"><a href="team-details.html">Lily Michelle</a></h3>
                                <span class="team-desig">Senior Instructor</span>
                            </div>
                            <div class="team-info">
                                <span><i class="fal fa-file-check"></i>2 Courses</span>
                                <span><i class="fa-light fa-users"></i>Students 60+</span>
                            </div>
                        </div>
                    </div>
                </div>
                -->

            </div>
        </div>
    </div>
   
