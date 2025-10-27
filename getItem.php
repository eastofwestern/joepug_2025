<?php

session_start();
include('includes/connect.php');
include('includes/functions.php');

// individual image information
$itemID = $_GET['id'];
$item = getMainImage($itemID);
$itemVideo = getImageVideo($itemID);

$hasTitle = false;
$hasCaption = false;
if ($item['title'] != "title:" and $item['title'] != "") {
    $hasTitle = true;
}

if ($item['caption'] != "caption:" and $item['caption'] != "") {
    $hasCaption = true;
}

?>


<div class="wrap">
    <?php if ($itemVideo['embed'] != "") { ?>
        <?= $itemVideo['embed'] ?>
    <?php } elseif ($itemVideo['file'] != "") { ?>
        <video playsinline controls poster="<?= getOption("imagePathFront") ?>1920/<?= $item['img'] ?>">
            <source src="/videos/<?= $itemVideo['file'] ?>" />
        </video>
    <?php } else { ?>
        <img src="<?= $loaderImg ?>" data-img="<?= $item['img'] ?>" class="photo loadmeview" alt="" />
    <?php } ?>

    <?php if ($hasTitle or $hasCaption) { ?>
        <div class="info">
            <?php if ($hasTitle) { ?>
                <h2><?= $item['title'] ?></h2>
            <?php } ?>
            <?php if ($hasCaption) { ?>
                <p><?= $item['caption'] ?></p>
            <?php } ?>
        </div>
    <?php } ?>

    <svg class="arrow left" id="Layer_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 139.73 80.29">
        <defs>
            <style>
                .cls-1 {
                    fill: #231f20;
                }
            </style>
        </defs>
        <g id="Layer_1-2">
            <path class="cls-1" d="M74.25,80.29L0,40.15,74.25,0v15.59l-29.43,15.4c-6.43,3.51-7.41,6.04-7.41,9.55,0,3.12,1.36,5.65,7.41,8.96l29.43,15.4v15.4ZM139.73,80.29l-74.06-40.15L139.73,0v15.59l-29.23,15.4c-6.63,3.51-7.41,6.04-7.41,9.55,0,3.12,1.36,5.65,7.41,8.96l29.23,15.4v15.4Z" />
        </g>
    </svg>

    <svg class="arrow right" id="Layer_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 139.73 80.29">
        <defs>
            <style>
                .cls-1 {
                    fill: #231f20;
                }
            </style>
        </defs>
        <g id="Layer_1-2">
            <path class="cls-1" d="M0,80.29v-15.4l29.43-15.4c6.04-3.31,7.41-5.85,7.41-8.96,0-3.51-.97-6.04-7.41-9.55L0,15.59V0l74.25,40.15L0,80.29ZM65.68,80.29v-15.4l29.23-15.4c6.24-3.31,7.6-5.85,7.6-8.96,0-3.51-.97-6.04-7.6-9.55l-29.23-15.4V0l74.06,40.15-74.06,40.15Z" />
        </g>
    </svg>

    <svg class="close" id="Layer_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 83.75 80.29">
        <defs>
            <style>
                .cls-1a {
                    fill: none;
                }

                .cls-2a {
                    fill: #231f20;
                }
            </style>
        </defs>
        <g id="Layer_1-2">
            <path class="cls-1a" d="M49.07,58.83c-1.8-2.3-4.2-4.99-7.19-4.99s-5.4,2.69-7.19,4.99l-17.92,21.47h50.22l-17.91-21.47Z" />
            <path class="cls-1a" d="M34.68,21.47c1.8,2.3,4.2,4.99,7.19,4.99s5.4-2.69,7.19-4.99L66.98,0H16.77l17.92,21.47Z" />
            <path class="cls-2a" d="M83.75,0h-16.77l-17.92,21.47c-1.8,2.3-4.2,4.99-7.19,4.99s-5.4-2.69-7.19-4.99L16.77,0H0l33.68,40.15L0,80.29h16.77l17.92-21.47c1.8-2.3,4.2-4.99,7.19-4.99s5.4,2.69,7.19,4.99l17.91,21.47h16.77l-33.68-40.15L83.75,0Z" />
        </g>
    </svg>

</div>