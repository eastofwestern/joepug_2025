<?php for ($pagecount = 1; $page = mysqli_fetch_array($pageSubs); ++$pagecount) { ?>

	<?php 
		
		if ($page['status'] != "live") {
			continue;
		}

	?>


	<?php if ($page['pageType'] === "text") { ?>
		
		<?php
		
			if ($isMods) {
				$theText = $page['content'];
			} else {
				$pageText = getPageTextID($page['id']);
				$theText = $pageText['content'];
			}
		
		?>

		<div class="text-block">
			<div class="inner">
				<?=$theText?>
			</div>
		</div>

	<?php } ?>
	
	<?php

		/*

			NOTE - more specific page types will be used in admin.  i.e. grid - 3 column, grid - 4 column, etc.
			Need to change the page type check below to match client site.

		*/

	?>

	<?php if ($page['pageType'] === "centered") { ?>

		<?php

			if ($isMods) {
				$images = getModuleImages($page['id'], $page['sorter']);
			} else {
				$images = getImages($page['id'], $page['sorter']);
			}

		?>

		<div class="centered">
			
			<?php for ($count = 1; $item = mysqli_fetch_array($images); ++$count) { ?>

				<?php

					$ext = pathinfo(getOption("physicalPath") . "images/pics/" . $item['img'], PATHINFO_EXTENSION);
					$loadImg = preg_replace('/\\.[^.\\s]{3,4}$/', '', $item['img']);
					$loadImg = getOption("imagePathFront") . "siteGray/" . $loadImg . ".png";

					$itemVideo = getImageVideo($item['id']);
					$itemRatio = $item['height'] / $item['width'];

					$theLink = "/slideshow/" . $itemID . "/" . $slug . "#" . $count;

					$hasTitle = false;
					$hasCaption = false;
					$hasVideo = false;
					$isUpload = false;
					$addClass = "";

					if ($item['title'] != "title:") {
						$hasTitle = true;
					}
					if ($item['caption'] != "caption:") {
						$hasCaption = true;
					}
					if ($itemVideo['file'] != "" OR $itemVideo['embed'] != "") {
						$hasVideo = true;
						$addClass = "video";
					}
					if ($itemVideo['file'] != "") {
						$isUpload = true;
					}

				?>

				<figure class="cell">
					<img class="photo loadme loadmeview" src="<?=$loadImg?>" data-src="<?=$item['img']?>" alt="" />
					
					<div class="info">
						<?php if ($hasTitle) { ?>
							<h2><?=$item['title']?></h2>
						<?php } ?>

						<?php if ($hasCaption) { ?>
							<p><?=$item['caption']?></p>
						<?php } ?>
					</div>
				</figure>

			<?php } ?>

		</div>

	<?php } ?>

	<?php if ($page['pageType'] === "cropped grid") { ?>

		<?php

			if ($isMods) {
				$images = getModuleImages($page['id'], $page['sorter']);
			} else {
				$images = getImages($page['id'], $page['sorter']);
			}

		?>

		<div class="croppedgrid">

			<?php for ($count = 1; $item = mysqli_fetch_array($images); ++$count) { ?>

				<?php
				
					$ext = pathinfo(getOption("physicalPath") . "images/pics/" . $item['img'], PATHINFO_EXTENSION);
					$loadImg = preg_replace('/\\.[^.\\s]{3,4}$/', '', $item['img']);
					$loadImg = getOption("imagePathFront") . "siteGray/" . $loadImg . ".png";

					$itemVideo = getImageVideo($item['id']);
					$itemRatio = $item['height'] / $item['width'];

					$theLink = "/slideshow/" . $itemID . "/" . $slug . "#" . $count;

					$hasTitle = false;
					$hasCaption = false;
					$hasVideo = false;
					$isUpload = false;
					$addClass = "";

					if ($item['title'] != "title:") {
						$hasTitle = true;
					}
					if ($item['caption'] != "caption:") {
						$hasCaption = true;
					}
					if ($itemVideo['file'] != "" OR $itemVideo['embed'] != "") {
						$hasVideo = true;
						$addClass = "video";
					}
					if ($itemVideo['file'] != "") {
						$isUpload = true;
					}
				
				?>

				<figure class="cell resize-image ratioSize" data-ratio=".6625">

					<a href="<?=$theLink?>">

						<img class="photo loadme loadmeview" src="<?=$loadImg?>" data-src="<?=$item['img']?>" data-aspect-ratio="<?=$itemRatio?>" alt="" />
						
						<div class="info">
							<?php if ($hasTitle) { ?>
								<h2><?=$item['title']?></h2>
							<?php } ?>

							<?php if ($hasCaption) { ?>
								<p><?=$item['caption']?></p>
							<?php } ?>
						</div>

					</a>

				</figure>

			<?php } ?>

		</div>

	<?php } ?>

	<?php if ($page['pageType'] === "grid") { ?>

		<?php
		
			if ($isMods) {
				$images = getModuleImages($page['id'], $page['sorter']);
			} else {
				$images = getImages($page['id'], $page['sorter']);
			}
		
		?>

		<div class="masongrid animategrid effect-1" id="grid" data-id="<?=$page['id']?>">

			<div class="grid-sizer"></div>
			<div class="gutter-sizer"></div>

			<?php for ($count = 1; $item = mysqli_fetch_array($images); ++$count) { ?>

				<?php
				
					$ext = pathinfo(getOption("physicalPath") . "images/pics/" . $item['img'], PATHINFO_EXTENSION);
					$loadImg = preg_replace('/\\.[^.\\s]{3,4}$/', '', $item['img']);
					$loadImg = getOption("imagePathFront") . "siteGray/" . $loadImg . ".png";

					$itemVideo = getImageVideo($item['id']);
					$modId = getFirstModule($item['id']);

					/* if mod is found, link to project, otherwise link to slideshow */
					if ($modId) {
						$theLink = "/project/" . $item['id'] . "/" . $item['slug'];
					} else {
						$theLink = "/slideshow/" . $slug . "#" . $count;
					}

					$hasTitle = false;
					$hasCaption = false;
					$hasVideo = false;
					$isUpload = false;
					$addClass = "";

					if ($item['title'] != "title:") {
						$hasTitle = true;
					}
					if ($item['caption'] != "caption:") {
						$hasCaption = true;
					}
					if ($itemVideo['file'] != "" OR $itemVideo['embed'] != "") {
						$hasVideo = true;
						$addClass = "video";
					}
					if ($itemVideo['file'] != "") {
						$isUpload = true;
					}
				
				?>

				<figure class="cell <?=$addClass?> <?php if (!$isMods) { ?><?=$item['catSize']?><?php } ?>">

					<a href="<?=$theLink?>">

						<img class="photo loadme loadmeview" src="<?=$loadImg?>" data-img="<?=$item['img']?>" alt="" />
						
						<div class="info">
							<?php if ($hasTitle) { ?>
								<h2><?=$item['title']?></h2>
							<?php } ?>

							<?php if ($hasCaption) { ?>
								<p><?=$item['caption']?></p>
							<?php } ?>
						</div>

					</a>

				</figure>

			<?php } ?>

		</div>

	<?php } ?>

	<?php

		/*

			NOTE - more specific page types will be used in admin.  i.e. grid - 3 column, grid - 4 column, etc.
			Need to change the page type check below to match client site.

		*/

	?>

	<?php if ($page['pageType'] === "ar-rows") { ?>

		<?php

			if ($isMods) {
				$images = getModuleImages($page['id'], $page['sorter']);
			} else {
				$images = getImages($page['id'], $page['sorter']);
			}

		?>

		<div class="ar-rows" data-margin="0">

			<figure class="row">
			
				<?php for ($count=1; $item = mysqli_fetch_array($images); ++$count) { ?>
				
					<?php
						
						$ext = pathinfo(getOption("physicalPath") . "images/pics/" . $item['img'], PATHINFO_EXTENSION);
						$loadImg = preg_replace('/\\.[^.\\s]{3,4}$/', '', $item['img']);
						$loadImg = getOption("imagePathFront") . "siteGray/" . $loadImg . ".png";
						
						if ($isStory) {
							$theLink = "/slideshow/" . $itemID . "/" . $slug . "#" . $count;
						} else {
							$theLink = "/slideshow/" . $slug . "#" . $count;
						}

						$itemVideo = getImageVideo($item['id']);
					
					?>

					<a href="<?=$theLink?>" class="cell" id="<?=$count?>">

						<img class="photo loadme loadmeview <?=$ext?>" src="<?=$loadImg?>" data-src="<?=$item['img']?>" data-width="<?=$item['width']?>" data-height="<?=$item['height']?>">					
					
					</a>
					
					<?php
					
						if ($item['rowBreak'] === "yes") {
						
							echo '</figure>';
							echo '<figure class="row">';
							
						}
					
					?>
					
				<?php } ?>
				
			</figure>
			
		</div>

	<?php } ?>

	<?php

		/*

			NOTE - more specific page types will be used in admin.  i.e. grid - 3 column, grid - 4 column, etc.
			Need to change the page type check below to match client site.

		*/

	?>

	<?php if ($page['pageType'] === "justified-rows") { ?>

		<?php

			if ($isMods) {
				$images = getModuleImages($page['id'], $page['sorter']);
			} else {
				$images = getImages($page['id'], $page['sorter']);
			}

		?>

		<div class="justified">

			<?php for ($count = 1; $item = mysqli_fetch_array($images); ++$count) { ?>
							
				<?php

					$ext = pathinfo(getOption("physicalPath") . "images/pics/" . $item['img'], PATHINFO_EXTENSION);
					$loadImg = preg_replace('/\\.[^.\\s]{3,4}$/', '', $item['img']);
					$loadImg = getOption("imagePathFront") . "siteGray/" . $loadImg . ".png";

					$itemVideo = getImageVideo($item['id']);

					$theLink = "/slideshow/" . $slug . "#" . $count;

					$hasTitle = false;
					$hasCaption = false;
					$hasVideo = false;
					$isUpload = false;
					$addClass = "";

					if ($item['title'] != "title:") {
						$hasTitle = true;
					}
					if ($item['caption'] != "caption:") {
						$hasCaption = true;
					}
					if ($itemVideo['file'] != "" OR $itemVideo['embed'] != "") {
						$hasVideo = true;
						$addClass = "video";
					}
					if ($itemVideo['file'] != "") {
						$isUpload = true;
					}
				
				?>

				<a href="<?=$theLink?>" class="cell <?=$addClass?>">

					<img class="loadme loadmeview" src="<?=$loadImg?>" data-src="<?=$item['img']?>" alt="" />

					<?php if ($hasTitle) { ?>
						<span class="title"><?=$item['title']?></span>
					<?php } ?>

					<?php if ($hasCaption) { ?>
						<span class="sub-title"><?=$item['caption']?></span>
					<?php } ?>

				</a>
				
			<?php } ?>

		</div>

	<?php } ?>
	
	<?php if ($page['pageType'] === "slideshow") { ?>
	
		<?php
		
			if ($isMods) {
				$images = getModuleImages($page['id'], $page['sorter']);
			} else {
				$images = getImages($page['id'], $page['sorter']);
			}
		
		?>
		
		<div class="slideshow slickslideshow autoplay fullbleed fade">
		
			<?php for ($count = 1; $item = mysqli_fetch_array($images); ++$count) { ?>
			
				<?php
				
					$ext = pathinfo(getOption("physicalPath") . "images/pics/" . $item['img'], PATHINFO_EXTENSION);
					$loadImg = preg_replace('/\\.[^.\\s]{3,4}$/', '', $item['img']);
					$loadImg = getOption("imagePathFront") . "siteGray/" . $loadImg . ".png";

					$itemRatio = $item['height'] / $item['width'];
					
				?>
				
				<figure class="resize-image">
					<img src="<?=$loadImg?>" data-src="<?=$item['img']?>" data-aspect-ratio="<?=$itemRatio?>" class="<?=$ext?> loadmeview photo" />
				</figure>
				
			<?php } ?>

			<h1><?=getOption("company")?></h1>
		
		</div>
		
	<?php } ?>

<?php } ?>