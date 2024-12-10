<?php
	
	session_start();
	include('includes/connect.php');
    include('includes/functions.php');
    
    $itemID = $_GET['id'];
    $item = getMainImage($itemID);
    $itemVideo = getImageVideo($itemID);

?>

<div class="wrap">
    <?php if ($itemVideo['embed'] != "") { ?>
        <?=$itemVideo['embed']?>
        <?php } elseif ($itemVideo['file'] != "") { ?>
            <video playsinline controls poster="<?=getOption("imagePathFront")?>1920/<?=$item['img']?>">
                <source src="/videos/<?=$itemVideo['file']?>" />
            </video>
        <?php } else { ?>
            <img src="<?=getOption("imagePathFront")?>1920/<?=$item['img']?>" alt="" />
    <?php } ?>
</div>