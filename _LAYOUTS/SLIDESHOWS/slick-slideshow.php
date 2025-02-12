<div class="slickslideshow center">

    <?php /* prev */ ?>
    <svg class="ui prev" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 14 9.99"><title>previous image arrow.</title><path d="M14,4H3.72L7.61,0H4.86L0,5l4.86,5H7.61L3.72,6H14Z"/></svg>

    <?php /* next */ ?>
    <svg class="ui next" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 14 9.99"><title>Next image arrow.</title><path d="M0,6H10.28L6.39,10H9.14L14,5,9.14,0H6.39l3.89,4H0Z"/></svg>

    <?php /* close */ ?>
    <svg class="ui close" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><title>"Close slideshow" button.</title><line x1="2.2" y1="17.8" x2="17.8" y2="2.2"/><line x1="2.2" y1="2.2" x2="17.8" y2="17.8"/></svg>

    <?php /* SLIDES: */ ?>

    <?php for ($count = 1; $item = mysqli_fetch_array($images); ++$count) { ?>

        <?php

            $ext = pathinfo(getOption("physicalPath") . "images/pics/" . $item['img'], PATHINFO_EXTENSION);
            $loadImg = preg_replace('/\\.[^.\\s]{3,4}$/', '', $item['img']);
            $loadImg = getOption("imagePathFront") . "siteGray/" . $loadImg . ".png";

            $itemVideo = getImageVideo($item['id']);

            $hasTitle = true;
            $hasCaption = true;
            $hasVideo = false;
            $isUpload = false;
            $addClass = "";

            if ($item['title'] === "title:") {
                $hasTitle = false;
            }
            if ($item['caption'] === "caption:") {
                $hasCaption = false;
            }
            if ($itemVideo['file'] != "" OR $itemVideo['embed'] != "") {
                $hasVideo = true;
                $addClass = "video";
            }
            if ($itemVideo['file'] != "") {
                $isUpload = true;
            }
            
        ?>
        
        <figure class="cell addb4 <?=$addClass?>"
            data-id="<?=$count?>"
            <?php if ($hasVideo) { ?>
                <?php if ($isUpload) { ?>
                    data-type="file" data-video='<video id="video<?=$count?>" width="<?=$itemVideo['width']?>" height="<?=$itemVideo['height']?>" controls><source src="/videos/<?=$itemVideo['file']?>" type="video/mp4"></video>'
                <?php } else { ?>
                    data-type="embed" data-video='<?=$itemVideo['embed']?>'
                <?php } ?>
            <?php } ?>
        >
            
            <?php if ($hasVideo) { ?>
            
                <div class="inner"></div>
            
            <?php } else { ?>
            
                <img class="photo ib v-middle loadme <?=$ext?>" src="<?=$loadImg?>" data-src="<?=$item['img']?>" alt="<?=$item['title']?>" />
                
            <?php } ?>

            <figcaption class="addb4">
                
                <?php if ($hasTitle) { ?>
                    <div><?=$item['title']?></div>
                <?php } ?>

            </figcaption>
            
        </figure>

    <?php } ?>

</div>