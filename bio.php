<?php

$bioID = 727;
$bioDetails = catDetails($bioID);
$pageText = getPageTextID($bioID);

$hasBioImg = false;
$firstSubID = getFirstSubID($bioID);
if ($firstSubID > 0) {
    $bioImg = getFirstImage($firstSubID);
    $bioRatio = $bioImg['height'] / $bioImg['width'];
    $bioPad = $bioRatio * 100;
    $hasBioImg = true;
}
?>

<div class="two_column <?php if ($hasBioImg) { ?>has_bio_img<?php } ?> bio_module hidden">
    <div class="col_wrap">
        <div class="col">
            <div class="text-block">
                <div class="inner">

                    <?php if ($hasBioImg) { ?>
                        <div class="bio_cell">
                            <div class="bio_img_wrap" style="padding-top: <?= $bioPad ?>%;">
                                <img src="<?= $loaderImg ?>" data-img="<?= $bioImg['img'] ?>" width="<?= $bioImg['width'] ?>" height="<?= $bioImg['height'] ?>" alt="Joe Pugliese" class="photo loadmeview bio_img" />
                            </div>
                        </div>
                    <?php } ?>

                    <?= $pageText['content'] ?>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="text-block">
                <div class="inner">
                    <?= $pageText['content2'] ?>
                </div>
            </div>
        </div>
    </div>


</div>