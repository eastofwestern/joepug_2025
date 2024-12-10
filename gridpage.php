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
		<title><?=$catDetails['metaTitle']?></title>
		<meta property="og:title" name="og:title" content="<?=$catDetails['metaTitle']?>" />
	<?php } else { ?>
		<title><?=$metaTitle?></title>
		<meta property="og:title" name="og:title" content="<?=$metaTitle?>" />
	<?php } ?>
	<meta name="description" content="<?=$catDetails['metaDesc']?>" />
	<meta name="keywords" content="<?=$catDetails['metaKeywords']?>" />
	
	<meta property="og:description" name="og:description" content="<?=$catDetails['metaDesc']?>" />
	<meta property="og:image" name="og:image" content="<?=getOption("url")?><?=getOption("imagePathFront")?><?=$firstImage['img']?>" />
	<meta property="og:image:width" content="<?=$firstImage['width']?>" />
	<meta property="og:image:height" content="<?=$firstImage['height']?>" />
	<meta property="og:url" name="og:url" content="<?=getOption("url")?><?=$slug?>" />
	<meta property="og:site_name" name="og:site_name" content="<?=getOption("company")?>" />

	<?php include('includes/topScripts.php'); ?>

</head>

<body>

	<?php include('includes/header.php'); ?>

	<main>

		<section id="content">

			<article class="inner gridpage">

				<?php 
				
					/*

					CHOOSE A LAYOUT FROM THE _LAYOUTS FOLDER AND COPY/PASTE THE CODE HERE

					*/

				?>

			</article>

		</section>
		
	</main>

	<?php include('includes/footer.php'); ?>
	<?php include('includes/overlays.php'); ?>
	<?php include('includes/scripts.php'); ?>

</body>
</html>