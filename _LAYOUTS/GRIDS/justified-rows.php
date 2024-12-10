<div class="justified">

    <?php for ($count = 1; $item = mysqli_fetch_array($images); ++$count) { ?>
                    
        <?php

            $ext = pathinfo(getOption("physicalPath") . "images/pics/" . $item['img'], PATHINFO_EXTENSION);
            $loadImg = preg_replace('/\\.[^.\\s]{3,4}$/', '', $item['img']);
            $loadImg = getOption("imagePathFront") . "siteGray/" . $loadImg . ".png";

            $itemVideo = getImageVideo($item['id']);

            $theLink = "/slideshow/" . $slug . "#" . $count;

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

        <a href="<?=$theLink?>" class="cell <?=$addClass?>">

            <img class="loadme loadmeview" src="<?=$loadImg?>" data-src="<?=$item['img']?>" alt="" />

            <?php if ($hasTitle) { ?>
                <span class="title"><?=$item['title']?></span>
            <?php } ?>

            <?php if ($hasCaption) { ?>
                <span class="sub-title"><?=$item['caption']?></span>
            <?php } ?>

        </a>
        
    <?php } ?>

</div>