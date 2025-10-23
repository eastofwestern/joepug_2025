<?php
$contactID = 728;
$contactDetails = catDetails($contactID);
$contactPageText = getPageTextID($contactID)

?>

<div class="text-block contact_module hidden">
    <div class="inner">
        <?= $contactPageText['content'] ?>

        <div class="bottom">
            <div class="bottom_left">
                <a href="https://www.instagram.com/joepug/" target="_blank">Instagram</a>
            </div>

            <div class="bottom_right">
                All Images &copy; Joe Pugliese
            </div>
        </div>

    </div>
    <div class="background">
        <div class="block"></div>
        <div class="block"></div>
        <div class="block"></div>
    </div>

    <div class="bottom_left desktop">
        <a href="https://www.instagram.com/joepug/" target="_blank">Instagram</a>
    </div>

    <div class="bottom_right desktop">
        All Images &copy; Joe Pugliese
    </div>
</div>