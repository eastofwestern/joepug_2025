<?php

session_start();
include('includes/connect.php');
include('includes/functions.php');


// category information
$picID = $_GET['picid'];
$image = getMainImage($picID);

?>


<div class="wrap">

    <div class="slideshow">

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
            <img src="<?= $loaderImg ?>" data-img="<?= $image['img'] ?>" class="photo loadmeview <?= $ext ?>" width="<?= $image['width'] ?>" height="<?= $image['height'] ?>" <?php if ($hasTitle) { ?>alt="<?= $image['title'] ?> ?>" <?php } ?> />
        </figure>



    </div>

</div>