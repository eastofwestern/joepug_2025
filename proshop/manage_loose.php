<?php

session_start();
include 'includes/secure.php';
include '../includes/connect.php';
include 'includes/functions.php';

$catID = $_GET['category'];
$theCat = catDetails($catID);
if (isset($_GET['parentID'])) {
    $parentID = $_GET['parentID'];
}
$theParent = catDetails($parentID);
if (isset($_GET['parentParentID'])) {
    $parentParentID = $_GET['parentParentID'];
}
$tags = getTags("tags");

if (isset($_GET['show']) and $_GET['show'] === "all") {
    $limit = 5000;
} else {
    $limit = 5000;
}

$result2 = getImages($catID, $theCat['sorter']);

// generate option string for copy/move
$catOptionStr = "";

$myCats = catList();
for ($catCount = 1; $cat = mysqli_fetch_array($myCats); ++$catCount) {

    $thisID = $cat['id'];

    $catOptionStr .= '<option value="' . $cat['id'] . '">' . ucwords(strtolower($cat['name'])) . '</option>';

    $mySubs = subcatList($thisID);
    for ($subCount = 1; $subcat = mysqli_fetch_array($mySubs); ++$subCount) {

        $thisSubID = $subcat['id'];

        $catOptionStr .= '<option value="' . $subcat['id'] . '">&nbsp;&nbsp; - ' . ucwords(strtolower($subcat['subName'])) . '</option>';

        $mySubSubs = subcatList($thisSubID);
        for ($subsubCount = 1; $subsubcat = mysqli_fetch_array($mySubSubs); ++$subsubCount) {

            $catOptionStr .= '<option value="' . $subsubcat['id'] . '">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - ' . strtolower($subsubcat['subName']) . '</option>';
        }
    }
}

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<HTML>

<HEAD>

    <?php include 'includes/pageHead.php'; ?>

</HEAD>

