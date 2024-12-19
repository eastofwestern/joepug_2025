<?php

// ini_set('display_errors', 1);
// ini_set('display_startup_errors', 1);
// error_reporting(E_ALL);

$catID = getCatID($slug);
$catDetails = catDetails($catID);

// get parent page information
$parentID = $catDetails['parentID'];
$parentDetails = catDetails($parentID);
$parentText = getPageTextID($parentID);

// the series projects are subcats
$projects = subcatList(726);

$images = getImages($catID, $catDetails['sorter']);
$firstImage = getFirstImage($catID, $catDetails['sorter']);


$slug = $catDetails['slug'];

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
    <?php if ($catDetails['metaImage'] != "") { ?>
        <meta property="og:image" name="og:image" content="<?= getOption("url") ?><?= getOption("imagePathFront") ?><?= $catDetails['metaImage'] ?>" />
        <meta property="og:image:width" content="<?= $catDetails['metaImageWidth'] ?>" />
        <meta property="og:image:height" content="<?= $catDetails['metaImageHeight'] ?>" />
    <?php } else { ?>
        <meta property="og:image" name="og:image" content="<?= getOption("url") ?><?= getOption("imagePathFront") ?><?= $firstImage['img'] ?>" />
        <meta property="og:image:width" content="<?= $firstImage['width'] ?>" />
        <meta property="og:image:height" content="<?= $firstImage['height'] ?>" />
    <?php } ?>
    <meta property="og:url" name="og:url" content="<?= getOption("url") ?>" />
    <meta property="og:site_name" name="og:site_name" content="<?= getOption("company") ?>" />

    <?php include('includes/topScripts.php'); ?>

</head>

<body class="preload workpage">

    <?php include('includes/header.php'); ?>
    <?php include('contact.php'); ?>
    <div id="smooth-wrapper">
        <div id="smooth-content">
            <main>
                <section id="content">

                    <article class="inner work">


                        <?php for ($projectCount = 1; $project = mysqli_fetch_array($projects); ++$projectCount) { ?>
                            <?php
                            $projectID = getCatID($project['slug']);
                            $images = getImages($projectID, $catDetails['sorter']);

                            ?>
                            <div class="grid flex">
                                <p><?= $project["subName"] ?> </p>
                                <div class="row"> <?php for ($count = 1; $item = mysqli_fetch_array($images); ++$count) { ?>

                                        <?php

                                                        $ext = pathinfo(getOption("physicalPath") . "images/pics/" . $item['img'], PATHINFO_EXTENSION);
                                                        $itemRatio = $item['height'] / $item['width'];
                                                        $itemPad = $itemRatio * 100;

                                                        $itemVideo = getImageVideo($item['id']);

                                                        $cellClass = "";

                                                        $hasAutoVideo = false;
                                                        if ($itemVideo['hoverFile'] != "") {
                                                            $hasAutoVideo = true;
                                                            $cellClass .= " autovideo";
                                                        }

                                                        $hasTitle = false;
                                                        $hasCaption = false;

                                                        if ($item['title'] != "title:" and $item['title'] != "") {
                                                            $hasTitle = true;
                                                        }

                                                        // if ($item['caption'] != "caption:" and $item['caption'] != "") {
                                                        //     $hasCaption = true;
                                                        // }

                                                        // TO DO: need to figure ouut how to get categories here

                                                        $theLink = "#" . $item['slug'];
                                                        $theTarget = "_parent";
                                                        if ($item['picURL'] != "" and $item['picURL'] != "url:") {
                                                            $theLink = $item['picURL'];
                                                            if (strpos($theLink, 'http') !== false) {
                                                                $theTarget = "_blank";
                                                            }
                                                        }

                                        ?>

                                        <figure class="cell fadeOn <?= $cellClass ?>" <?php if ($hasAutoVideo) { ?>data-autovideo='<video muted playsinline loop><source src="/videos/<?= $itemVideo['hoverFile'] ?>" /></video>' <?php } ?>>
                                            <a href="<?= $theLink ?>" target="<?= $theTarget ?>" class="openVideo openOverlay" data-id="<?= $item['id'] ?>">


                                                <div class="media_wrap">
                                                    <img class="photo <?php if (!$hasAutoVideo) { ?>loadmeview<?php } ?> <?= $ext ?>" src="<?= $loaderImg ?>" data-img="<?= $item['img'] ?>" alt="<?= $item['title'] ?>" data-width="<?= $item['width'] ?>" data-height="<?= $item['height'] ?>">

                                                    <?php if ($hasAutoVideo) { ?>
                                                        <div class="vidhold"></div>
                                                    <?php } ?>
                                                </div>



                                            </a>
                                            <div class="number">
                                                <p>- <?= $count ?> -</p>
                                            </div>
                                        </figure>



                                    <?php } ?>
                                </div>
                            </div>



                        <?php } ?>























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

</html>