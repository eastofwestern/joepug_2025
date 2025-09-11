<?php

session_start();
include 'includes/secure.php';
include '../includes/connect.php';
include 'includes/functions.php';

$catID = $_GET['category'];
$theCat = catDetails($catID);
$pageName = $theCat['name'];
if (isset($_GET['parentID']) && $_GET['parentID'] > 0) {
    $parentID = $_GET['parentID'];
    $pageName = $theCat['subName'];
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
                        <li class="pageOn"><?= $pageName ?></li>
                    </ul>
                </div>

                <div class="buttons">
                    <div class="button_group">
                        <button id="view_desktop" class="style_icon active"><svg xmlns="http://www.w3.org/2000/svg" width="27" height="22" viewBox="0 0 27 22">
                                <path id="Icon_akar-desktop-device" data-name="Icon akar-desktop-device" d="M3,8.5A2.5,2.5,0,0,1,5.5,6h20A2.5,2.5,0,0,1,28,8.5V19.75a2.5,2.5,0,0,1-2.5,2.5H5.5A2.5,2.5,0,0,1,3,19.75ZM10.5,26h10" transform="translate(-2 -5)" fill="none" stroke="#3f4f6a" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" />
                            </svg>
                        </button>
                        <button id="view_mobile" class="style_icon"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="22" viewBox="0 0 14 22">
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

                        <?php /*
                        <div class="text_entry_btn">
                            <button class="style_btn secondary" id="addTextEntry">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 14 13">
                                    <g transform="translate(1 1)">
                                        <line x1="9" transform="translate(1.5 3)" stroke="#3f4f6a" stroke-width="1" />
                                        <line x1="9" transform="translate(1.5 5)" stroke="#3f4f6a" stroke-width="1" />
                                        <line x1="9" transform="translate(1.5 7)" stroke="#3f4f6a" stroke-width="1" />
                                        <line x1="4.5" transform="translate(1.5 9)" stroke="#3f4f6a" stroke-width="1" />
                                    </g>
                                </svg>

                                <span class="label">Text Entry</span>
                            </button>
                        </div>
                        */ ?>

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


            */ ?>


            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td align="left" valign="top">

                        <form name="content" action="updateImages.php" method="post">
                            <input type="hidden" id="category" name="category" value="<?= $catID ?>">
                            <input type="hidden" id="parentID" name="parentID" value="<?= $parentID ?>">
                            <input type="hidden" id="parentParentID" name="parentParentID" value="<?= $parentParentID ?>">

                            <div id="looseGrid" class="looseGrid" data-catid="<?= $catID ?>" data-parentid="<?= $parentID ?>" data-view="desktop">

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

    let looseGrid = document.querySelector("#looseGrid");
    let dropArea = document.querySelector("#drop-area");
    let desktopViewBtn = document.getElementById("view_desktop");
    let mobileViewBtn = document.getElementById("view_mobile");

    // fetch the initial canvas content
    const catid = looseGrid.getAttribute("data-catid");

    fetch('getCanvas.php?catid=' + catid + "&view=desktop")
        .then(response => response.text()) // Change to text() instead of json()
        .then(html => {
            dropArea.innerHTML = html; // Insert the returned HTML directly
            looseGridInit();
        })
        .catch(error => console.error('Error:', error));

    // custom browse button to open file upload dialog
    let fileUploadTriger = document.getElementById('fileUploadTrigger');
    if (typeof fileUploadTriger !== 'undefined' && fileUploadTriger !== null) {
        fileUploadTriger.addEventListener('click', function(e) {
            e.preventDefault();
            document.getElementById('files-upload').click();
        });
    }

    // custom button to add Text Entry to the canvas
    let addTextEntryBtn = document.getElementById('addTextEntry');
    if (typeof addTextEntryBtn !== 'undefined' && addTextEntryBtn !== null) {
        addTextEntryBtn.addEventListener('click', async function(e) {
            e.preventDefault();

            const catID = looseGrid.getAttribute("data-catid");
            const parentID = looseGrid.getAttribute("data-parentid");
            const title = "Text Entry";
            const caption = "";

            const data = {
                catID: catID,
                parentID: parentID,
                title: title,
                caption: caption,
            };

            // Create a FormData object
            const formData = new FormData();
            formData.append('myContent', JSON.stringify({
                catID: catID,
                parentID: parentID,
                title: title,
                caption: caption
            }));

            try {
                const response = await fetch('addTextEntry.php', {
                    method: 'POST',
                    body: formData,
                });

                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }

                console.log('Text entry added successfully');
                window.location.reload();

            } catch (error) {
                console.error('Error:', error);
                alert('Failed to add text entry');
            }
        });
    }

    // handle changing the canvas from desktop to mobile view
    mobileViewBtn.addEventListener("click", function() {

        // we need to get the updated mobile values from the database
        const catid = looseGrid.getAttribute("data-catid");

        fetch('getCanvas.php?catid=' + catid + "&view=mobile")
            .then(response => response.text()) // Change to text() instead of json()
            .then(html => {
                dropArea.innerHTML = html; // Insert the returned HTML directly
                looseGridInit(); // Reinitialize the grid functionality
            })
            .catch(error => console.error('Error:', error));

        desktopViewBtn.classList.remove("active");
        mobileViewBtn.classList.add("active");
        dropArea.style.width = '440px';
        dropArea.style.marginTop = '3rem';
        looseGrid.setAttribute("data-view", "mobile");
    });

    desktopViewBtn.addEventListener("click", function() {

        // we need to get the updated desktop values from the database
        const catid = looseGrid.getAttribute("data-catid");

        fetch('getCanvas.php?catid=' + catid + "&view=desktop")
            .then(response => response.text()) // Change to text() instead of json()
            .then(html => {
                dropArea.innerHTML = html; // Insert the returned HTML directly
                looseGridInit(); // Reinitialize the grid functionality
            })
            .catch(error => console.error('Error:', error));

        desktopViewBtn.classList.add("active");
        mobileViewBtn.classList.remove("active");
        dropArea.style.width = '100%';
        dropArea.style.marginTop = '0';
        looseGrid.setAttribute("data-view", "desktop");
    });

    function looseGridInit() {

        let draggables = [];
        let grid = document.querySelector("#looseGrid ul.canvas");
        let items = grid.querySelectorAll(".item");
        let isResizing = false;
        let startX, startY, startWidth, startHeight, aspectRatio;
        let resizeBtnBottomRight = grid.querySelectorAll(".item .resize-handle.bottom-right");
        let resizeBtnBottomLeft = grid.querySelectorAll(".item .resize-handle.bottom-left");
        let resizeBtnTopLeft = grid.querySelectorAll(".item .resize-handle.top-left");
        let resizeBtnTopRight = grid.querySelectorAll(".item .resize-handle.top-right");
        let resizeBtnRight = grid.querySelectorAll(".item .resize-handle.right");
        let resizeBtnLeft = grid.querySelectorAll(".item .resize-handle.left");
        let resizeBtns = grid.querySelectorAll(".item .resize-handle");
        let layerBtns = grid.querySelectorAll(".item button.layer_update");
        let selectBoxes = grid.querySelectorAll(".item input[name='select']");
        let checkAllBtn = document.getElementById('checkAll');
        let deleteAllBtn = document.querySelector('.deleteAll');
        let saveBtn = document.getElementById("save_changes");
        let viewsBoxes = document.querySelectorAll(".media_tools .views input[type='checkbox'");

        // Add variables for group selection
        let selectionBox = null;
        let startPoint = {
            x: 0,
            y: 0
        };
        let isSelecting = false;
        let selectedItems = [];

        // Create the selection box element
        function createSelectionBox() {
            if (!selectionBox) {
                selectionBox = document.createElement('div');
                selectionBox.className = 'selection-box';
                selectionBox.style.position = 'absolute';
                selectionBox.style.border = '1px dashed #3f4f6a';
                selectionBox.style.backgroundColor = 'rgba(63, 79, 106, 0.1)';
                selectionBox.style.pointerEvents = 'none';
                selectionBox.style.zIndex = '1000';
                selectionBox.style.display = 'none';
                grid.appendChild(selectionBox);
            }
            return selectionBox;
        }

        // Initialize marquee selection
        function initMarqueeSelection() {
            selectionBox = createSelectionBox();

            grid.addEventListener('mousedown', function(e) {
                // Only start selection if not clicking on an item or handle
                if (e.target === grid || e.target === dropArea) {
                    isSelecting = true;
                    startPoint.x = e.clientX;
                    startPoint.y = e.clientY;

                    // Initialize selection box position
                    const rect = grid.getBoundingClientRect();
                    selectionBox.style.left = (e.clientX - rect.left) + 'px';
                    selectionBox.style.top = (e.clientY - rect.top) + 'px';
                    selectionBox.style.width = '0px';
                    selectionBox.style.height = '0px';
                    selectionBox.style.display = 'block';

                    // Clear previous selection if not holding Shift
                    if (!e.shiftKey) {
                        clearSelection();
                    }
                }
            });

            document.addEventListener('mousemove', function(e) {
                if (!isSelecting) return;

                const rect = grid.getBoundingClientRect();
                const currentX = e.clientX;
                const currentY = e.clientY;

                // Calculate selection box dimensions
                const left = Math.min(startPoint.x, currentX) - rect.left;
                const top = Math.min(startPoint.y, currentY) - rect.top;
                const width = Math.abs(currentX - startPoint.x);
                const height = Math.abs(currentY - startPoint.y);

                // Update selection box
                selectionBox.style.left = left + 'px';
                selectionBox.style.top = top + 'px';
                selectionBox.style.width = width + 'px';
                selectionBox.style.height = height + 'px';

                // Check which items are within the selection box
                updateSelection(left, top, width, height);
            });

            document.addEventListener('mouseup', function() {
                if (isSelecting) {
                    isSelecting = false;
                    selectionBox.style.display = 'none';

                    // Initialize appropriate draggable based on selection
                    updateDraggableState();
                }
            });
        }

        function updateSelection(left, top, width, height) {
            items.forEach(item => {
                const itemRect = item.getBoundingClientRect();
                const gridRect = grid.getBoundingClientRect();

                // Calculate item position relative to grid
                const itemLeft = itemRect.left - gridRect.left;
                const itemTop = itemRect.top - gridRect.top;

                // Check if item intersects with selection box
                const intersects = (
                    itemLeft < left + width &&
                    itemLeft + itemRect.width > left &&
                    itemTop < top + height &&
                    itemTop + itemRect.height > top
                );

                // Update item selection state
                if (intersects) {
                    selectItem(item);
                }
            });
        }

        function selectItem(item) {
            if (!selectedItems.includes(item)) {
                selectedItems.push(item);
                item.classList.add('selected');
                const checkbox = item.querySelector('input[name="select"]');
                if (checkbox) checkbox.checked = true;
            }
        }

        function clearSelection() {
            selectedItems.forEach(item => {
                item.classList.remove('selected');
                const checkbox = item.querySelector('input[name="select"]');
                if (checkbox) checkbox.checked = false;
            });
            selectedItems = [];
            document.querySelector(".count").textContent = "0";
            checkAllBtn.checked = false;
        }

        // Unselect a specific item
        function unselectItem(item) {
            const index = selectedItems.indexOf(item);
            if (index > -1) {
                selectedItems.splice(index, 1);
                item.classList.remove('selected');
                const checkbox = item.querySelector('input[name="select"]');
                if (checkbox) checkbox.checked = false;
                document.querySelector(".count").textContent = selectedItems.length;
            }
        }

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
            if (isChecked) {
                // Select all items
                items.forEach(item => selectItem(item));
            } else {
                // Clear selection
                clearSelection();
            }

            let count = selectedItems.length;
            document.querySelector(".count").textContent = count;

            if (count > 0) {
                document.querySelector(".toolbar .counter").classList.add("on");
                initGroupDraggable();
            } else {
                document.querySelector(".toolbar .counter").classList.remove("on");
            }

        });

        // handle select of individual items
        selectBoxes.forEach(selectBox => {
            selectBox.addEventListener("change", function() {
                const item = selectBox.closest('.item');

                if (this.checked) {
                    selectItem(item);
                } else {
                    unselectItem(item);
                }

                // Update count display
                document.querySelector(".count").textContent = selectedItems.length;

                // if multiple items selected, enable group draggable
                if (selectedItems.length > 0) {
                    initGroupDraggable();
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

        resizeBtnBottomRight.forEach(handle => {
            handle.addEventListener('mousedown', initResizeBottomRight, false);
            handle.addEventListener('touchstart', initResizeBottomRight, false);
            handle.addEventListener('click', function(e) {
                e.preventDefault();
            }, false);
        });

        resizeBtnBottomLeft.forEach(handle => {
            handle.addEventListener('mousedown', initResizeBottomLeft, false);
            handle.addEventListener('touchstart', initResizeBottomLeft, false);
            handle.addEventListener('click', function(e) {
                e.preventDefault();
            }, false);
        });

        resizeBtnTopLeft.forEach(handle => {
            handle.addEventListener('mousedown', initResizeTopLeft, false);
            handle.addEventListener('touchstart', initResizeTopLeft, false);
            handle.addEventListener('click', function(e) {
                e.preventDefault();
            }, false);
        });

        resizeBtnTopRight.forEach(handle => {
            handle.addEventListener('mousedown', initResizeTopRight, false);
            handle.addEventListener('touchstart', initResizeTopRight, false);
            handle.addEventListener('click', function(e) {
                e.preventDefault();
            }, false);
        });

        resizeBtnRight.forEach(handle => {
            handle.addEventListener('mousedown', initResizeRight, false);
            handle.addEventListener('touchstart', initResizeRight, false);
            handle.addEventListener('click', function(e) {
                e.preventDefault();
            }, false);
        });

        resizeBtnLeft.forEach(handle => {
            handle.addEventListener('mousedown', initResizeLeft, false);
            handle.addEventListener('touchstart', initResizeLeft, false);
            handle.addEventListener('click', function(e) {
                e.preventDefault();
            }, false);
        });

        function initResizeBottomLeft(e) {
            e.preventDefault();
            const handle = this;
            const item = this.closest(".item");
            isResizing = true;
            startX = e.clientX;
            startY = e.clientY;
            startWidth = item.offsetWidth;
            startHeight = item.offsetHeight;
            aspectRatio = item.getAttribute("data-aspect-ratio");

            const currentLeft = parseFloat(item.style.left);
            const containerWidth = grid.offsetWidth;
            const itemWidth = item.offsetWidth;
            const rightPosition = (containerWidth - (currentLeft + itemWidth)) / containerWidth * 100;

            // Save the right position as a percentage
            item.style.right = `${rightPosition}%`;
            item.style.left = 'auto';

            item.classList.add("resizing");

            document.addEventListener('mousemove', resizeItem, false);
            document.addEventListener('mouseup', stopResize, false);

            function resizeItem(e) {

                // Calculate distance moved
                const deltaX = startX - e.clientX;

                // Calculate new width while maintaining right edge position
                const newWidth = startWidth + deltaX;
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

        function initResizeTopLeft(e) {
            e.preventDefault();
            const handle = this;
            const item = this.closest(".item");
            isResizing = true;
            startX = e.clientX;
            startY = e.clientY;
            startWidth = item.offsetWidth;
            startHeight = item.offsetHeight;
            aspectRatio = item.getAttribute("data-aspect-ratio");

            const currentLeft = parseFloat(item.style.left);
            const containerWidth = grid.offsetWidth;
            const itemWidth = item.offsetWidth;
            const rightPosition = (containerWidth - (currentLeft + itemWidth)) / containerWidth * 100;

            // Save the right position as a percentage
            item.style.right = `${rightPosition}%`;
            item.style.left = 'auto';

            // Save the bottom position as a percentage
            const currentTop = parseFloat(item.style.top);
            const containerHeight = grid.offsetHeight;
            const itemHeight = item.offsetHeight;
            const bottomPosition = (containerHeight - (currentTop + itemHeight)) / containerHeight * 100;

            item.style.bottom = `${bottomPosition}%`;
            item.style.top = 'auto';

            item.classList.add("resizing");

            document.addEventListener('mousemove', resizeItem, false);
            document.addEventListener('mouseup', stopResize, false);

            function resizeItem(e) {

                // Calculate distance moved
                const deltaX = startX - e.clientX;

                // Calculate new width while maintaining right edge position
                const newWidth = startWidth + deltaX;
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

        function initResizeTopRight(e) {
            e.preventDefault();
            const handle = this;
            const item = this.closest(".item");
            isResizing = true;
            startX = e.clientX;
            startY = e.clientY;
            startWidth = item.offsetWidth;
            startHeight = item.offsetHeight;
            aspectRatio = item.getAttribute("data-aspect-ratio");

            // Save the bottom position as a percentage
            const currentTop = parseFloat(item.style.top);
            const containerHeight = grid.offsetHeight;
            const itemHeight = item.offsetHeight;
            const bottomPosition = (containerHeight - (currentTop + itemHeight)) / containerHeight * 100;

            item.style.bottom = `${bottomPosition}%`;
            item.style.top = 'auto';

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

        function initResizeBottomRight(e) {
            e.preventDefault();
            const handle = this;
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

        function initResizeRight(e) {
            e.preventDefault();
            const handle = this;
            const item = this.closest(".item");
            isResizing = true;
            startX = e.clientX;
            startY = e.clientY;
            startWidth = item.offsetWidth;
            startHeight = item.offsetHeight;

            // Save the bottom position as a percentage
            const currentTop = parseFloat(item.style.top);
            const containerHeight = grid.offsetHeight;
            const itemHeight = item.offsetHeight;
            const bottomPosition = (containerHeight - (currentTop + itemHeight)) / containerHeight * 100;

            item.style.bottom = `${bottomPosition}%`;
            item.style.top = 'auto';

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

        function initResizeLeft(e) {
            e.preventDefault();
            const handle = this;
            const item = this.closest(".item");
            isResizing = true;
            startX = e.clientX;
            startY = e.clientY;
            startWidth = item.offsetWidth;
            startHeight = item.offsetHeight;

            const currentLeft = parseFloat(item.style.left);
            const containerWidth = grid.offsetWidth;
            const itemWidth = item.offsetWidth;
            const rightPosition = (containerWidth - (currentLeft + itemWidth)) / containerWidth * 100;

            // Save the right position as a percentage
            item.style.right = `${rightPosition}%`;
            item.style.left = 'auto';

            // Save the bottom position as a percentage
            const currentTop = parseFloat(item.style.top);
            const containerHeight = grid.offsetHeight;
            const itemHeight = item.offsetHeight;
            const bottomPosition = (containerHeight - (currentTop + itemHeight)) / containerHeight * 100;

            item.style.bottom = `${bottomPosition}%`;
            item.style.top = 'auto';

            item.classList.add("resizing");

            document.addEventListener('mousemove', resizeItem, false);
            document.addEventListener('mouseup', stopResize, false);

            function resizeItem(e) {

                // Calculate distance moved
                const deltaX = startX - e.clientX;

                // Calculate new width while maintaining right edge position
                const newWidth = startWidth + deltaX;
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

            const view = looseGrid.getAttribute("data-view");
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
                        view: view,
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

                    // create the visual order based on screen placement

                    const gridItems = Array.from(document.querySelectorAll('ul.canvas .item'));
                    const visualOrderArray = gridItems
                        .map(el => {
                            const rect = el.getBoundingClientRect();
                            return {
                                id: el.dataset.picid,
                                top: rect.top,
                                left: rect.left
                            };
                        })
                        .sort((a, b) => {
                            if (Math.abs(a.top - b.top) > 5) {
                                return a.top - b.top;
                            } else {
                                return a.left - b.left;
                            }
                        })
                        .map((item, index) => ({
                            id: item.id,
                            catid: document.querySelector("#looseGrid").getAttribute("data-catid"),
                            visualOrder: index
                        }));

                    fetch('saveGridOrder.php', {
                            method: 'POST',
                            headers: {
                                'Content-Type': 'application/json',
                            },
                            body: JSON.stringify({
                                view: view,
                                order: visualOrderArray,
                            })
                        })
                        .then(response => response.json())
                        .then(data => {
                            console.log(data.message); // Will show the received values
                            updateContainerHeight();
                        })
                        .catch(error => {
                            console.error('Error:', error);
                        });
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
                item.style.right = 'auto';
                item.style.bottom = 'auto';

                // clear out transforms from draggable
                gsap.set(item, {
                    x: 0,
                    y: 0,
                    z: 0
                });
            });


        }

        let resizeTimeout;
        const resizeObserver = new ResizeObserver((entries) => {
            // Clear the existing timeout
            clearTimeout(resizeTimeout);

            // Set a new timeout
            resizeTimeout = setTimeout(() => {
                updatePositions();
                updateContainerHeight();
            }, 250); // Wait 250ms after resize ends before updating
        });
        resizeObserver.observe(grid);

        function updateContainerHeight() {
            requestAnimationFrame(() => {
                let maxBottom = 0;

                items.forEach(item => {

                    let topPos = gsap.getProperty(item, "top"); // Get the top position in pixels
                    itemBottom = topPos + item.offsetHeight; // Distance from top + height
                    maxBottom = Math.max(maxBottom, itemBottom);
                });

                grid.style.height = `${Math.ceil(maxBottom) + innerHeight - 300}px`; // Round up & add buffer for admin, on front-end this should be tight to the grid
                grid.style.minHeight = "auto";
                dropArea.style.opacity = 1;
            });
        }

        function updateDraggableState() {
            console.log("Selection count:", selectedItems.length);

            // Prevent reinitializing draggables during a click event
            if (isHandlingClick) return;

            if (selectedItems.length > 1) {
                initGroupDraggable();
            } else {
                initDraggable();
            }
        }

        // draggable for individual items
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

        // Function to modify initMarqueeSelection function
        function initMarqueeSelection() {
            selectionBox = createSelectionBox();

            grid.addEventListener('mousedown', function(e) {
                // Only start selection if not clicking on an item or handle
                if (e.target === grid || e.target === dropArea) {
                    isSelecting = true;
                    startPoint.x = e.clientX;
                    startPoint.y = e.clientY;

                    // Initialize selection box position
                    const rect = grid.getBoundingClientRect();
                    selectionBox.style.left = (e.clientX - rect.left) + 'px';
                    selectionBox.style.top = (e.clientY - rect.top) + 'px';
                    selectionBox.style.width = '0px';
                    selectionBox.style.height = '0px';
                    selectionBox.style.display = 'block';

                    // Clear previous selection if not holding Shift
                    if (!e.shiftKey) {
                        clearSelection();
                    }
                }
            });

            document.addEventListener('mousemove', function(e) {
                if (!isSelecting) return;

                const rect = grid.getBoundingClientRect();
                const currentX = e.clientX;
                const currentY = e.clientY;

                // Calculate selection box dimensions
                const left = Math.min(startPoint.x, currentX) - rect.left;
                const top = Math.min(startPoint.y, currentY) - rect.top;
                const width = Math.abs(currentX - startPoint.x);
                const height = Math.abs(currentY - startPoint.y);

                // Update selection box
                selectionBox.style.left = left + 'px';
                selectionBox.style.top = top + 'px';
                selectionBox.style.width = width + 'px';
                selectionBox.style.height = height + 'px';

                // Check which items are within the selection box
                updateSelection(left, top, width, height);
            });

            document.addEventListener('mouseup', function() {
                if (isSelecting) {
                    isSelecting = false;
                    selectionBox.style.display = 'none';

                    // Initialize appropriate draggable based on selection
                    updateDraggableState();
                }
            });
        }

        // Add a new function to determine which draggable to initialize
        function updateDraggableState() {
            if (selectedItems.length > 1) {
                initGroupDraggable();
            } else {
                initDraggable();
            }
        }

        // Update draggable for grouped items
        function initGroupDraggable() {
            // Kill any existing draggables
            draggables.forEach(d => d.kill());

            draggables = Draggable.create(items, {
                type: "x,y",
                inertia: true,
                zIndexBoost: false,
                dragClickables: false,
                onClick: function(e) {
                    console.log("Group item click");

                    // Handle Ctrl+click in group mode
                    if (e.ctrlKey || e.metaKey) { // metaKey for Mac support
                        e.stopPropagation();
                        e.preventDefault();

                        const item = this.target;

                        // Toggle selection state
                        if (item.classList.contains('selected')) {
                            unselectItem(item);
                        } else {
                            selectItem(item);
                        }

                        // Update draggable based on new selection state
                        //updateDraggableState();
                        return false;
                    }
                },
                onPress: function() {
                    const item = this.target;

                    // If clicking on a selected item, prepare all selected items for group movement
                    if (item.classList.contains('selected')) {
                        // Store initial positions of all selected items
                        selectedItems.forEach(selectedItem => {
                            selectedItem._initialX = gsap.getProperty(selectedItem, "x");
                            selectedItem._initialY = gsap.getProperty(selectedItem, "y");
                        });
                    }
                },
                onDrag: function() {
                    // Only move other items if the dragged item is selected
                    if (this.target.classList.contains('selected')) {
                        // Calculate delta movement
                        const deltaX = gsap.getProperty(this.target, "x") - this.target._initialX;
                        const deltaY = gsap.getProperty(this.target, "y") - this.target._initialY;

                        // Move all other selected items by the same delta
                        selectedItems.forEach(item => {
                            if (item !== this.target) {
                                gsap.set(item, {
                                    x: item._initialX + deltaX,
                                    y: item._initialY + deltaY
                                });
                            }
                        });
                    }
                },
                onDragEnd: function() {
                    const item = this.target;

                    // Save position for the dragged item
                    savePosition(item);

                    // Save positions for all other selected items
                    if (item.classList.contains('selected')) {
                        selectedItems.forEach(selectedItem => {
                            if (selectedItem !== item) {
                                savePosition(selectedItem);
                            }
                        });
                    }
                }
            });
        }

        // Initialize the marquee selection
        initMarqueeSelection();

        // Initial Draggable on page load
        initDraggable();

    }


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

        // Handle delete colorbox with event delegation for dynamic content
        $(document).on('click', '.delete', function(e) {
            e.preventDefault();
            $.colorbox({
                width: "402px",
                height: "227px",
                iframe: true,
                opacity: ".95",
                href: $(this).attr('href')
            });
        });

        $("#colorpicker").spectrum({
            color: '<?= $theCat['bgColor'] ?>',
            showInput: true,
            showAlpha: false,
            preferredFormat: "name"
        });

    });
</script>