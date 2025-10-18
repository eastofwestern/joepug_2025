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

        <svg class="arrow left" id="Layer_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 139.73 80.29">
            <defs>
                <style>
                    .cls-1 {
                        fill: #231f20;
                    }
                </style>
            </defs>
            <g id="Layer_1-2">
                <path class="cls-1" d="M74.25,80.29L0,40.15,74.25,0v15.59l-29.43,15.4c-6.43,3.51-7.41,6.04-7.41,9.55,0,3.12,1.36,5.65,7.41,8.96l29.43,15.4v15.4ZM139.73,80.29l-74.06-40.15L139.73,0v15.59l-29.23,15.4c-6.63,3.51-7.41,6.04-7.41,9.55,0,3.12,1.36,5.65,7.41,8.96l29.23,15.4v15.4Z" />
            </g>
        </svg>

        <svg class="arrow right" id="Layer_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 139.73 80.29">
            <defs>
                <style>
                    .cls-1 {
                        fill: #231f20;
                    }
                </style>
            </defs>
            <g id="Layer_1-2">
                <path class="cls-1" d="M0,80.29v-15.4l29.43-15.4c6.04-3.31,7.41-5.85,7.41-8.96,0-3.51-.97-6.04-7.41-9.55L0,15.59V0l74.25,40.15L0,80.29ZM65.68,80.29v-15.4l29.23-15.4c6.24-3.31,7.6-5.85,7.6-8.96,0-3.51-.97-6.04-7.6-9.55l-29.23-15.4V0l74.06,40.15-74.06,40.15Z" />
            </g>
        </svg>

        <svg class="close" id="Layer_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 83.75 80.29">
            <defs>
                <style>
                    .cls-1a {
                        fill: none;
                    }

                    .cls-2a {
                        fill: #231f20;
                    }
                </style>
            </defs>
            <g id="Layer_1-2">
                <path class="cls-1a" d="M49.07,58.83c-1.8-2.3-4.2-4.99-7.19-4.99s-5.4,2.69-7.19,4.99l-17.92,21.47h50.22l-17.91-21.47Z" />
                <path class="cls-1a" d="M34.68,21.47c1.8,2.3,4.2,4.99,7.19,4.99s5.4-2.69,7.19-4.99L66.98,0H16.77l17.92,21.47Z" />
                <path class="cls-2a" d="M83.75,0h-16.77l-17.92,21.47c-1.8,2.3-4.2,4.99-7.19,4.99s-5.4-2.69-7.19-4.99L16.77,0H0l33.68,40.15L0,80.29h16.77l17.92-21.47c1.8-2.3,4.2-4.99,7.19-4.99s5.4,2.69,7.19,4.99l17.91,21.47h16.77l-33.68-40.15L83.75,0Z" />
            </g>
        </svg>


    </div>

</div>