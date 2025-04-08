<?php

$catID = getCatID($slug);
$catDetails = catDetails($catID);
$images = getImages($catID, $catDetails['sorter']);
$firstImage = getFirstImage($catID, $catDetails['sorter']);

$metaTitle = getOption("company") . " | " . ucwords(str_replace("-", " ", $slug));

?>

<!DOCTYPE html>

<html lang="en">

<head>

    <?php if ($catDetails['metaTitle'] != "") { ?>
        <title><?= $catDetails['metaTitle'] ?></title>
        <meta property="og:title" name="og:title" content="<?= $catDetails['metaTitle'] ?>" />
    <?php } else { ?>
        <title><?= $metaTitle ?></title>
        <meta property="og:title" name="og:title" content="<?= $metaTitle ?>" />
    <?php } ?>
    <meta name="description" content="<?= $catDetails['metaDesc'] ?>" />
    <meta name="keywords" content="<?= $catDetails['metaKeywords'] ?>" />

    <meta property="og:description" name="og:description" content="<?= $catDetails['metaDesc'] ?>" />
    <meta property="og:image" name="og:image" content="<?= getOption("url") ?><?= getOption("imagePathFront") ?><?= $firstImage['img'] ?>" />
    <meta property="og:image:width" content="<?= $firstImage['width'] ?>" />
    <meta property="og:image:height" content="<?= $firstImage['height'] ?>" />
    <meta property="og:url" name="og:url" content="<?= getOption("url") ?><?= $slug ?>" />
    <meta property="og:site_name" name="og:site_name" content="<?= getOption("company") ?>" />

    <?php include('includes/topScripts.php'); ?>

</head>

<body>

    <?php include('includes/header.php'); ?>
    <?php include('contact.php'); ?>
    <div id="smooth-wrapper">
        <div id="smooth-content">

            <main>

                <section id="content">

                    <article class="inner gridpage">

                        <div class="grid_loose">
                            <ul class="canvas">

                                <?php for ($count = 1; $item = mysqli_fetch_array($images); ++$count) { ?>

                                    <?php

                                    $ext = pathinfo(getOption("physicalPath") . "images/pics/" . $item['img'], PATHINFO_EXTENSION);
                                    $itemRatio = $item['height'] / $item['width'];
                                    $itemPad = $itemRatio * 100;

                                    $itemVideo = getImageVideo($item['id']);

                                    $cellClass = "";

                                    $hasAutoVideo = false;
                                    if ($itemVideo && $itemVideo['hoverFile'] != "") {
                                        $hasAutoVideo = true;
                                        $cellClass .= " autovideo";
                                    }

                                    $hasTitle = false;
                                    $hasCaption = false;

                                    if ($item['title'] != "title:" and $item['title'] != "") {
                                        $hasTitle = true;
                                    }

                                    if ($item['caption'] != "caption:" and $item['caption'] != "") {
                                        $hasCaption = true;
                                    }

                                    ?>

                                    <li class="cell item openLightbox" data-catid="<?= $catID ?>" data-index="<?= $item['vo_desktop'] ?>" data-id="<?= $item['id'] ?>" data-x="<?= $item['catLeft'] ?>" data-y="<?= $item['catTop'] ?>" data-aspect-ratio="<?= $item['aspectRatio'] ?>" style="top: <?= $item['catTop'] ?>%; left: <?= $item['catLeft'] ?>%; width: <?= $item['catWidth'] ?>%; height: auto; aspect-ratio: <?= $item['aspectRatio'] ?>; z-index: <?= $item['catLayer'] ? $item['catLayer'] : 1 ?>;">

                                        <div class="mediawrap fadeOn" style="padding-top: <?= $itemPad ?>%;">
                                            <img src="<?= $loaderImg ?>" data-img="<?= $item['img'] ?>" class="photo loadmeview" />
                                            <?php if ($hasAutoVideo) { ?>
                                                <div class="vidhold"></div>
                                            <?php } ?>
                                        </div>


                                    </li>

                                <?php } ?>

                            </ul>
                        </div>

                    </article>

                </section>

            </main>

            <?php include('includes/footer.php'); ?>

        </div>
    </div>


    <?php include('includes/overlays.php'); ?>
    <?php include('includes/scripts.php'); ?>

</body>

</html>