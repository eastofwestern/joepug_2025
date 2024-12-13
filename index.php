<?php

session_start();
include('includes/connect.php');
include('includes/functions.php');

$catID = 717;
$catDetails = catDetails($catID);
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

<body class="preload homepage">

	<?php include('includes/header.php'); ?>
	<?php include('contact.php'); ?>
	<div id="smooth-wrapper">
		<div id="smooth-content">
			<main>

				<section id="content">

					<article class="inner home">

						<div class="grid loose">


							<?php for ($count = 1; $item = mysqli_fetch_array($images); ++$count) { ?>

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

								if ($item['caption'] != "caption:" and $item['caption'] != "") {
									$hasCaption = true;
								}

								$styleStr = "z-index: " . $count . ";";
								if ($item['catTopMargin'] != "") {
									$styleStr .= "margin-top: " . $item['catTopMargin'] . "%;";
								}
								if ($item['catLeftMargin'] != "") {
									$styleStr .= "margin-left: " . $item['catLeftMargin'] . "%;";
								}
								if ($item['catColStart'] != "") {
									$styleStr .= "grid-column: " . $item['catColStart'] . " / " . $item['catColEnd'] . ";";
								}

								?>

								<figure class="cell <?= $cellClass ?>" <?php if ($hasAutoVideo) { ?>data-autovideo='<video muted playsinline loop><source src="/videos/<?= $itemVideo['hoverFile'] ?>" /></video>' <?php } ?> style="<?= $styleStr ?>">
									<div class="mediawrap" style="padding-top: <?= $itemPad ?>%;">
										<img src="<?= $loaderImg ?>" data-img="<?= $item['img'] ?>" class="photo loadmeview" alt="<?= $company ?>" />
										<?php if ($hasAutoVideo) { ?>
											<div class="vidhold"></div>
										<?php } ?>
									</div>
									<?php if ($hasTitle or $hasCaption) { ?>
										<figcaption class="info">
											<?php if ($hasTitle) { ?>
												<h2><?= $item['title'] ?></h2>
											<?php } ?>
											<?php if ($hasCaption) { ?>
												<h3><?= $item['caption'] ?></h3>
											<?php } ?>
										</figcaption>
									<?php } ?>
								</figure>

							<?php } ?>

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