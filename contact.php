<?php
$contactID = 728;
$contactDetails = catDetails($contactID);
$pageText = getPageTextID($contactID)

?>


<div class="text-block contact_module hidden">
    <div class="closeBtn">
        <p>CLOSE</p>
    </div>
    <div class="inner">
        <?= $pageText['content'] ?>
    </div>
</div>