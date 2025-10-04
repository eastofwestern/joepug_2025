<?php
$contactID = 728;
$contactDetails = catDetails($contactID);
$contactPageText = getPageTextID($contactID)

?>

<div class="text-block contact_module hidden">
    <div class="inner">
        <?= $contactPageText['content'] ?>
    </div>
</div>

<?php /*

<div class="contact_cover"></div>

*/ ?>