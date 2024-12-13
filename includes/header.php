<?php

$cats = catList();
$logoMark = getFirstImage(719);

?>

<header>

	<div class="inner">

		<a href="/" class="logo">
			<?php if ($logoMark) { ?>
				<img src="<?= getOption("imagePathFront") ?><?= $logoMark['img'] ?>" class="photo gif" alt="<?= getOption("company") ?>" />
			<?php } else { ?>
				<?= getOption("company") ?>
			<?php } ?>
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