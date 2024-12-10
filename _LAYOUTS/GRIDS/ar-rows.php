<div class="ar-rows last-row" data-margin="20">

    <figure class="row">

        <?php for ($count = 1; $item = mysqli_fetch_array($images); ++$count) { ?>

            <?php

            $ext = pathinfo(getOption("physicalPath") . "images/pics/" . $item['img'], PATHINFO_EXTENSION);

            if ($isStory) {
                $theLink = "/slideshow/" . $itemID . "/" . $slug . "#" . $count;
            } else {
                $theLink = "/slideshow/" . $slug . "#" . $count;
            }

            $itemVideo = getImageVideo($item['id']);

            ?>

            <a href="<?= $theLink ?>" class="cell" id="<?= $count ?>">

                <img class="photo loadme loadmeview <?= $ext ?>" src="<?= $loaderImg ?>" data-img="<?= $item['img'] ?>" data-width="<?= $item['width'] ?>" data-height="<?= $item['height'] ?>">

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