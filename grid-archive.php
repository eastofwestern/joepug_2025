<?php

$catID = getCatID($slug);
$catDetails = catDetails($catID);

// get parent page information
$parentID = $catDetails['parentID'];
$parentDetails = catDetails($parentID);
$parentText = getPageTextID($parentID);

// the page filters are subpages
$filters = subcatList(725);

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

<body class="preload archive" data-catid="<?= $catID ?>" style="background-color: <?= $catDetails['bgColor'] ?>;">

    <?php include('includes/header.php'); ?>
    <?php include('contact.php'); ?>
    <div id="smooth-wrapper">
        <div id="smooth-content">
            <main>

                <section id="content">

                    <article class="inner work">
                        <div class="filter">
                            <ul>

                                <?php for ($filtercount = 1; $filter = mysqli_fetch_array($filters); ++$filtercount) { ?>

                                    <li class="<?php if ($catID == $filter['id']) { ?>pageOn<?php } ?>">


                                        <a href="/<?= strtolower($filter['slug']) ?>"><?= $filter['subName'] ?></a>



                                    </li>

                                <?php } ?>
                            </ul>

                        </div>



                        <div class="grid flex archive">

                            <div class="row">

                                <?php for ($count = 0; $item = mysqli_fetch_array($images); ++$count) { ?>

                                    <?php

                                    $ext = pathinfo(getOption("physicalPath") . "images/pics/" . $item['img'], PATHINFO_EXTENSION);
                                    $itemRatio = $item['height'] / $item['width'];
                                    $itemPad = $itemRatio * 100;

                                    $itemVideo = getImageVideo($item['id']);

                                    $cellClass = "";

                                    $hasAutoVideo = false;
                                    if ($itemVideo['hoverFile'] != "") {
                                        $hasAutoVideo = true;
                                        $cellClass .= " hovervideo";
                                    }

                                    $hasTitle = false;
                                    $hasCaption = false;

                                    if ($item['title'] != "title:" and $item['title'] != "") {
                                        $hasTitle = true;
                                    }

                                    // if ($item['caption'] != "caption:" and $item['caption'] != "") {
                                    //     $hasCaption = true;
                                    // }


                                    // $theLink = "/campaign/" . $item['slug'];
                                    $theLink = "#" . $item['slug'];
                                    $theTarget = "_parent";
                                    if ($item['picURL'] != "" and $item['picURL'] != "url:") {
                                        $theLink = $item['picURL'];
                                        if (strpos($theLink, 'http') !== false) {
                                            $theTarget = "_blank";
                                        }
                                    }

                                    ?>
                                    <!-- Need to add openOverlay back in -->
                                    <figure class="cell grid_cell fadeUp <?= $cellClass ?>" data-index="<?= $count ?>" <?php if ($hasAutoVideo) { ?>data-autovideo='<video muted playsinline loop><source src="/videos/<?= $itemVideo['hoverFile'] ?>" /></video>' <?php } ?>>
                                        <a href="<?= $theLink ?>" target="<?= $theTarget ?>" class="openItem" data-id="<?= $item['id'] ?>" data-catid="<?= $catID ?>">

                                            <div class="media_wrap">
                                                <img class="photo <?php if (!$hasAutoVideo) { ?>loadmeview<?php } ?> <?= $ext ?>" src="<?= $loaderImg ?>" data-img="<?= $item['img'] ?>" alt="<?= $item['title'] ?>" data-width="<?= $item['width'] ?>" data-height="<?= $item['height'] ?>">

                                                <?php if ($hasAutoVideo) { ?>
                                                    <div class="vidhold"></div>
                                                <?php } ?>
                                            </div>



                                            <!-- <figcaption>
                                                <div class="circle"></div>
                                                <h4><?php if ($hasTitle) { ?><?= $item['title'] ?><?php } ?></h4>
                                            </figcaption> -->
                                        </a>

                                    </figure>

                                <?php } ?>

                            </div>


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

</html>