<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
session_start();
include('includes/connect.php');
include('includes/functions.php');

$itemID = $_GET['id'];
$item = getMainImage($itemID);
$itemVideo = getImageVideo($itemID);
$catID = $item['catid'];
$catDetails = catDetails($catID);

$images = getImages($catID);

?>

<div class="wrap">
    <!-- <?php if ($itemVideo['embed'] != "") { ?>
        <?= $itemVideo['embed'] ?>
    <?php } elseif ($itemVideo['file'] != "") { ?>
        <video playsinline controls poster="<?= getOption("imagePathFront") ?>1920/<?= $item['img'] ?>">
            <source src="/videos/<?= $itemVideo['file'] ?>" />
        </video>
    <?php } else { ?>
        <img src="<?= getOption("imagePathFront") ?>1920/<?= $item['img'] ?>" alt="" />
    <?php } ?> -->


    <div class="slideshow data-flickity">

        <?php for ($count = 1; $image = mysqli_fetch_array($images); ++$count) { ?>

            <?php

            $ext = pathinfo(getOption("physicalPath") . "images/pics/" . $image['img'], PATHINFO_EXTENSION);
            $itemRatio = $image['height'] / $image['width'];
            $itemPad = $itemRatio * 100;

            $itemVideo = getImageVideo($image['id']);

            $cellClass = "";

            print_r($ext);

            // $hasAutoVideo = false;
            // if ($itemVideo['hoverFile'] != "") {
            //     $hasAutoVideo = true;
            //     $cellClass .= " autovideo";
            // }

            // $hasFullVideo = false;
            // $fullVideoType = "";
            // $videoStr = "";
            // if ($itemVideo['embed'] != "") {
            //     $hasFullVideo = true;
            //     $cellClass .= " fullvideo";
            //     $fullVideoType = "embed";
            // }
            // if ($itemVideo['file'] != "") {
            //     $hasFullVideo = true;
            //     $cellClass .= " fullvideo";
            //     $fullVideoType = "file";
            //     $videoStr = '<video playsinline><source src="/videos/' . $itemVideo['file'] . '" type="video/mp4"></video>';
            // }
            // if ($itemVideo['url_desktop'] != "") {
            //     $hasFullVideo = true;
            //     $cellClass .= " fullvideo";
            //     $fullVideoType = "url";
            //     $videoStr = '<video playsinline class="sizeload" data-hd="' . $itemVideo['url_desktop'] . '" data-sd="' . $itemVideo['url_mobile'] . '"><source src="" type="video/mp4"></video>';
            // }

            $hasTitle = false;
            $hasCaption = false;

            if ($image['title'] != "title:" and $image['title'] != "") {
                $hasTitle = true;
            }

            if ($image['caption'] != "caption:" and $image['caption'] != "") {
                $hasCaption = true;
            }

            ?>

            <figure class="cell <?= $cellClass ?>">
                <img src="<?= $image["img"] ?>" data-img="<?= $image['img'] ?>" class="photo loadmeview <?= $ext ?>" width="<?= $image['width'] ?>" height="<?= $image['height'] ?>" <?php if ($hasTitle) { ?>alt="<?= $image['title'] ?> ?>" <?php } ?> />



                <div class="number">
                    <p>- <?= $count ?> -</p>
                </div>
            </figure>

        <?php } ?>
    </div>

</div>