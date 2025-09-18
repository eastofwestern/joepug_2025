<?php

session_start();
include('includes/connect.php');
include('includes/functions.php');

// category information
$catID = $_GET['catid'];
$catDetails = catDetails($catID);
if ($catDetails['pageType'] === "grid - loose") {
    $theSort = "visual order";
    if ($view === "mobile") {
        $theSort = "visual order mobile";
    }
} else {
    $theSort = "drag";
}

$images = getImages($catID, $theSort);


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

            $hasAutoVideo = false;
            if ($itemVideo['hoverFile'] != "") {
                $hasAutoVideo = true;
                $cellClass .= " autovideo";
            }

            $hasFullVideo = false;
            $fullVideoType = "";
            $videoStr = "";
            if ($itemVideo['embed'] != "") {
                $hasFullVideo = true;
                $cellClass .= " fullvideo";
                $fullVideoType = "embed";
            }
            if ($itemVideo['file'] != "") {
                $hasFullVideo = true;
                $cellClass .= " fullvideo";
                $fullVideoType = "file";
                $videoStr = '<video playsinline><source src="/videos/' . $itemVideo['file'] . '" type="video/mp4"></video>';
            }
            if ($itemVideo['url_desktop'] != "") {
                $hasFullVideo = true;
                $cellClass .= " fullvideo";
                $fullVideoType = "url";
                $videoStr = '<video playsinline class="sizeload" data-hd="' . $itemVideo['url_desktop'] . '" data-sd="' . $itemVideo['url_mobile'] . '"><source src="" type="video/mp4"></video>';
            }

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
                <img src="<?= $loaderImg ?>" data-img="<?= $image['img'] ?>" class="photo <?= $ext ?>" width="<?= $image['width'] ?>" height="<?= $image['height'] ?>" <?php if ($hasTitle) { ?>alt="<?= $image['title'] ?> ?>" <?php } ?> />
            </figure>

        <?php } ?>

        <svg class="arrow" xmlns="http://www.w3.org/2000/svg" width="50" height="44.828" viewBox="0 0 50 44.828">
            <path id="Icon_akar-arrow-right" data-name="Icon akar-arrow-right" d="M6,28.5H54M33,7.5l21,21-21,21" transform="translate(-5 -6.086)" fill="none" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" />
        </svg>

        <svg class="close" xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 50 50">
            <path d="M10,10 L40,40 M40,10 L10,40" fill="none" stroke="#000" stroke-width="2" stroke-linecap="round" />
        </svg>


    </div>

</div>