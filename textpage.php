<?php

$catID = getCatID($slug);
$catDetails = catDetails($catID);
$pageText = getPageTextID($catID);

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
	<?php include('contact.php'); ?>
	<div id="smooth-wrapper">
		<div id="smooth-content">
			<main>
				<section id="content">
					<article class="inner textwrap">
						<div class="two_column">
							<div class="col_wrap">
								<div class="col">
									<div class="text-block">
										<div class="inner">
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