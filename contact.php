<?php
$contactID = 728;
$contactDetails = catDetails($contactID);
$contactPageText = getPageTextID($contactID)

?>


<div class="text-block contact_module hidden">
    <div class="closeBtn">
        <p>CLOSE</p>
    </div>
    <div class="inner">
        <?= $contactPageText['content'] ?>
    </div>
</div>