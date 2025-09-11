<?php

session_start();
include 'includes/secure.php';
include '../includes/connect.php';
include 'includes/functions.php';

$catID = $_GET['catid'];
$view = $_GET['view'];
$theCat = catDetails($catID);
$result2 = getImages($catID, $theCat['sorter']);

?>

<ul class="canvas" data-view="<?= $view ?>">

    <?php

    for ($count = 1; $pic = mysqli_fetch_array($result2); ++$count) {

        $ext = pathinfo(getOption("physicalPath") . $pic['img'], PATHINFO_EXTENSION);

        if (file_exists(getOption("physicalPath") . "/500/" . $pic['img'])) {
            $theImg = getOption("imagePath") . "500/" . $pic['img'];
        } else {
            $theImg = getOption("imagePath") . $pic['img'];
        }

        if ($ext === "gif") {
            $theImg = getOption("imagePath") . $pic['img'];
        }

        $isText = false;
        if ($pic['img'] === "no-image.jpg") {
            $isText = true;
        }

        $topPos = $pic['catTop'] ?? 0;
        $leftPos = $pic['catLeft'] ?? 0;
        $width = $pic['catWidth'] ?? 20;
        $layerPos = $pic['catLayer'] ?? 1;

        if ($view === "mobile") {
            $topPos = $pic['catTopMobile'] ? $pic['catTopMobile'] : $pic['catTop'];
            $leftPos = $pic['catLeftMobile'] ? $pic['catLeftMobile'] : $pic['catLeft'];
            $width = $pic['catWidthMobile'] ? $pic['catWidthMobile'] : $pic['catWidth'];
            $layer = $pic['catLayerMobile'] ? $pic['catLayerMobile'] : $pic['catLayer'];
        }

    ?>

        <li class="item" data-picid="<?= $pic['id'] ?>" data-catid="<?= $catID ?>" data-x="<?= $leftPos ?>" data-y="<?= $topPos ?>" data-aspect-ratio="<?= $pic['aspectRatio'] ?>" data-filename="<?= $pic['img'] ?>" style="top: <?= $topPos ?>%; left: <?= $leftPos ?>%; width: <?= $width ?>%; height: auto; <?php if (!$isText) { ?>aspect-ratio: <?= $pic['aspectRatio'] ?>;<?php } ?> z-index: <?= $layer ? $layer : 1 ?>;">

            <div class="item_tools">
                <ul>
                    <li class="button" title="Select Item">
                        <input data-id="<?= $pic['id'] ?>" type="checkbox" name="select" value="selected">
                    </li>
                    <li class="divider"></li>
                    <li class="button" title="Item Detail">
                        <a href="detail.php?picID=<?= $pic['id'] ?>&category=<?= $catID ?>&imgName=<?= $pic['img'] ?>">
                            <svg xmlns="http://www.w3.org/2000/svg" width="14.24" height="14.239" viewBox="0 0 14.24 14.239">
                                <g id="Icon_akar-pencil" data-name="Icon akar-pencil" transform="translate(-4 -4.016)">
                                    <path id="Path_34" data-name="Path 34" d="M5.476,14.13l8.959-8.96a1.874,1.874,0,0,1,2.65,2.65l-8.961,8.96a1.464,1.464,0,0,1-.748.4L4.5,17.755l.575-2.877a1.464,1.464,0,0,1,.4-.748Z" fill="none" stroke="#3f4f6a" stroke-linecap="round" stroke-linejoin="round" stroke-width="1" />
                                    <path id="Path_35" data-name="Path 35" d="M21.75,9.75l3.932,3.932" transform="translate(-10.17 -3.007)" fill="none" stroke="#3f4f6a" stroke-width="1" />
                                </g>
                            </svg>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li class="button" title="Bring Forward">
                        <button class="layer_update" data-direction="forward">
                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 14 14">
                                <g id="Group_189" data-name="Group 189" transform="translate(-1376 -632)">
                                    <rect id="Rectangle_1614" data-name="Rectangle 1614" width="11" height="11" transform="translate(1379 635)" fill="#3f4f6a" />
                                    <g id="Rectangle_1615" data-name="Rectangle 1615" transform="translate(1376 632)" fill="#fff" stroke="#3f4f6a" stroke-width="1">
                                        <rect width="11" height="11" stroke="none" />
                                        <rect x="0.5" y="0.5" width="10" height="10" fill="none" />
                                    </g>
                                </g>
                            </svg>

                        </button>

                    </li>
                    <li class="button" title="Send Backward">
                        <button class="layer_update" data-direction="back">
                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 14 14">
                                <g id="Group_190" data-name="Group 190" transform="translate(-1376 -659)">
                                    <g id="Rectangle_1613" data-name="Rectangle 1613" transform="translate(1379 662)" fill="#fff" stroke="#3f4f6a" stroke-width="1">
                                        <rect width="11" height="11" stroke="none" />
                                        <rect x="0.5" y="0.5" width="10" height="10" fill="none" />
                                    </g>
                                    <rect id="Rectangle_1612" data-name="Rectangle 1612" width="11" height="11" transform="translate(1376 659)" fill="#3f4f6a" />
                                </g>
                            </svg>

                        </button>
                    </li>
                    <li class="divider"></li>
                    <li class="button" title="Delete Item">
                        <a href="delete_image.php?id=<?= $pic['id'] ?>&category=<?= $catID ?>&imgName=<?= $pic['img'] ?>&parentID=<?= $parentID ?>&parentParentID=<?= $parentParentID ?>&src=manage_loose.php" class="delete">
                            <button>
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14.555" viewBox="0 0 14 14.555">
                                    <path id="Icon_feather-trash" data-name="Icon feather-trash" d="M4.5,5.711h13m-1.444,0V15.2a1.4,1.4,0,0,1-1.444,1.356H7.389A1.4,1.4,0,0,1,5.944,15.2V5.711m2.167,0V4.356A1.4,1.4,0,0,1,9.556,3h2.889a1.4,1.4,0,0,1,1.444,1.356V5.711" transform="translate(-4 -2.5)" fill="none" stroke="#d60f0f" stroke-linecap="round" stroke-linejoin="round" stroke-width="1" />
                                </svg>

                            </button>
                        </a>

                    </li>
                </ul>
            </div>

            <?php if (!$isText) { ?>
                <button class="resize-handle bottom-right"></button>
                <button class="resize-handle bottom-left"></button>
                <button class="resize-handle top-left"></button>
                <button class="resize-handle top-right"></button>
            <?php } else { ?>
                <button class="resize-handle right"></button>
                <button class="resize-handle left"></button>
            <?php } ?>

            <?php if (!$isText) { ?>

                <img src="<?= $theImg ?>" border="0"><br />

            <?php } else { ?>
                <div class="textEntry">
                    <?php if ($pic['content'] != "") { ?>
                        <?= $pic['content'] ?>
                    <?php } else { ?>
                        <?= $pic['title'] ?>
                    <?php } ?>
                </div>
            <?php } ?>
            <input type="hidden" class="picID" name="picID[]" value="<?= $pic['id'] ?>">
            <input type="hidden" class="img" name="img[]" value="<?= $pic['img'] ?>">
            <input type="hidden" name="copyCat[]" class="copyCat" value="" />
            <input type="hidden" name="moveCat[]" class="moveCat" value="<?= $catID ?>" />

            <div class="picCover" style="display: none;"></div>

            <div class="picInfo" style="display: none;">

                <?php if (getOption("title") === "yes") { ?>
                    <input type="text" name="title[]" class="titleField" <?php if ($pic['title'] != "") { ?>value="<?= $pic['title'] ?>" <?php } else { ?>value="title:" <?php } ?> onfocus="if (this.value == 'title:') this.value='';" onblur="if (this.value == '') this.value='title:';"><br />
                <?php } ?>

                <?php if ($catID === "417" or $catID === "420") { ?>

                    <?php if (getOption("caption") === "yes") { ?>
                        <input type="text" name="captions[]" class="captions" <?php if ($pic['caption'] != "") { ?>value="<?= $pic['caption'] ?>" <?php } else { ?>value="press date:" <?php } ?> onfocus="if (this.value == 'press date:') this.value='';" onblur="if (this.value == '') this.value='press date:';"><br />
                    <?php } ?>

                <?php } else { ?>

                    <?php if (getOption("caption") === "yes") { ?>
                        <input type="text" name="captions[]" class="captions" <?php if ($pic['caption'] != "") { ?>value="<?= $pic['caption'] ?>" <?php } else { ?>value="caption:" <?php } ?> onfocus="if (this.value == 'caption:') this.value='';" onblur="if (this.value == '') this.value='caption:';"><br />
                    <?php } ?>

                <?php } ?>

                <?php if (getOption("picURL") === "yes") { ?>
                    <input type="text" name="picURL[]" class="picURL" <?php if ($pic['picURL'] != "") { ?>value="<?= $pic['picURL'] ?>" <?php } else { ?>value="url:" <?php } ?> onfocus="if (this.value == 'url:') this.value='';" onblur="if (this.value == '') this.value='url:';"><br />
                <?php } ?>

                <?php if (getOption("shortDesc") === "yes") { ?>
                    <?php if ($catID == 324) { ?>
                        <textarea name="shortDesc[]" class="shortDesc" style="width: 170px; height: 15px; font-size: 11px; font-family: Helvetica, Arial;"><?php if ($pic['shortDesc'] != "") { ?><?= $pic['shortDesc'] ?><?php } else { ?>short description:<?php } ?></textarea><br />
                    <?php } ?>
                <?php } ?>

                <div class="imagetools">
                    <a href="detail.php?picID=<?= $pic['id'] ?>&category=<?= $catID ?>&imgName=<?= $pic['img'] ?>">

                        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 64 64" enable-background="new 0 0 64 64" xml:space="preserve">
                            <path d="M63.8,18L46.1,0.2l-8.3,8.3L0,46.2V64h17.8l39.1-39l0,0L63.8,18z M58.2,18L54,22.2L41.9,10l4.1-4.2L58.2,18z M4,51.9l8.3,8.1H4V51.9z M17,59.1l-12.3-12l34.3-34.2L51.2,25L17,59.1z" />
                        </svg>
                        <span class="label">edit</span>

                    </a>
                    <a href="delete_image.php?id=<?= $pic['id'] ?>&category=<?= $catID ?>&imgName=<?= $pic['img'] ?>&parentID=<?= $parentID ?>&parentParentID=<?= $parentParentID ?>&src=manage_loose.php" class="delete">
                        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 64 64" enable-background="new 0 0 64 64" xml:space="preserve">
                            <g>
                                <path d="M54,8H42V4c0-2.2-1.8-4-4-4H26c-2.2,0-4,1.8-4,4v4H10c-2.2,0-4,1.8-4,4v8h4.1l2.6,38.4c0.2,3.1,2.8,5.6,6,5.6h26.5c3.1,0,5.8-2.5,6-5.6L53.9,20H58v-8C58,9.8,56.2,8,54,8z M26,4h12v4H26V4z M47.3,58.1c-0.1,1-0.9,1.9-2,1.9H18.7c-1,0-1.9-0.8-2-1.9L14.1,20h35.7L47.3,58.1z M54,16H10v-4h44V16z" />
                                <rect x="9" y="37" transform="matrix(7.669654e-02 0.9971 -0.9971 7.669654e-02 59.1978 14.0736)" width="26.1" height="4" />
                                <rect x="30" y="26" width="4" height="26" />
                                <rect x="40" y="26" transform="matrix(0.9971 7.665917e-02 -7.665917e-02 0.9971 3.1133 -3.1049)" width="4" height="26.1" />
                            </g>
                        </svg>
                        <span class="label">delete</span>
                    </a>
                    <div class="select">
                        <input type="checkbox" name="selectCheck" class="selectCheck" data-id="<?= $pic['id'] ?>" value="yes"></span>
                        <span class="label">select</span>
                        <input type="checkbox" name="deleteCheck" data-id="<?= $pic['id'] ?>" class="deleteCheck" data-id="<?= $pic['id'] ?>" value="yes" style="display: none;">
                    </div>
                </div>


            </div>

        </li>

    <?php

    }

    ?>

</ul>