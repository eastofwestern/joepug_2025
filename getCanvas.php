<?php

session_start();
include('includes/connect.php');
include('includes/functions.php');

$catID = $_GET['catid'];
if (!$catID) {
    exit;
}
$view = $_GET['view'] ? $_GET['view'] : "desktop";
$catDetails = catDetails($catID);
$theSort = "visual order";
if ($view === "mobile") {
    $theSort = "visual order mobile";
}
$images = getImages($catID, $theSort);

?>

<ul class="canvas">

    <?php for ($count = 1; $item = mysqli_fetch_array($images); ++$count) { ?>

        <?php

        $isTextEntry = false;
        if ($item['img'] === "no-image.jpg") {
            $isTextEntry = true;
        }

        $ext = pathinfo(getOption("physicalPath") . "images/pics/" . $item['img'], PATHINFO_EXTENSION);
        if (!$isTextEntry) {
            $itemRatio = $item['height'] / $item['width'];
            $itemPad = $itemRatio * 100;
        }

        $itemVideo = getImageVideo($item['id']);

        $cellClass = "";

        $hasAutoVideo = false;
        $hasGridVideo = false;
        if (isset($itemVideo['hoverFile']) && ($itemVideo['hoverFile'] != "" || $itemVideo['url_loop_desktop'] != "") && $itemVideo['video_behavior'] !== "none") {
            $hasGridVideo = true;
            if ($itemVideo['hoverFile'] != "") {
                $autoVideoStr = '<video playsinline loop muted><source src="/videos/' . $itemVideo['hoverFile'] . '"></video>';
            } else {
                $autoVideoStr = '<video playsinline loop muted class="sizeload" data-hd="' . $itemVideo['url_loop_desktop'] . '" data-sd="' . $itemVideo['url_loop_mobile'] . '"><source src=""></video>';
            }
            if ($itemVideo['video_behavior'] === "hover") {
                $cellClass .= " hovervideo";
            } else {
                $cellClass .= " autovideo";
                $hasAutoVideo = true;
            }
        }

        $hasTitle = false;
        $hasCaption = false;

        if ($item['title'] != "title:" and $item['title'] != "") {
            $hasTitle = true;
        }

        if ($item['caption'] != "caption:" and $item['caption'] != "") {
            $hasCaption = true;
        }

        $topPos = $item['catTop'];
        $leftPos = $item['catLeft'];
        $width = $item['catWidth'];
        $layer = $item['catLayer'];
        $vo_index = $item['vo_desktop'];

        if ($view === "mobile") {
            $topPos = $item['catTopMobile'] ? $item['catTopMobile'] : $item['catTop'];
            $leftPos = $item['catLeftMobile'] ? $item['catLeftMobile'] : $item['catLeft'];
            $width = $item['catWidthMobile'] ? $item['catWidthMobile'] : $item['catWidth'];
            $layer = $item['catLayerMobile'] ? $item['catLayerMobile'] : $item['catLayer'];
            $vo_index = $item['vo_mobile'] ? $item['vo_mobile'] : $item['vo_desktop'];
        }

        ?>

        <li class="cell item openLightbox <?= $cellClass ?>" data-catid="<?= $catID ?>" data-index="<?= $vo_index ?>" data-id="<?= $item['id'] ?>" data-index="<?= $count ?>" data-x="<?= $leftPos ?>" data-y="<?= $topPos ?>" data-aspect-ratio="<?= $item['aspectRatio'] ?>" style="top: <?= $topPos ?>%; left: <?= $leftPos ?>%; width: <?= $width ?>%; height: auto; aspect-ratio: <?= $item['aspectRatio'] ?>; z-index: <?= $layer ? $layer : 1 ?>;" <?php if ($hasGridVideo) { ?>data-autovideo='<?= $autoVideoStr ?>' <?php } ?>>

            <?php if ($isTextEntry) { ?>

                <div class="textEntry">
                    <?php if ($item['content'] != "") { ?>
                        <?= $item['content'] ?>
                    <?php } else { ?>
                        <?= $item['title'] ?>
                    <?php } ?>
                </div>

            <?php } else { ?>

                <div class="mediawrap fadeOn" style="padding-top: <?= $itemPad ?>%;">

                    <img src="<?= $loaderImg ?>" data-img="<?= $item['img'] ?>" class="photo <?php if (!$hasAutoVideo) { ?>loadmeview<?php } ?> <?= $ext ?>" />
                    <?php if ($hasGridVideo) { ?>
                        <div class="vidhold"></div>
                    <?php } ?>

                </div>

				<?php /*

                <?php if ($hasTitle) { ?>
                    <div class="info">
                        <div class="wrap">
                            <?= $item['title'] ?>
                        </div>
                    </div>
                <?php } ?>

				*/ ?>

            <?php } ?>

        </li>

    <?php } ?>

</ul>