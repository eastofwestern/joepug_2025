<?php

$cats = catList();
$logoMark = getFirstImage(719);

?>

<header>

	<div class="inner">

		<a href="/" class="logo">
			<!-- <?php if ($logoMark) { ?>
				<img src="<?= getOption("imagePathFront") ?><?= $logoMark['img'] ?>" class="photo gif" alt="<?= getOption("company") ?>" />
			<?php } else { ?>
				<?= getOption("company") ?>
			<?php } ?> -->
			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="257.527" height="94.868" viewBox="0 0 257.527 94.868">
				<defs>
					<clipPath id="clip-path">
						<rect id="Rectangle_35" data-name="Rectangle 35" width="257.527" height="94.868" transform="translate(-53 0)" fill="none" />
					</clipPath>
				</defs>
				<g id="Group_63" data-name="Group 63" transform="translate(53 0)" clip-path="url(#clip-path)">
					<path id="1" data-name="Path 1" d="M5.4,24.471l4.4-1.265,9.247,32.247c1.871,6.511-1.3,11.6-6.967,13.228-4.522,1.3-9.4-.693-12.079-5.47l4.642-1.334a5.479,5.479,0,0,0,6.233,2.386c3.074-.884,4.758-4.108,3.562-8.268Z" transform="translate(-18.472 0.197) rotate(16)" fill="#050605" />
					<path id="2" data-name="Path 2" d="M27.054,22.2a22.2,22.2,0,1,1,22.2,22.2,22.244,22.244,0,0,1-22.2-22.2m4.579,0A17.625,17.625,0,1,0,49.258,4.579,17.679,17.679,0,0,0,31.633,22.2" transform="translate(-35 25.043)" fill="#050605" />
					<path id="3" data-name="Path 3" d="M85.374,63.05V19.144H95.912c7.338,0,11.854,5.143,11.854,12.105s-4.641,12.043-11.854,12.043H93.34a3.347,3.347,0,0,0-3.45,3.387V63.05ZM95.6,38.776a7.384,7.384,0,0,0,7.652-7.527,7.415,7.415,0,0,0-7.715-7.589H92.9a2.716,2.716,0,0,0-3.011,2.822v9.973c0,1.067.878,2.321,3.2,2.321Z" transform="translate(-1 5.899)" fill="#050605" />
					<path id="4" data-name="Path 4" d="M130.756,70.95l15.127-8.674a21.89,21.89,0,0,1-8.731,29.662,22.2,22.2,0,0,1-22.091-38.524,21.613,21.613,0,0,1,10.849-2.9l-.188,4.591a18.453,18.453,0,0,0-8.383,2.277,17.625,17.625,0,0,0,17.535,30.579c6.91-3.963,11.043-12.768,8.766-16.74-.625-1.088-1.683-1.421-3.043-.641l-7.563,4.337Z" transform="translate(90.259 -78.639) rotate(30)" fill="#050605" />
					<path id="5" data-name="Path 5" d="M75.734,60.44,32.954,71.989,29.737,60.073,34.2,58.868l1.072,3.972c.809,2.995,2.607,3.1,3.829,2.77l7.7-2.079c1.65-.446,3.274-1.474,2.615-3.919l-.776-2.872,4.462-1.2.775,2.872c.66,2.444,2.641,2.5,4.292,2.054l9.044-2.442c1.222-.33,2.724-1.326,1.916-4.32l-1.073-3.972,4.462-1.205Z" transform="matrix(-0.259, 0.966, -0.966, -0.259, 121.587, 11.903)" fill="#050605" />
					<path id="6" data-name="Path 6" d="M117.693,27.732,128.067-4.606l4.308,1.329-10.3,32.1a5.683,5.683,0,0,0,10.861,3.352l10.3-32.1,4.309,1.33L137.171,33.744a10.192,10.192,0,0,1-19.478-6.012" transform="translate(-7.299 67.262) rotate(-17)" fill="#050605" />
				</g>
			</svg>
			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="257.527" height="94.868" viewBox="0 0 257.527 94.868">
				<defs>
					<clipPath id="clip-path">
						<rect id="Rectangle_35" data-name="Rectangle 35" width="257.527" height="94.868" transform="translate(0 0)" fill="none" />
					</clipPath>
				</defs>
				<g id="Group_64" data-name="Group 64" transform="translate(0 0)">
					<g id="Group_63" data-name="Group 63" clip-path="url(#clip-path)">
						<path id="J" data-name="Path 1" d="M4.194,20.348l4.4-1.265,10.451,36.37c1.871,6.511-1.3,11.6-6.967,13.228-4.522,1.3-9.4-.693-12.079-5.47l4.642-1.334a5.479,5.479,0,0,0,6.233,2.386c3.074-.884,4.758-4.108,3.562-8.268Z" fill="#050605" />
						<path id="O" data-name="Path 2" d="M27.054,22.2a22.2,22.2,0,1,1,22.2,22.2,22.244,22.244,0,0,1-22.2-22.2m4.579,0A17.625,17.625,0,1,0,49.258,4.579,17.679,17.679,0,0,0,31.633,22.2" fill="#050605" />
						<path id="E" data-name="Path 3" d="M85.374,63.05V19.144H95.912c7.338,0,11.854,5.143,11.854,12.105s-4.641,12.043-11.854,12.043H93.34a3.347,3.347,0,0,0-3.45,3.387V63.05ZM95.6,38.776a7.384,7.384,0,0,0,7.652-7.527,7.415,7.415,0,0,0-7.715-7.589H92.9a2.716,2.716,0,0,0-3.011,2.822v9.973c0,1.067.878,2.321,3.2,2.321Z" fill="#050605" />
						<path id="P" data-name="Path 4" d="M130.756,70.95l15.127-8.674a21.89,21.89,0,0,1-8.731,29.662,22.2,22.2,0,0,1-22.091-38.524,21.613,21.613,0,0,1,10.849-2.9l-.188,4.591a18.453,18.453,0,0,0-8.383,2.277,17.625,17.625,0,0,0,17.535,30.579c6.91-3.963,11.043-12.768,8.766-16.74-.625-1.088-1.683-1.421-3.043-.641l-7.563,4.337Z" fill="#050605" />
						<path id="U" data-name="Path 5" d="M75.734,60.44,32.954,71.989,29.737,60.073,34.2,58.868l1.072,3.972c.809,2.995,2.607,3.1,3.829,2.77l7.7-2.079c1.65-.446,3.274-1.474,2.615-3.919l-.776-2.872,4.462-1.2.775,2.872c.66,2.444,2.641,2.5,4.292,2.054l9.044-2.442c1.222-.33,2.724-1.326,1.916-4.32l-1.073-3.972,4.462-1.205Z" fill="#050605" />
						<path id="G" data-name="Path 6" d="M117.693,27.732,126.139.371,130.447,1.7l-8.373,27.126a5.683,5.683,0,0,0,10.861,3.352l8.373-27.125,4.309,1.33-8.446,27.361a10.192,10.192,0,0,1-19.478-6.012" fill="#050605" />
					</g>
				</g>
			</svg>

		</a>

		<div class="menuBtn">
			<div class="ib v-middle">
				<span class="line"></span>
				<span class="line"></span>
				<span class="line"></span>
			</div>
		</div>

	</div>

	<nav>

		<ul>

			<?php for ($count = 1; $cat = mysqli_fetch_array($cats); ++$count) { ?>

				<?php

				if ($cat['pageType'] === "link") {
					$theLink = $cat['link'];
					$theTarget = $cat['target'];
				} else {
					$theLink = "/" . $cat['slug'];
					$theTarget = "_parent";
				}

				$hasSubs = false;
				$parentClass = "";
				$catSubs = subcatList($cat['id']);
				if (mysqli_num_rows($catSubs) > 0) {
					$hasSubs = true;
					$parentClass = "hassubs";
				}

				if ($cat['id'] == 717) {
					$theLink = "/";
				}

				if ($cat['id'] == 728) {
					$theLink = "#";
				}

				if ($cat['pageType'] === "archive") {
					// get the first subpage
					$firstSubPageID = getFirstSubID($cat['id']);
					$firstSubDetails = catDetails($firstSubPageID);
					$theLink = "/" . $firstSubDetails['slug'];
					$theTarget = "_parent";
				}

				?>

				<li class="<?= $parentClass ?>">


					<a href="<?= $theLink ?>" target="<?= $theTarget ?>" class="<?php if ($catID == $cat['id'] or $parentID == $cat['id']) { ?>pageOn<?php } ?>"
						id="<?php if ($cat['id'] == 728) { ?>contact<?php } ?>">

						<?php

						if ($cat['name'] == "HOME") {
							$navItem = "OVERVIEW";
						} else {
							$navItem = $cat['name'];
						}

						?>

						<?= $navItem ?>
					</a>

					<?php if ($hasSubs) { ?>

						<ul class="subs">

							<?php for ($subcount = 1; $cat = mysqli_fetch_array($catSubs); ++$subcount) { ?>

								<?php

								if ($cat['pageType'] === "link") {
									$theLink = $cat['link'];
									$theTarget = $cat['target'];
								} else {
									$theLink = "/" . $cat['slug'];
									$theTarget = "_parent";
								}

								?>

								<li>
									<a href="<?= $theLink ?>" target="<?= $theTarget ?>" class="<?= $parentClass ?> <?php if ($catID == $cat['id'] or $parentID == $cat['id']) { ?>pageOn<?php } ?>">
										<?= $cat['subName'] ?>
									</a>
								</li>

							<?php } ?>

						</ul>

					<?php } ?>

				</li>

			<?php } ?>

		</ul>

	</nav>

</header>