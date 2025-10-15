<?php

$catID = getCatID($slug);
$catDetails = catDetails($catID);
$pageText = getPageTextID($catID);

$hasBioImg = false;
$firstSubID = getFirstSubID($catID);
if ($firstSubID > 0) {
	$bioImg = getFirstImage($firstSubID);
	$bioRatio = $bioImg['height'] / $bioImg['width'];
	$bioPad = $bioRatio * 100;
	$hasBioImg = true;
}

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
	<meta property="og:url" name="og:url" content="<?= getOption("url") ?><?= $slug ?>" />
	<meta property="og:site_name" name="og:site_name" content="<?= getOption("company") ?>" />

	<?php include('includes/topScripts.php'); ?>

</head>

<body class="textpage" style="background-color: <?= $catDetails['bgColor'] ?>;">
	<?php include('includes/header.php'); ?>

	<div id="smooth-wrapper">
		<div id="smooth-content">
			<main>
				<section id="content">
					<article class="inner textwrap">
						<div class="two_column <?php if ($hasBioImg) { ?>has_bio_img<?php } ?>">
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