<?php

session_start();
include 'includes/secure.php';
include '../includes/connect.php';
include 'includes/functions.php';

// vars below define if items go to category or module
$type = $_GET['type'];
$id = $_GET['id'];
$src = $_GET['src'];
$field = $_GET['field'];

// setup pagination
$limit = 100;
$start = 0;
$page = 1;
$keyword = "";

if (isset($_GET['page'])) {
    $page = mysqli_real_escape_string(Database::$conn, $_GET['page']);
    $start = ($page - 1) * $limit;
}

$nextPage = $page + 1;
$prevPage = $page - 1;

$countMedia = countMedia();
$totalPages = ceil($countMedia / $limit);
$isCategory = false;
$isProject = false;

if (isset($_GET['keyword'])) {
    $keyword = mysqli_real_escape_string(Database::$conn, $_GET['keyword']);
    $items = searchMedia($keyword);
    $contentTitle = "SEARCH RESULTS";
} elseif (isset($_GET['artistid'])) {
    $artistID = mysqli_real_escape_string(Database::$conn, $_GET['artistid']);
    $artistDetails = catDetails($artistID);
    $items = artistMedia($artistID, $page, $limit);
    $contentTitle = $artistDetails['subName'] . " ITEMS";
    $isCategory = true;
} elseif (isset($_GET['projectid'])) {
    $projectID = mysqli_real_escape_string(Database::$conn, $_GET['projectid']);
    $project = getMainImage($projectID);
    $artistDetails = catDetails($artistID);
    $items = projectMedia($projectID);
    $contentTitle = $project['title'] . " ITEMS";
    $isProject = true;
} else {
    $items = getMedia($start, $limit);
    $contentTitle = "LATEST ITEMS";
}

// get artist/category content for folders
$artists = subcatList(1022);

?>

