<div class="masongrid">

    <div class="grid-sizer"></div>
    <div class="gutter-sizer"></div>
    
    <?php for ($count = 1; $item = mysqli_fetch_array($images); ++$count) { ?>

        <?php
        
            $ext = pathinfo(getOption("physicalPath") . "images/pics/" . $item['img'], PATHINFO_EXTENSION);
            $itemRatio = $item['height'] / $item['width'];
            $itemPad = $itemRatio * 100;

            $itemVideo = getImageVideo($item['id']);

            $theLink = "/slideshow/" . $slug . "#" . $count;

            $hasTitle = false;
            $hasCaption = false;
            $hasVideo = false;
            $isUpload = false;
            $addClass = "";

            if ($item['title'] != "title:" AND $item['title'] != "") {
                $hasTitle = true;
            }
            if ($item['caption'] != "caption:" AND $item['caption'] != "") {
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

        <figure class="cell <?=$addClass?> <?=$item['catSize']?>">

            <a href="<?=$theLink?>">

                <div class="mediawrap" style="padding-top: <?=$itemPad?>%;">
                    <img class="photo loadme loadmeview <?=$ext?>" src="<?=$loaderImg?>" data-img="<?=$item['img']?>" alt="<?=$item['title']?>" />
                </div>                
                
                <div class="info">
                    <?php if ($hasTitle) { ?>
                        <h2><?=$item['title']?></h2>
                    <?php } ?>

                    <?php if ($hasCaption) { ?>
                        <p><?=$item['caption']?></p>
                    <?php } ?>
                </div>

            </a>

        </figure>

    <?php } ?>

</div>