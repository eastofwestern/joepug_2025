<?php

$bioID = 727;
$bioDetails = catDetails($bioID);
$pageText = getPageTextID($bioID);

$hasBioImg = false;
$firstSubID = getFirstSubID($bioID);
if ($firstSubID > 0) {
    $bioImg = getFirstImage($firstSubID);
    $bioRatio = $bioImg['height'] / $bioImg['width'];
    $bioPad = $bioRatio * 100;
    $hasBioImg = true;
}
?>

<div class="two_column <?php if ($hasBioImg) { ?>has_bio_img<?php } ?> bio_module hidden" style="background-color: <?= $bioDetails['bgColor'] ?>;">
    <div class="col_wrap">
        <div class="col">
            <div class="text-block">
                <div class="inner">

                    <?php if ($hasBioImg) { ?>
                        <div class="bio_cell">
                            <div class="bio_img_wrap" style="padding-top: <?= $bioPad ?>%;">
                                <img src="<?= $loaderImg ?>" data-img="<?= $bioImg['img'] ?>" width="<?= $bioImg['width'] ?>" height="<?= $bioImg['height'] ?>" alt="Joe Pugliese" class="photo loadmeview bio_img" />
                            </div>
                        </div>
                    <?php } ?>

                    <?= $pageText['content'] ?>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="text-block">
                <div class="inner">
                    <?= $pageText['content2'] ?>
                </div>
            </div>
        </div>
    </div>

    <div class="footer">

        <div class="inner">
            <div class="animated_name">

                <svg id="joe" xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 3249.7 152.5">
                    <g id="Group_67">
                        <path id="Path_15" d="M54.8,1.4h15.6v113.5c0,23.1-15.2,36.8-35.3,36.8S5,140.6.7,122.5h16.5c2.3,8.2,9.7,13.8,18.2,13.7,10.9,0,19.5-9,19.5-23.7V1.4Z" />
                        <path id="Path_16" d="M92.7,76.1C92.7,33.5,127.5.4,168.4.4s75.7,33.1,75.7,75.7c.2,41.8-33.6,75.8-75.4,76-41.8.2-75.8-33.6-76-75.4,0-.2,0-.4,0-.6M108.3,76.1c0,34,28,60.1,60.1,60.1s60.1-26.1,60.1-60.1-26.3-60.1-60.1-60.1-60.1,27.8-60.1,60.1" />
                        <path id="Path_17" d="M266.7,151.1V1.4h2983v15.6H294.5c-10.5,0-12.4,5.8-12.4,10v26.9c0,5.8,1.9,12,10.5,12h2951.3v15.6H292.6c-8.6,0-10.5,6.4-10.5,12.2v31.6c0,4.3,1.9,10,12.4,10h2955.2v15.6H266.7Z" />
                    </g>
                </svg>


                <div class="mask" style="background-color: <?= $bioDetails['bgColor'] ? $bioDetails['bgColor'] : '#fff' ?>;">

                </div>

                <div class="last_name" style="background-color: <?= $bioDetails['bgColor'] ? $bioDetails['bgColor'] : '#fff' ?>;">

                    <div class="spacer" style="background-color: <?= $bioDetails['bgColor'] ? $bioDetails['bgColor'] : '#fff' ?>;"></div>

                    <svg id="pug" xmlns="http://www.w3.org/2000/svg" width="348.957" height="151.386" viewBox="0 0 348.957 151.386" style="background-color: <?= $bioDetails['bgColor'] ? $bioDetails['bgColor'] : '#fff' ?>;">
                        <g id="Group_100" data-name="Group 100" transform="translate(-8842.635 -3736.283)">
                            <path id="Path_18" data-name="Path 18" d="M1075.635,150.744V1.069h35.922c25.017,0,40.412,17.533,40.412,41.268s-15.822,41.054-40.412,41.054h-8.766a11.41,11.41,0,0,0-11.761,11.545v55.808ZM1110.488,68c15.609,0,26.086-11.546,26.086-25.658,0-14.968-11.118-25.873-26.3-25.873h-8.98c-7.27,0-10.264,4.7-10.264,9.622v34c0,3.635,2.994,7.911,10.905,7.911Z" transform="translate(7767 3736.283)" />
                            <path id="Path_19" data-name="Path 19" d="M1175.276,115.892V1.07h15.609V115.037c0,12.615,9.194,19.671,19.671,19.671s19.672-7.056,19.672-19.671V1.07h15.609V115.892c0,20.526-16.037,35.28-35.281,35.28s-35.28-14.754-35.28-35.28" transform="translate(7767 3736.283)" />
                            <path id="Path_20" data-name="Path 20" d="M1365.15,78.473h59.442c-1.924,43.191-35.28,72.913-76.12,72.913-42.337,0-75.693-34.852-75.693-75.479,0-41.481,34-75.907,75.693-75.907a73.621,73.621,0,0,1,36.991,9.836l-8.339,13.257a62.934,62.934,0,0,0-28.652-7.483,60.083,60.083,0,1,0,0,120.167c27.156,0,54.311-19.031,54.311-34.639,0-4.276-2.566-7.057-7.912-7.057H1365.15Z" transform="translate(7767 3736.283)" />
                        </g>
                    </svg>

                    <svg id="liese" xmlns="http://www.w3.org/2000/svg" width="313.757" height="151.385" viewBox="0 0 313.757 151.385" style="background-color: <?= $bioDetails['bgColor'] ? $bioDetails['bgColor'] : '#fff' ?>;">
                        <g id="Group_101" data-name="Group 101" transform="translate(-9211.755 -3736.284)">
                            <path id="Path_13" data-name="Path 13" d="M1609.563,117.816h16.464c3.207,9.836,13.043,17.961,23.52,17.961,16.251,0,27.37-11.974,27.37-26.086,0-14.754-11.119-26.086-26.942-26.086a41.11,41.11,0,0,1-41.054-41.268A41.969,41.969,0,0,1,1650.4,0c21.382,0,38.274,14.753,41.481,34h-16.678c-3.635-10.478-13.257-18.389-24.376-18.389a26.512,26.512,0,0,0-26.3,26.727c0,13.685,11.761,25.873,26.3,25.873a41.589,41.589,0,0,1,.428,83.176c-21.6,0-38.916-14.112-41.7-33.57" transform="translate(7767 3736.283)" />
                            <path id="Path_14" data-name="Path 14" d="M1716.817,150.744V1.069h41.695V16.678h-13.9c-10.477,0-12.4,5.773-12.4,10.049V53.669c0,5.773,1.924,11.974,10.477,11.974h10.05V81.252h-10.05c-8.553,0-10.477,6.415-10.477,12.188v31.646c0,4.276,1.924,10.049,12.4,10.049h13.9v15.609Z" transform="translate(7767 3736.283)" />
                            <path id="Path_21" data-name="Path 21" d="M1486.664,135.135v15.609h-41.909V1.07h15.4V125.086c0,4.277,1.925,10.049,12.4,10.049Z" transform="translate(7767 3736.283)" />
                            <rect id="Rectangle_37" data-name="Rectangle 37" width="15.395" height="149.675" transform="translate(9272.564 3737.353)" />
                            <path id="Path_22" data-name="Path 22" d="M1553.651,150.744V1.069h41.695V16.678h-13.9c-10.477,0-12.4,5.773-12.4,10.049V53.669c0,5.773,1.924,11.974,10.477,11.974h10.05V81.252h-10.05c-8.553,0-10.477,6.415-10.477,12.188v31.646c0,4.276,1.924,10.049,12.4,10.049h13.9v15.609Z" transform="translate(7767 3736.283)" />
                        </g>
                    </svg>

                </div>

            </div>
            <div class="bottom">
                <div class="col">
                    <p class="title">STUDIO</p>
                    <p>6311 Romaine St. <br />
                        Suite No. 7307<br />
                        Los Angeles, CA <br />
                        90038</p>
                </div>
                <div class="col">
                    <p class="title">CONTACT</p>
                    <p><a href="https://www.ba-reps.com/photographers/joe-pugliese" target="_blank">B&A Reps</a><br />
                        <a href="mailto:ehrin@ba-reps.com">ehrin@ba-reps.com</a><br />
                        tel: +1 917 587 8286
                    </p>
                </div>
                <div class="col">
                    <p class="title">FOLLOW</p>
                    <p>IG <a href="https://www.instagram.com/joepug" target="__blank">@joepug</a>
                    </p>
                    <p class="mobile"><a href="https://www.eastofwestern.com" target="_blank">&copy; <?= Date("Y") ?> </a></p>
                </div>
                <p class="credit"><a href="https://www.eastofwestern.com" target="_blank">&copy; <?= Date("Y") ?> </a></p>
            </div>




        </div>

    </div>

</div>