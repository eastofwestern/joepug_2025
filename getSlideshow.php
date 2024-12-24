<?php
// ini_set('display_errors', 1);
// ini_set('display_startup_errors', 1);
// error_reporting(E_ALL);
session_start();
include('includes/connect.php');
include('includes/functions.php');

// individual image information
$itemID = $_GET['id'];
$item = getMainImage($itemID);
$itemVideo = getImageVideo($itemID);

// category information
$catID = $_GET['catid'];
$catDetails = catDetails($catID);
$images = getImages($catID, $catDetails['sorter']);


?>


<div class="wrap">

    <div class="slideshow data-flickity">

        <?php for ($count = 0; $image = mysqli_fetch_array($images); ++$count) { ?>

            <?php

            $ext = pathinfo(getOption("physicalPath") . "images/pics/" . $image['img'], PATHINFO_EXTENSION);
            $itemRatio = $image['height'] / $image['width'];
            $itemPad = $itemRatio * 100;

            $itemVideo = getImageVideo($image['id']);

            $cellClass = "";

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

            <figure class="cell <?= $cellClass ?>" data-id="<?= $image['id'] ?>">
                <img src="<?= $loaderImg ?>" data-img="<?= $image['img'] ?>" class="photo loadmeview <?= $ext ?>" width="<?= $image['width'] ?>" height="<?= $image['height'] ?>" <?php if ($hasTitle) { ?>alt="<?= $image['title'] ?> ?>" <?php } ?> />



                <div class="number">
                    <p>- <?= $count + 1 ?> -</p>
                </div>
            </figure>

        <?php } ?>

    </div>

    <?php /*
    <!-- PLACEHOLDER CODE: -->

    <div class="slideshow data-flickity">
        <figure class="cell" data-id="15169">
            <p class="title"><strong> Project Title | </strong> Client</p>
            <img src="/images/pics/734_LQuEdA_image-28.jpg" alt="">
            <div class="number">
                <p>- 1 -</p>
            </div>
        </figure>
        <figure class="cell" data-id="15166">
            <p class=" title"><strong> Project Title | </strong> Client</p>
            <img src="/images/pics/734_0NDOJe_image-29.jpg" alt="">
            <div class="number">
                <p>- 2 -</p>
            </div>
        </figure>
        <figure class="cell" data-id="15165">
            <p class="title"><strong> Project Title | </strong> Client</p>
            <img src="/images/pics/734_hcr2jo_image-30.jpg" alt="">
            <div class="number">
                <p>- 3 -</p>
            </div>
        </figure>
        <figure class="cell" data-id="15164">
            <p class="title"><strong> Project Title | </strong> Client</p>
            <img src="/images/pics/734_qikboB_image-31.jpg" alt="">
            <div class="number">
                <p>- 4 -</p>
            </div>
        </figure>
        <figure class="cell" data-id="15171">
            <p class="title"><strong> Project Title | </strong> Client</p>
            <img src="/images/pics/734_S0HX1J_image-32.jpg" alt="">
            <div class="number">
                <p>- 5 -</p>
            </div>
        </figure>
    </div>

    */ ?>





</div>