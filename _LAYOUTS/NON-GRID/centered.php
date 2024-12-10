<div class="centered">
    
    <?php for ($count = 1; $item = mysqli_fetch_array($images); ++$count) { ?>

        <?php

            $ext = pathinfo(getOption("physicalPath") . "images/pics/" . $item['img'], PATHINFO_EXTENSION);
            $loadImg = preg_replace('/\\.[^.\\s]{3,4}$/', '', $item['img']);
            $loadImg = getOption("imagePathFront") . "siteGray/" . $loadImg . ".png";

            $itemVideo = getImageVideo($item['id']);
            $itemRatio = $item['height'] / $item['width'];

            $theLink = "/slideshow/" . $itemID . "/" . $slug . "#" . $count;

            $hasTitle = false;
            $hasCaption = false;
            $hasVideo = false;
            $isUpload = false;
            $addClass = "";

            if ($item['title'] != "title:") {
                $hasTitle = true;
            }
            if ($item['caption'] != "caption:") {
                $hasCaption = true;
            }
            if ($itemVideo['file'] != "" OR $itemVideo['embed'] != "") {
                $hasVideo = true;
                $addClass = "video";
            }
            if ($itemVideo['file'] != "") {
                $isUpload = true;
            }

        ?>

        <figure class="cell">
            <img class="photo loadme loadmeview" src="<?=$loadImg?>" data-src="<?=$item['img']?>" alt="" />
            
            <div class="info">
                <?php if ($hasTitle) { ?>
                    <h2><?=$item['title']?></h2>
                <?php } ?>

                <?php if ($hasCaption) { ?>
                    <p><?=$item['caption']?></p>
                <?php } ?>
            </div>
        </figure>

    <?php } ?>

</div>