<BODY>

    <?php

    if (isset($_REQUEST['status'])) {
        echo showStatus($_REQUEST['status']);
    }

    ?>

    <div id="topMenu">
        <?php include('includes/topMenu.php'); ?>
    </div>

    <div id="leftCol">
        <div class="innerLoad">

            <?php include('includes/leftColNew.php'); ?>

        </div>
    </div>

    <div id="contentArea">

        <div id="pageContent" class="manageimages layout_2025">

            <div class="page_top">
                <div class="breadcrumbs">
                    <ul>
                        <li><a href="main.php">Home</a></li>
                        <li class="pageOn"><?= $theCat['name'] ?></li>
                    </ul>
                </div>

                <div class="buttons">
                    <div class="button_group">
                        <button class="style_icon active"><svg xmlns="http://www.w3.org/2000/svg" width="27" height="22" viewBox="0 0 27 22">
                                <path id="Icon_akar-desktop-device" data-name="Icon akar-desktop-device" d="M3,8.5A2.5,2.5,0,0,1,5.5,6h20A2.5,2.5,0,0,1,28,8.5V19.75a2.5,2.5,0,0,1-2.5,2.5H5.5A2.5,2.5,0,0,1,3,19.75ZM10.5,26h10" transform="translate(-2 -5)" fill="none" stroke="#3f4f6a" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" />
                            </svg>
                        </button>
                        <button class="style_icon"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="22" viewBox="0 0 14 22">
                                <g id="Icon_akar-mobile-device" data-name="Icon akar-mobile-device" transform="translate(-8 -2)">
                                    <path id="Path_24" data-name="Path 24" d="M11,3h8a2,2,0,0,1,2,2V21a2,2,0,0,1-2,2H11a2,2,0,0,1-2-2V5a2,2,0,0,1,2-2Z" transform="translate(0 0)" fill="none" stroke="#3f4f6a" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" />
                                    <path id="Path_25" data-name="Path 25" d="M17.925,27h.15" transform="translate(-3 -10)" fill="none" stroke="#3f4f6a" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" />
                                </g>
                            </svg>
                        </button>
                    </div>
                    <a href="/<?= $theCat['slug'] ?>" target="_blank" class="style_icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="22.414" height="22.414" viewBox="0 0 22.414 22.414">
                            <g id="Icon_iconoir-open-new-window" data-name="Icon iconoir-open-new-window" transform="translate(-3.5 -3.086)">
                                <path id="Path_10" data-name="Path 10" d="M27.8,4.5H21.267m6.534,0L18,14.3m9.8-9.8v6.534" transform="translate(-3.301)" fill="none" stroke="#3f4f6a" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" />
                                <path id="Path_11" data-name="Path 11" d="M24.5,15.611v6.667A2.222,2.222,0,0,1,22.278,24.5H6.722A2.222,2.222,0,0,1,4.5,22.278V6.722A2.222,2.222,0,0,1,6.722,4.5h6.667" transform="translate(0 0)" fill="none" stroke="#3f4f6a" stroke-linecap="round" stroke-width="2" />
                            </g>
                        </svg>
                    </a>
                    <button id="save_changes" class="style_btn"><svg xmlns="http://www.w3.org/2000/svg" width="15.02" height="16.825" viewBox="0 0 15.02 16.825">
                            <g id="Group_91" data-name="Group 91" transform="translate(1 1)">
                                <path id="Icon_akar-arrow-up" data-name="Icon akar-arrow-up" d="M12.1,16.5V6M7.5,10.6,12.1,6l4.6,4.6" transform="translate(-5.202 -1.679)" fill="none" stroke="#fff" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" />
                                <line id="Line_4" data-name="Line 4" x2="13.02" fill="none" stroke="#fff" stroke-linecap="round" stroke-width="2" />
                            </g>
                        </svg>
                        <span class="label">Save Changes</span>
                    </button>
                </div>
            </div>

            <?php include('metaEditor.php'); ?>

            <div class="media_tools">
                <div class="title_views">

                    <div class="grid_title">
                        <span class="head">Arrange Media</span> <span class="head_secondary">(<?= mysqli_num_rows($result2) ?> Items)</span>
                    </div>

                    <div class="views">
                        <ul>
                            <li>
                                <input type="checkbox" name="view" value="quick" checked> Grid Layout
                            </li>
                            <li>
                                <input type="checkbox" name="view" value="detail"> Detail View
                            </li>
                        </ul>

                    </div>

                </div>

                <div class="tools_wrap">
                    <ul class="tools">
                        <li class="divider"></li>
                        <li><input type="checkbox" name="selectAll" id="checkAll" />Select All</li>
                        <li class="divider"></li>
                        <li class="counter">
                            <a href="#" class="deleteAll">
                                <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 19 19">
                                    <path id="Icon_akar-trash-can" data-name="Icon akar-trash-can" d="M4.8,6.6H19.2L17.778,19.4A1.8,1.8,0,0,1,15.989,21H8.011a1.8,1.8,0,0,1-1.789-1.6ZM7.81,4.032A1.8,1.8,0,0,1,9.439,3h5.123A1.8,1.8,0,0,1,16.19,4.032L17.4,6.6H6.6ZM3,6.6H21M10.2,11.1v4.5m3.6-4.5v4.5" transform="translate(-2.5 -2.5)" fill="none" stroke="#3f4f6a" stroke-linecap="round" stroke-linejoin="round" stroke-width="1" />
                                </svg>
                                Delete Selected (<span class="count">0</span>)
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <select name="copyCatAll[]" class="copyCatAll">
                                <option value="" selected>Copy To</option>

                                <?= $catOptionStr ?>

                            </select><br />
                        </li>
                        <li class="divider"></li>
                        <li>
                            <select name="moveCatAll[]" class="moveCatAll">
                                <option value="<?= $catID ?>" selected>Move To</option>

                                <?= $catOptionStr ?>

                            </select><br />
                        </li>
                    </ul>
                </div>

            </div>

            <?php if ($theParent['pageType'] === "directors") { ?>

                <form action="updateCatText.php" method="post" name="cattext" id="cattext">
                    <input type="hidden" id="source" name="source" value="manage_images.php">
                    <input type="hidden" id="catID" name="catID" value="<?= $catID ?>">
                    <input type="hidden" id="parentID" name="parentID" value="<?= $parentID ?>">

                    <h3>BIO</h3>
                    <textarea class="mceEditor" id="content" name="content" style="width: 900px; height: 200px;"><?= $theCat['content'] ?></textarea><br /><br />

                    <input type="submit" id="btn" value="UPDATE" /><br /><br />

                </form>

            <?php } ?>

            <?php /*

            <div>
                <form action="updateCatColor.php" method="post">
                    <input type="hidden" name="catID" value="<?= $catID ?>" />
                    <input type="hidden" name="parentID" value="<?= $parentID ?>" />
                    <input type="hidden" name="parentParentID" value="<?= $parentParentID ?>" />
                    <input type="hidden" name="source" value="manage_images.php" />
                    <span class="head">BACKGROUND COLOR:</span><br />
                    <input type="text" id="colorpicker" name="bgColor" value="<?= $theCat['bgColor'] ?>"><br /><br />
                    <input type="submit" id="btn" value="UPDATE COLOR" /><br /><br />
                </form>
            </div>

            */ ?>

            <div class="uploadHolder">

                <div class="upload_error"></div>

                <div class="upload_options">

                    <div class="drag">
                        <svg xmlns="http://www.w3.org/2000/svg" width="21.78" height="17.517" viewBox="0 0 21.78 17.517">
                            <g id="Icon_arctic-folder-upload" data-name="Icon arctic-folder-upload" transform="translate(1.844 1.568)">
                                <path id="Path_13" data-name="Path 13" d="M3.375,7.973a1.6,1.6,0,0,1,1.6-1.6H9.619a2.131,2.131,0,0,1,1.239.4l2.618,1.87a2.131,2.131,0,0,0,1.239.4h7.842a1.6,1.6,0,0,1,1.6,1.6V21.294a1.6,1.6,0,0,1-1.6,1.6H4.973a1.6,1.6,0,0,1-1.6-1.6Z" transform="translate(-4.719 -7.443)" fill="none" stroke="#3f4f6a" stroke-linecap="round" stroke-linejoin="round" stroke-width="1" />
                                <path id="Path_14" data-name="Path 14" d="M16.18,20.993V14.625m2.805,2.805L16.18,14.625,13.375,17.43" transform="translate(25.227 26.155) rotate(180)" fill="none" stroke="#3f4f6a" stroke-linecap="round" stroke-linejoin="round" stroke-width="1" />
                            </g>
                        </svg>

                        <span class="label">
                            To upload more media drop item(s) below
                        </span>
                    </div>

                    <div class="browse">
                        <span class="label">Other ways to add media</span>
                        <div class="browse">
                            <input id="files-upload" type="file" multiple style="display: none;">
                            <button class="style_btn" id="fileUploadTrigger">
                                <svg xmlns="http://www.w3.org/2000/svg" width="15.02" height="16.825" viewBox="0 0 15.02 16.825">
                                    <g id="Group_91" data-name="Group 91" transform="translate(1 1)">
                                        <path id="Icon_akar-arrow-up" data-name="Icon akar-arrow-up" d="M12.1,16.5V6M7.5,10.6,12.1,6l4.6,4.6" transform="translate(-5.202 -1.679)" fill="none" stroke="#fff" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" />
                                        <line id="Line_4" data-name="Line 4" x2="13.02" fill="none" stroke="#fff" stroke-linecap="round" stroke-width="2" />
                                    </g>
                                </svg>

                                <span class="label">Browse</span>
                            </button>
                        </div>
                        <div class="media_library_btn">
                            <a href="#" class="open_media" data-type="category" data-id="<?= $catID ?>" data-source="manage_loose.php?category=<?= $catID ?>&parentID=<?= $parentID ?>">
                                <button class="style_btn secondary">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 14 13">
                                        <g id="Group_144" data-name="Group 144" transform="translate(0.237 -0.079)">
                                            <g id="Group_137" data-name="Group 137" transform="translate(0 0)">
                                                <g id="Rectangle_146" data-name="Rectangle 146" transform="translate(-0.237 0.079)" fill="#fff" stroke="#3f4f6a" stroke-width="2">
                                                    <rect width="14" height="13" rx="3" stroke="none" />
                                                    <rect x="1" y="1" width="12" height="11" rx="2" fill="none" />
                                                </g>
                                            </g>
                                            <path id="Polygon_3" data-name="Polygon 3" d="M1.652,1.357a1,1,0,0,1,1.7,0l.7,1.113A1,1,0,0,1,3.2,4H1.8A1,1,0,0,1,.956,2.47Z" transform="translate(8.763 4.079) rotate(90)" fill="#3f4f6a" />
                                        </g>
                                    </svg>

                                    <span class="label">Media Library</span>
                                </button>
                            </a>
                        </div>

                    </div>



                </div>



                <ul id="file-list">
                    <li class="no-items">(no files uploaded yet)</li>
                </ul>
            </div>

            <?php /*

            <div class="uploadHolder" style="width: 35%; float: right; <?php if ($theParent['pageType'] === "artist") { ?>display: block;<?php } else { ?>display: none;<?php } ?>">
                <h3>CHOOSE CATEGORIES(S)</h3><br /><br />

                <form name="catTags" method="post" action="">
                    <input type="hidden" name="catID" id="catID" value="<?= $catID ?>">

                    <?php

                    // need to have unique fields for each type of tag
                    $catTags = $theCat['tags'];
                    $tagArray = explode(",", $catTags);

                    for ($count = 1; $tag = mysqli_fetch_array($tags); ++$count) {

                    ?>

                        <?php if (in_array($tag['slug'], $tagArray)) { ?>
                            <input type="checkbox" name="tag" class="tag" value="<?= $tag['id'] ?>" checked> <?= $tag['tag'] ?>&nbsp;&nbsp;
                        <?php } else { ?>
                            <input type="checkbox" name="tag" class="tag" value="<?= $tag['id'] ?>"> <?= $tag['tag'] ?>&nbsp;&nbsp;
                        <?php } ?>

                    <?php } ?>

                    <br /><br /><button id="btn" class="updateCatTags" style="margin-bottom: 15px; float: left; margin-right: 15px;">Update Categories</button>

                </form>

            </div>

            <?php if (getOption("textEntries") === "yes") { ?>
                <div style="width: 25%; float: right;">
                    <b>ADD NEW TEXT ENTRY</b><br /><br />

                    <form name="newEntry">
                        <input type="text" name="title" id="title" value="title:" onfocus="if (this.value == 'title:') this.value='';" onblur="if (this.value == '') this.value='title:';"><br /><br />

                        <input type="text" name="caption" id="caption" value="caption:" onfocus="if (this.value == 'caption:') this.value='';" onblur="if (this.value == '') this.value='caption:';"><br /><br />

                        <button id="btn" class="addEntry" style="margin-bottom: 15px; float: left; margin-right: 15px;">Add Entry</button>

                    </form>
                </div>
            <?php } ?>

            */ ?>


            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td align="left" valign="top">

                        <form name="content" action="updateImages.php" method="post">
                            <input type="hidden" id="category" name="category" value="<?= $catID ?>">
                            <input type="hidden" id="parentID" name="parentID" value="<?= $parentID ?>">
                            <input type="hidden" id="parentParentID" name="parentParentID" value="<?= $parentParentID ?>">

                            <div id="looseGrid" class="looseGrid">



                                <div class="toolbar" style="display: none;">

                                    <div class="inner">

                                        <button id="btn" class="update">SAVE CHANGES</button>

                                        <ul class="views">
                                            <li><span class="quickLink" style="cursor: pointer;">QUICK VIEW</span></li>
                                            <li><span class="detailLink" style="cursor: pointer; opacity: .5;">DETAIL VIEW</span></li>
                                        </ul>

                                        <ul class="tools">
                                            <li class="divider"></li>
                                            <li><input type="checkbox" name="selectAll" id="checkAll" />SELECT ALL</li>
                                            <li class="divider"></li>
                                            <li class="counter"><a href="#" class="deleteAll">X DELETE SELECTED (<span class="count">0</span>)</a></li>
                                            <li class="divider"></li>
                                            <li>
                                                <span class="label">COPY TO:</span>
                                                <select name="copyCatAll[]" class="copyCatAll">
                                                    <option value="" selected>--select--</option>

                                                    <?= $catOptionStr ?>

                                                </select><br />
                                            </li>
                                            <li class="divider"></li>
                                            <li>
                                                <span class="label">MOVE TO:</span>
                                                <select name="moveCatAll[]" class="moveCatAll">
                                                    <option value="<?= $catID ?>" selected>--select--</option>

                                                    <?= $catOptionStr ?>

                                                </select><br />
                                            </li>
                                        </ul>

                                    </div>

                                </div>

                                <div id="alertDivPic" style="float: left;">

                                </div>

                                <div style="clear: both;"></div>

                                <div id="drop-area">
                                    <ul class="canvas">

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

                                        ?>

                                            <li class="item" data-picid="<?= $pic['id'] ?>" data-catid="<?= $catID ?>" data-x="<?= $pic['catLeft'] ?>" data-y="<?= $pic['catTop'] ?>" data-aspect-ratio="<?= $pic['aspectRatio'] ?>" data-filename="<?= $pic['img'] ?>" style="top: <?= $pic['catTop'] ?>%; left: <?= $pic['catLeft'] ?>%; width: <?= $pic['catWidth'] ?>%; height: auto; aspect-ratio: <?= $pic['aspectRatio'] ?>; z-index: <?= $pic['catLayer'] ? $pic['catLayer'] : 1 ?>;">

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

                                                <button class="resize-handle bottom-right"></button>

                                                <?php if ($pic['img'] != "no-image.jpg") { ?>

                                                    <img src="<?= $theImg ?>" border="0"><br />

                                                <?php } else { ?>
                                                    <div style="width: 150px; height: 150px; position: absolute; top: 0px; left: 0px; text-align: center; border: 1px solid #ccc;">
                                                        <div style="padding-top: 44%;"><?= $pic['title'] ?></div>
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

                                </div>

                            </div>

                            <div id="clear" style="height: 10px;"></div>

                        </form>

                        <!--
					<?php if (isset($_GET['show']) and $_GET['show'] != "all") { ?>
						<br /><br /><a href="#" id="manage_images.php?category=<?= $catID ?>&show=all" class="ajax" onclick="return false">View All</a><br /><br />
					<?php } ?>
					-->

                    </td>
                </tr>
            </table>

        </div>

    </div>

    <?php include('includes/overlay.php'); ?>

</body>

</html>

<script type="text/javascript">
    /* 2025 ADDITION OF LOOSE GRID FUNCTIONS */

    // custom browse button to open file upload dialog
    let fileUploadTriger = document.getElementById('fileUploadTrigger');
    if (typeof fileUploadTriger !== 'undefined' && fileUploadTriger !== null) {
        fileUploadTriger.addEventListener('click', function(e) {
            e.preventDefault();
            document.getElementById('files-upload').click();
        });
    }

    let draggables = [];
    let grid = document.querySelector("#looseGrid ul.canvas");
    let items = grid.querySelectorAll(".item");
    let isResizing = false;
    let startX, startY, startWidth, startHeight, aspectRatio;
    let resizeBtns = grid.querySelectorAll(".item .resize-handle.bottom-right");
    let layerBtns = grid.querySelectorAll(".item button.layer_update");
    let selectBoxes = grid.querySelectorAll(".item input[name='select']");
    let checkAllBtn = document.getElementById('checkAll');
    let deleteAllBtn = document.querySelector('.deleteAll');
    let saveBtn = document.getElementById("save_changes");
    let viewsBoxes = document.querySelectorAll(".media_tools .views input[type='checkbox'");

    function killDraggable() {
        draggables.forEach(d => d.kill());
    }

    // handle viewsBoxes toggle
    viewsBoxes.forEach(viewBox => {
        viewBox.addEventListener("click", function() {

            // uncheck all other view boxes
            viewsBoxes.forEach(otherBox => {
                if (otherBox !== viewBox) {
                    otherBox.checked = false;
                }
            });

            // get the value of the checked box
            let checkedValue = viewBox.value;

            if (checkedValue === "detail") {
                grid.classList.add("detail_view");
                killDraggable();
            } else {
                grid.classList.remove("detail_view");
                initDraggable();
            }


        });
    });

    // main save changes button triggers the hidden update button.  Should update this at some point
    saveBtn.addEventListener("click", function(e) {
        e.preventDefault();
        document.querySelector('.toolbar #btn').click();
    });

    // handle copy and move functions
    document.querySelector('.tools_wrap .copyCatAll').addEventListener('change', function() {
        const copyid = this.value;

        selectBoxes.forEach(checkbox => {
            if (checkbox.checked) {
                const picid = checkbox.dataset.id;
                document.querySelector(".item[data-picid='" + picid + "'] .copyCat").value = copyid;
            }
        });

    });

    document.querySelector('.tools_wrap .moveCatAll').addEventListener('change', function() {
        const moveid = this.value;

        selectBoxes.forEach(checkbox => {
            if (checkbox.checked) {
                const picid = checkbox.dataset.id;
                document.querySelector(".item[data-picid='" + picid + "'] .moveCat").value = moveid;
            }
        });
    });

    // handle delete all Btn
    deleteAllBtn.addEventListener("click", function(e) {

        e.preventDefault();

        selectBoxes.forEach(checkbox => {
            const picid = checkbox.dataset.id;
            const deleteCheck = document.querySelector(`.deleteCheck[data-id="${picid}"]`);

            if (checkbox.checked) {
                deleteCheck.checked = true;
            } else {
                deleteCheck.checked = false;
            }

            console.log(deleteCheck);
        });

        document.querySelector('.toolbar #btn').click();

    });

    // handle select/deselect all items

    checkAllBtn.addEventListener("click", function() {

        let isChecked = this.checked;
        selectBoxes.forEach(selectBox => {
            selectBox.checked = isChecked;
            let item = selectBox.closest('.item');
            if (isChecked) {
                item.classList.add('selected');
            } else {
                item.classList.remove('selected');
            }
        });

        let count = document.querySelectorAll(".item input[name='select']:checked").length;
        document.querySelector(".count").textContent = count;

        if (count > 0) {
            document.querySelector(".toolbar .counter").classList.add("on");
        } else {
            document.querySelector(".toolbar .counter").classList.remove("on");
        }

    });


    // handle select of individual items
    selectBoxes.forEach(selectBox => {
        selectBox.addEventListener("change", function() {
            let count = document.querySelectorAll(".item input[name='select']:checked").length;
            document.querySelector(".count").textContent = count;

            let item = selectBox.closest('.item');
            if (this.checked) {
                item.classList.add('selected');
            } else {
                item.classList.remove('selected');
            }
        });
    });

    layerBtns.forEach(layerBtn => {
        layerBtn.addEventListener("click", function(e) {
            e.preventDefault();
            let item = this.closest(".item");
            let direction = this.getAttribute("data-direction");

            if (direction === "forward") {
                item.style.zIndex++;
            } else {
                item.style.zIndex = Math.max(0, item.style.zIndex - 1);
            }

            savePosition(item);
        });
    });

    resizeBtns.forEach(handle => {
        handle.addEventListener('mousedown', initResize, false);
        handle.addEventListener('touchstart', initResize, false);
        handle.addEventListener('click', function(e) {
            e.preventDefault();
        }, false);
    });

    function initResize(e) {
        e.preventDefault();
        const item = this.closest(".item");
        isResizing = true;
        startX = e.clientX;
        startY = e.clientY;
        startWidth = item.offsetWidth;
        startHeight = item.offsetHeight;
        aspectRatio = item.getAttribute("data-aspect-ratio");

        item.classList.add("resizing");

        document.addEventListener('mousemove', resizeItem, false);
        document.addEventListener('mouseup', stopResize, false);

        function resizeItem(e) {

            const newWidth = startWidth + (e.clientX - startX);
            const newWidthPercent = (newWidth / grid.offsetWidth) * 100;
            item.style.width = `${newWidthPercent}%`;

        }

        function stopResize() {
            document.removeEventListener('mousemove', resizeItem, false);
            document.removeEventListener('mouseup', stopResize, false);
            isResizing = false;
            item.classList.remove("resizing");
            savePosition(item);
        }
    }

    async function savePosition(item) {

        const picid = item.getAttribute("data-picid");
        const catid = item.getAttribute("data-catid");
        const containerRect = grid.getBoundingClientRect();
        const rect = item.getBoundingClientRect();
        const newWidth = gsap.getProperty(item, "width");
        const layer = gsap.getProperty(item, "zIndex");
        const xPercent = ((rect.left - containerRect.left) / containerRect.width) * 100;
        const translateY = gsap.getProperty(item, "y"); // Get the Y translation in pixels
        let topY = gsap.getProperty(item, "top", "px"); // Get the top position in pixels
        topY = parseFloat(topY.replace("px", ""));
        const newTop = topY + translateY;

        const topPercent = (newTop / containerRect.width) * 100; // Convert top to percentage relative to container width

        item.setAttribute("data-x", xPercent);
        item.setAttribute("data-y", topPercent);

        fetch('saveItemProperties.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    picid: picid,
                    catid: catid,
                    left: xPercent,
                    top: topPercent,
                    width: newWidth,
                    layer: layer
                })
            })
            .then(response => response.json())
            .then(data => {
                console.log(data.message); // Will show the received values
                updatePositions();
            })
            .catch(error => {
                console.error('Error:', error);
            });

    }

    function updatePositions() {
        const {
            width,
            height
        } = grid.getBoundingClientRect();

        items.forEach(item => {
            let percentX = parseFloat(item.dataset.x);
            let percentY = parseFloat(item.dataset.y);

            // apply the new positions as pixels
            item.style.left = `${(percentX / 100) * width}px`;
            item.style.top = `${(percentY / 100) * width}px`; // Base top on width

            // clear out transforms from draggable
            gsap.set(item, {
                x: 0,
                y: 0,
                z: 0
            });
        });

        updateContainerHeight();
    }

    const resizeObserver = new ResizeObserver(updatePositions);
    resizeObserver.observe(grid);

    function updateContainerHeight() {
        requestAnimationFrame(() => {
            let maxBottom = 0;

            items.forEach(item => {

                let topPos = gsap.getProperty(item, "top"); // Get the top position in pixels
                itemBottom = topPos + item.offsetHeight; // Distance from top + height
                maxBottom = Math.max(maxBottom, itemBottom);
            });

            grid.style.height = `${Math.ceil(maxBottom) + 300}px`; // Round up & add buffer for admin, on front-end this should be tight to the grid
            grid.style.minHeight = "auto";
        });
    }

    function initDraggable() {
        draggables.forEach(d => d.kill()); // Clear previous instances
        draggables = Draggable.create(items, {
            type: "x,y",
            inertia: true,
            zIndexBoost: false,
            dragClickables: false,
            onDragEnd: function() {
                let item = this.target;
                savePosition(item);
            }
        });

    }

    // Initial Draggable on page load
    initDraggable();


    tinymce.init({
        license_key: 'gpl',
        promotion: false,
        mode: "specific_textareas",
        selector: ".mceEditor",
        images_upload_url: 'postAcceptor.php',
        plugins: "image link media lists code table",
        toolbar: "styles bold italic forecolor alignleft aligncenter alignright alignjustify bullist numlist outdent indent link image media code",
        preview_styles: false,
        style_formats: [{
                title: 'Heading 1',
                block: 'h1'
            },
            {
                title: 'Heading 2',
                block: 'h2'
            },
            {
                title: 'Heading 3',
                block: 'h3'
            },
            {
                title: 'Paragraph',
                block: 'p'
            },
        ],
        image_class_list: [{
                title: 'None',
                value: ''
            },
            {
                title: 'Half Width',
                value: 'half'
            },
            {
                title: 'Full Width',
                value: 'full'
            }
        ],
        link_class_list: [{
                title: 'None',
                value: ''
            },
            {
                title: 'Button',
                value: 'btn'
            }
        ],
        content_css: '/css/admin.css',
        relative_urls: false,
    });

    // HTML 5 FILE UPLOAD
    (function() {

        let errors = false;

        var filesUpload = document.getElementById("files-upload"),
            dropArea = document.getElementById("drop-area"),
            uploadError = document.querySelector('.upload_error'),
            fileList = document.getElementById("file-list");

        // Allowed file types 
        var allowedTypes = ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'];

        // Max file size in bytes (3MB = 3145728 bytes) 
        var maxFileSize = 3145728;

        // Max image dimensions
        var maxDimension = 3000;

        function validateFile(file) {
            // Check file type
            if (!allowedTypes.includes(file.type)) {
                uploadError.innerHTML = "<span>Invalid file type. Only JPG, JPEG, PNG and GIF files are allowed.</span>";
                uploadError.classList.add("show");
                errors = true;
                return false;
            }

            // Check file size
            if (file.size > maxFileSize) {
                uploadError.innerHTML = "<span>File is too large. Maximum size allowed is 3MB.</span>";
                uploadError.classList.add("show");
                errors = true;
                return false;
            }

            // Check image dimensions and return width/height
            return new Promise((resolve) => {
                const img = new Image();
                img.onload = function() {
                    if (this.width > maxDimension || this.height > maxDimension) {
                        uploadError.innerHTML += "<span>Image dimensions for " + file.name + " cannot exceed " + maxDimension + "x" + maxDimension + " pixels</span><br>";
                        uploadError.classList.add("show");
                        errors = true;
                        resolve({
                            valid: false,
                            width: this.width,
                            height: this.height
                        });
                    } else {
                        resolve({
                            valid: true,
                            width: this.width,
                            height: this.height
                        });
                    }
                };
                img.src = URL.createObjectURL(file);
            });
        }

        async function uploadFile(file, currentfile, totalfiles, x, y) {

            // Validate file before proceeding
            const isValid = await validateFile(file);

            var li = document.createElement("li"),
                div = document.createElement("div"),
                img,
                progressBarContainer = document.createElement("div"),
                progressBar = document.createElement("div"),
                reader,
                xhr,
                fileInfo;

            if (!isValid.valid) {
                li.classList.add("error");
            }

            li.appendChild(div);

            progressBarContainer.className = "progress-bar-container";
            progressBar.className = "progress-bar";
            progressBarContainer.appendChild(progressBar);
            li.appendChild(progressBarContainer);

            if (typeof FileReader !== "undefined") {
                img = document.createElement("img");
                li.appendChild(img);
                reader = new FileReader();
                reader.onload = (function(theImg) {
                    return function(evt) {
                        theImg.src = evt.target.result;
                    };
                }(img));
                reader.readAsDataURL(file);
            }

            xhr = new XMLHttpRequest();

            xhr.upload.addEventListener("progress", function(evt) {
                if (evt.lengthComputable) {
                    progressBar.style.width = (evt.loaded / evt.total) * 100 + "%";
                }
            }, false);

            xhr.addEventListener("load", function() {
                progressBarContainer.className += " uploaded";
                progressBar.innerHTML = "Uploaded!";

                var doneItems = $('.uploaded').length;

                if (doneItems == totalfiles) {

                    var thePage = "manage_loose.php?category=<?= $catID ?>&parentID=<?= $parentID ?>&parentParentID=<?= $parentParentID ?>";
                    if (!errors) {
                        window.location.href = thePage;
                    }
                }
            }, false);

            // let's only post files that pass validation, still want to display them in output to show error
            if (isValid.valid) {

                xhr.open("post", "upload_file.php", true);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.setRequestHeader("X-File-Name", file.name);
                xhr.setRequestHeader("X-File-Size", file.size);
                xhr.setRequestHeader("X-File-Type", file.type);
                xhr.setRequestHeader("X-File-Cat", <?= $catID ?>);
                xhr.setRequestHeader("X-File-Count", currentfile);
                xhr.setRequestHeader("X-File-X", x);
                xhr.setRequestHeader("X-File-Y", y);
                xhr.setRequestHeader("X-File-Picid", '');
                xhr.setRequestHeader("X-File-Moduleid", '');

                xhr.send(file);

            }

            fileInfo = "<div><strong>Size:</strong> " + parseInt(file.size / 1024, 10) + " kb</div>";
            fileInfo += "<div><strong>Type:</strong> " + file.type + "</div>";
            if (!isValid) {
                fileInfo += "<span class='error' style='color: red;'>Error!</span>";
            }
            div.innerHTML = fileInfo;

            fileList.appendChild(li);
        }

        async function traverseFiles(files, x, y) {
            if (typeof files !== "undefined") {
                for (var i = 0, l = files.length; i < l; i++) {
                    await uploadFile(files[i], i, l, x, y);
                }
            } else {
                fileList.innerHTML = "No support for the File API in this web browser";
            }
        }

        filesUpload.addEventListener("change", function() {
            errors = false;
            traverseFiles(this.files, 0, 0);
        }, false);

        dropArea.addEventListener("dragleave", function(evt) {
            var target = evt.target;
            if (target && target === dropArea) {
                this.className = "";
            }
            dropArea.classList.remove("over");
            evt.preventDefault();
            evt.stopPropagation();
        }, false);

        dropArea.addEventListener("dragenter", function(evt) {
            this.className = "over";
            evt.preventDefault();
            evt.stopPropagation();
        }, false);

        dropArea.addEventListener("dragover", function(evt) {
            evt.preventDefault();
            evt.stopPropagation();
            dropArea.classList.add("over");
        }, false);

        dropArea.addEventListener("drop", function(evt) {
            errors = false;
            dropArea.classList.remove("over");

            // get the intial drop coordinates and pass to upload function
            const dropAreaRect = dropArea.getBoundingClientRect();
            const x = (evt.clientX - 40) - dropAreaRect.left;
            const y = (evt.clientY - 90) - dropAreaRect.top;

            const xPercent = (x / dropAreaRect.width) * 100;
            const yPercent = (y / dropAreaRect.width) * 100;

            traverseFiles(evt.dataTransfer.files, xPercent, yPercent);
            this.className = "";
            evt.preventDefault();
            evt.stopPropagation();
        }, false);
    })();

    // HANDLE FORM SUBMISSION
    $(".update").click(function(e) {

        e.preventDefault();

        var category = $("input#category").val();
        var parentID = $("input#parentID").val();
        var parentParentID = $("input#parentParentID").val();

        var picIDArray = [];
        $('.picID').each(function() {
            var picID = $(this).val();
            picIDArray.push(picID);
        });

        var imgArray = [];
        $('.img').each(function() {
            var img = $(this).val();
            imgArray.push(img);
        });

        var titleArray = [];
        $('.titleField').each(function() {
            var title = $(this).val();
            titleArray.push(title);
        });

        var captionsArray = [];
        $('.captions').each(function() {
            var captions = $(this).val();
            captionsArray.push(captions);
        });

        var picURLArray = [];
        $('.picURL').each(function() {
            var picURL = $(this).val();
            picURLArray.push(picURL);
        });

        var shortDescArray = [];
        $('.shortDesc').each(function() {
            var shortDesc = $(this).val();
            shortDescArray.push(shortDesc);
        });

        var priceArray = [];
        $('.price').each(function() {
            var price = $(this).val();
            priceArray.push(price);
        });

        var wpriceArray = [];
        $('.wPrice').each(function() {
            var wprice = $(this).val();
            wpriceArray.push(wprice);
        });

        var moveCatArray = [];
        $('.moveCat').each(function() {
            var moveCat = $(this).val();
            moveCatArray.push(moveCat);
        });

        var copyCatArray = [];
        $('.copyCat').each(function() {
            var copyCat = $(this).val();
            copyCatArray.push(copyCat);
        });

        var iconArray = [];
        $('.icon').each(function() {
            var icon = $(this).val();
            iconArray.push(icon);
        });

        var artistArray = [];
        $('.artist').each(function() {
            var artist = $(this).val();
            artistArray.push(artist);
        });

        var showArray = [];
        $('.show').each(function() {
            var show = $(this).val();
            showArray.push(show);
        });

        var deleteArray = [];
        $('.deleteCheck').each(function() {
            if ($(this).is(':checked')) {
                var deleteThis = "yes";
            } else {
                var deleteThis = "no";
            }
            deleteArray.push(deleteThis);
        });

        var data = {
            "source": "manage_loose.php",
            "category": category,
            "parentID": parentID,
            "parentParentID": parentParentID,
            "picID": picIDArray,
            "img": imgArray,
            "title": titleArray,
            "captions": captionsArray,
            "picURL": picURLArray,
            "shortDesc": shortDescArray,
            "price": priceArray,
            "wprice": wpriceArray,
            "moveCat": moveCatArray,
            "copyCat": copyCatArray,
            "artists": artistArray,
            "show": showArray,
            "deleteArray": deleteArray
        };
        var data_encoded = JSON.stringify(data);

        $.ajax({
            type: "POST",
            url: "updateImages.php",
            data: {
                "myContent": data_encoded
            },
            success: function(response) {
                window.location.href = "manage_loose.php?category=<?= $catID ?>&parentID=<?= $parentID ?>&parentParentID=<?= $parentParentID ?>";
            },
            error: function() {
                alert('failure');
            }
        });
        return false;

    });

    // update category tags

    $(".updateCatTags").click(function(e) {

        e.preventDefault();

        var catID = $("input#catID").val();

        var tagArray = [];
        $('.tag').each(function() {
            if ($(this).is(':checked')) {
                var theTag = $(this).val();
                tagArray.push(theTag);
            }
        });

        var data = {
            "catID": catID,
            "tags": tagArray
        };
        var data_encoded = JSON.stringify(data);

        $.ajax({
            type: "POST",
            url: "updateCatTags.php",
            data: {
                "myContent": data_encoded
            },
            success: function(response) {
                var thePage = "manage_images.php?category=<?= $catID ?>&parentID=<?= $parentID ?>&parentParentID=<?= $parentParentID ?>";
                window.location.href = thePage;
            },
            error: function() {
                alert('failure');
            }
        });
        return false;

    });

    /* 2017 TOOLBAR ADDITIONS */

    $(".selectCheck").click(function() {

        var total = $('input[name="selectCheck"]:checked').length;
        $('.toolbar .count').html(total);

        if (total > 0) {
            $('.toolbar .counter').addClass('on');
        } else {
            $('.toolbar .counter').removeClass('on');
        }

    });


    // HANDLE TEXT ENTRY
    $(".addEntry").click(function() {

        var catID = $("input#catID").val();
        var parentID = $("input#parentID").val();
        var title = $("input#title").val();
        var caption = $("input#caption").val();

        var data = {
            "catID": catID,
            "parentID": parentID,
            "title": title,
            "caption": caption
        };
        var data_encoded = JSON.stringify(data);

        $.ajax({
            type: "POST",
            url: "addTextEntry.php",
            data: {
                "myContent": data_encoded
            },
            success: function(response) {

                window.location.href = response;

            },
            error: function() {
                alert('failure');
            }
        });
        return false;

    });

    $(".detailLink").click(function() {

        $(this).fadeTo(200, 1);
        $('.quickLink').fadeTo(200, .5);

        $(".picInfo").fadeTo(200, 1);
        $(".picCover").fadeTo(200, .5);

        $('#managePics ul.sortme').unbind().removeData();
        $('#managePics ul.sortme li').removeClass('selected');

        killDraggable();
        document.body.classList.add("detail_view");

    });

    $(".quickLink").click(function() {

        $(this).fadeTo(200, 1);
        $('.detailLink').fadeTo(200, .5);

        $(".picInfo").fadeOut(200);
        $(".picCover").fadeOut(200);

        addMultiSort();

        document.body.classList.remove("detail_view");
        initDraggable();

    });

    /*
    $(".picHolder").hoverIntent(
      function () {
    	$(this).children(".picInfo").fadeTo(200, 1);
    	$(this).children(".picCover").fadeTo(200, .5);
      },
      function () {
    	$(this).children(".picInfo").fadeTo(200, 0);
    	$(this).children(".picCover").fadeTo(200, 0);
      }
    );
    */

    function addMultiSort() {

        $('#managePics ul.sortme').multisortable({
            items: "li",
            selectedClass: "selected",
            helper: "original",
            opacity: 0.6,
            click: function(e) {
                console.log("I'm selected.");
            },
            stop: function(e) {
                updatePostOrder();
            }
        });

    }

    addMultiSort();

    function updatePostOrder() {

        var order = $('#managePics ul.sortme').sortable("serialize") + '&action=updateRecordsListings&catID=<?= $catID ?>';
        $.post("updateImgOrder.php", order, function(theResponse) {

        });

        setTimeout(function() {
            $("#managePics ul.sortme li").removeClass('selected');
        }, 500);
    }

    /*

    $(function() {
    	$("#managePics ul.sortme").sortable({ opacity: 0.6, cursor: 'move', update: function() {
    		var order = $(this).sortable("serialize") + '&action=updateRecordsListings&catID=<?= $catID ?>';
    		$.post("updateImgOrder.php", order, function(theResponse){

    		});
    	}
    	});
    });

    */

    $(document).ready(function() {

        /* JS OVERRIDES TO SHOW CORRECT DEFAULT MENU */

        $("#contentTopMenu").css('display', 'block');
        $("#catList").css('display', 'block');

        $(".uploaderLink").click(function() {

            $(".uploadHolder").slideToggle();

        });

        $("A.ajax").click(function() {

            var thePage = $(this).attr("id");

            loadPage(thePage);

        });

        $(".delete").colorbox({
            width: "402px",
            height: "227px",
            iframe: true,
            opacity: ".95"
        });

        $("#colorpicker").spectrum({
            color: '<?= $theCat['bgColor'] ?>',
            showInput: true,
            showAlpha: false,
            preferredFormat: "name"
        });

    });
</script>