<div class="manageimages media_library">

    <div class="heading">
        <div class="leftside">
            <div class="titles">
                <p><span class="head uploaderLink">MEDIA LIBRARY</span> (<?= $countMedia ?> Items)</p>
            </div>
            <?php /*
            <div class="pager">

                <p>
                    Page
                    <?php for ($i = 1; $i <= $totalPages; ++$i) { ?>
                        <a href="getMedia.php?page=<?= $i ?>" class="modal <?php if ($page == $i) { ?>disabled<?php } ?>"><?= $i ?></a>
                    <?php } ?>
                </p>

            </div>
            */ ?>
        </div>
        <div class="rightside">
            <form action="manage_media.php" method="get" name="search" class="modal">
                <input type="hidden" name="type" id="type" value="<?= $type ?>" />
                <input type="hidden" name="id" id="id" value="<?= $id ?>" />
                <input type="hidden" name="src" id="src" value="<?= $src ?>" />
                <input type="hidden" name="field" id="field" value="<?= $field ?>" />
                <input type="text" name="keyword" value="<?= $keyword ?>" class="media_search" placeholder="Search by Filename / Title" />
                <input type="submit" value="SEARCH" id="btn" /><br />
                <a href="getMedia.php?type=<?= $type ?>&id=<?= $id ?>&src=<?= $src ?>&field=<?= $field ?>" class="modal">X CLEAR</a>
            </form>
        </div>

    </div>

    <div id="line" style="width: 99%; margin-bottom: 2px;"></div>
    <div id="line" style="width: 99%;"></div><br />

    <form name="selectMedia" class="assign" method="get" action="assignMedia.php">
        <input type="hidden" name="type" id="type" value="<?= $type ?>" />
        <input type="hidden" name="id" id="id" value="<?= $id ?>" />
        <input type="hidden" name="src" id="src" value="<?= $src ?>" />
        <input type="hidden" name="field" id="field" value="<?= $field ?>" />
        <div style="display: flex; align-items: flex-start; justify-content: flex-start; margin-bottom: 20px;">
            <input type="submit" value="SAVE ITEMS" id="btn" />
            <button style="margin-left: 10px;" class="disabled deleteBtn" id="btn" data-src="<?= $src ?>">DELETE SELECTED</button>
        </div>

        <div class="folders">

            <?php for ($count = 1; $artist = mysqli_fetch_array($artists); ++$count) { ?>

                <div class="artist <?php if ($artistID == $artist['id']) { ?>selected<?php } ?>" data-id="<?= $id ?>" data-artistid="<?= $artist['id'] ?>" data-type="<?= $type ?>" data-source="<?= $src ?>" data-field="<?= $field ?>">

                    <svg class="closed" xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                        <path d="M2 6a2 2 0 012-2h5l2 2h5a2 2 0 012 2v6a2 2 0 01-2 2H4a2 2 0 01-2-2V6z" />
                    </svg>

                    <svg class="open" xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                        <path fill-rule="evenodd" d="M2 6a2 2 0 012-2h4l2 2h4a2 2 0 012 2v1H8a3 3 0 00-3 3v1.5a1.5 1.5 0 01-3 0V6z" clip-rule="evenodd" />
                        <path d="M6 12a2 2 0 012-2h8a2 2 0 012 2v2a2 2 0 01-2 2H2h2a2 2 0 002-2v-2z" />
                    </svg>

                    <span><?= $artist['subName'] ?></span>
                </div>

            <?php } ?>

        </div>

        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td align="left" valign="top">

                    <span class="head"><?= $contentTitle ?></span><br />
                    <div id="line" style="width: 99%;"></div><br />

                    <div id="managePics">

                        <ul class="sortme">

                            <?php

                            foreach ($items as $itemID) {

                                $pic = getMainImage($itemID);

                                $ext = pathinfo(getOption("physicalPath") . "/images/pics/" . $pic['img'], PATHINFO_EXTENSION);

                                $theImg = getOption("imagePath") . "500/" . $pic['img'];

                                if ($ext === "gif") {
                                    $theImg = getOption("imagePath") . $pic['img'];
                                }

                                // check for item video, if found display video icon
                                $hasVideo = false;
                                $video = getImageVideo($itemID);
                                if ($video) {
                                    $hasVideo = true;
                                }


                            ?>

                                <li class="picHolder media" id="recordsArray_<?php echo $pic['id']; ?>">
                                    <div class="media_title">
                                        <span>
                                            <?php if ($pic['title'] != "title:" and $pic['title'] != "") { ?>
                                                <?= $pic['title'] ?>
                                            <?php } ?>
                                        </span>
                                        <?php if ($hasVideo) { ?>
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                <path stroke-linecap="round" d="M15.75 10.5l4.72-4.72a.75.75 0 011.28.53v11.38a.75.75 0 01-1.28.53l-4.72-4.72M4.5 18.75h9a2.25 2.25 0 002.25-2.25v-9a2.25 2.25 0 00-2.25-2.25h-9A2.25 2.25 0 002.25 7.5v9a2.25 2.25 0 002.25 2.25z" />
                                            </svg>

                                        <?php } ?>
                                    </div>
                                    <div class="mediawrap">

                                        <?php if ($isCategory) { ?>

                                            <a href="#" class="project" data-projectid="<?= $itemID ?>" data-id="<?= $id ?>" data-type="<?= $type ?>" data-source="<?= $src ?>" data-field="<?= $field ?>">
                                                <?php if ($pic['img'] != "no-image.jpg") { ?>

                                                    <img src="<?= $theImg ?>" border="0"><br />

                                                <?php } else { ?>
                                                    <div style="width: 150px; height: 150px; text-align: center; border: 1px solid #ccc;">
                                                        <div style="padding-top: 44%;"><?= $pic['title'] ?></div>
                                                    </div>
                                                <?php } ?>
                                            </a>

                                        <?php } else { ?>

                                            <a href="detail.php?picID=<?= $pic['id'] ?>&fromMedia=yes" target="_blank">
                                                <?php if ($pic['img'] != "no-image.jpg") { ?>

                                                    <img src="<?= $theImg ?>" border="0"><br />

                                                <?php } else { ?>
                                                    <div style="width: 150px; height: 150px; text-align: center; border: 1px solid #ccc;">
                                                        <div style="padding-top: 44%;"><?= $pic['title'] ?></div>
                                                    </div>
                                                <?php } ?>
                                            </a>

                                        <?php } ?>
                                    </div>


                                    <div class="imagetools" style="bottom: -40px; margin-bottom: 20px; display: flex; flex-wrap: wrap; align-items: center; justify-content: flex-start; color: #627dad;">
                                        <div>
                                            <input type="checkbox" name="additem" class="additem" data-id="<?= $pic['id'] ?>" style="margin-bottom: 0; border: 1px solid #627dad;">
                                            <span style="padding-left: 5px; cursor: default;">Select</span>
                                        </div>
                                        <div style="margin-left: auto; margin-right: 0;">
                                            <input type="checkbox" name="deleteitem" class="deleteitem" data-id="<?= $pic['id'] ?>" style="margin-bottom: 0; border: 1px solid #627dad;">
                                            <span style="padding-left: 5px; cursor: default;">Delete</span>
                                        </div>
                                    </div>

                                </li>

                            <?php

                            }

                            ?>

                        </ul>

                    </div>

                </td>
            </tr>
        </table>

    </form>

</div>