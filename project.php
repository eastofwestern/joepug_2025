<?php

	if(stristr($projectSlug, '/') === FALSE) {
		
		$slug = $projectSlug;
		$itemID = getPicIDCustom($slug);
		
	} else {
	
		$slugArray = explode("/", $projectSlug);
		$itemID = $slugArray[0];
		$slug = $slugArray[1];
		
	}
	
	$parent = getMainImage($itemID);
	$pageSubs = getModules($itemID);
	$isMods = true;

	$metaTitle = getOption("company") . " | " . ucwords(str_replace("-", " ", $slug));
	
?>

<!DOCTYPE html>

<html lang="en">

<head>
	
	<?php if ($parent['metaTitle'] != "") { ?>
		<title><?=$parent['metaTitle']?></title>
		<meta property="og:title" name="og:title" content="<?=$parent['metaTitle']?>" />
	<?php } else { ?>
		<title><?=$metaTitle?></title>
		<meta property="og:title" name="og:title" content="<?=$metaTitle?>" />
	<?php } ?>
	<meta name="description" content="<?=$parent['metaDesc']?>" />
	<meta name="keywords" content="<?=$parent['metaKeywords']?>" />
	
	<meta property="og:description" name="og:description" content="<?=$parent['metaDesc']?>" />
	<meta property="og:image" name="og:image" content="<?=getOption("url")?><?=getOption("imagePathFront")?><?=$parent['img']?>" />
	<meta property="og:image:width" content="<?=$parent['width']?>" />
	<meta property="og:image:height" content="<?=$parent['height']?>" />
	<meta property="og:url" name="og:url" content="<?=getOption("url")?>project/<?=$projectSlug?>" />
	<meta property="og:site_name" name="og:site_name" content="<?=getOption("company")?>" />

	<?php include('includes/topScripts.php'); ?>

</head>

<body class="projectpage">

	<?php include('includes/header.php'); ?>

	<main>

		<section id="content">

			<article class="inner modules">

				<?php include('layouts.php'); ?>

			</article>

		</section>
		
	</main>

	<?php include('includes/footer.php'); ?>

	<?php include('includes/overlays.php'); ?>

	<?php include('includes/scripts.php'); ?>

</body>

</html>