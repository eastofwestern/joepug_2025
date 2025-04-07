<?php

session_start();
include 'includes/secure.php';
include '../includes/connect.php';
include 'includes/functions.php';

// setup global variables for upload
$save_path = getOption("physicalPath");

// retrieve file and headers
$file = file_get_contents('php://input');
$headers = apache_request_headers();
$imgName = $headers['X-File-Name'];
$catID = $headers['X-File-Cat'];
$picID = $headers['X-File-Picid'];
$moduleID = $headers['X-File-Moduleid'];
$fileCount = $headers['X-File-Count'];
$xStart = $headers['X-File-X'];
$yStart = $headers['X-File-Y'];
$posMulti = 1;

if ($xStart == 0 and $yStart == 0) {
    $posStartX = $fileCount * $posMulti;
    $posStartY = $fileCount * $posMulti;
} else {
    $posStartX = $xStart;
    $posStartY = $yStart;
}

if ($moduleID > 0) {
} else {
    $moduleID = 0;
}

//GET A CLEAN FILE NAME HERE
$cleanName = cleanFileName($imgName);

$randStr = generateRandomString();

$catDetails = catDetails($catID);

// write it to server
if ($picID != "") {
    $filename = $picID . "_" . $randStr . "_" . $cleanName;
} else {
    $filename = $catID . "_" . $randStr . "_" . $cleanName;
    $picID = 0;
}
$fh = fopen($save_path . $filename, 'w') or die("can't open file");
fwrite($fh, $file);
fclose($fh);

// GET IMAGE SIZE
$imgSize = getimagesize($save_path . $filename);
$imgWidth = $imgSize[0];
$imgHeight = $imgSize[1];
$imgRatio = $imgWidth / $imgHeight;

if ($imgWidth > $imgHeight) {
    $orientation = "landscape";
} elseif ($imgWidth < $imgHeight) {
    $orientation = "portrait";
} else {
    $orientation = "square";
}

// Create a new Imagick object
$image = new Imagick($save_path . $filename);
// convert to srgb colorspace
$image->transformImageColorspace(Imagick::COLORSPACE_SRGB);

if (!file_exists($save_path . "square/" . $filename)) {
    $image->resizeImage(200, 200, Imagick::FILTER_LANCZOS, 1);
    $image->writeImage($save_path . "square/" . $filename);
    $image->destroy();
}

if (!file_exists($save_path . "500/" . $filename)) {

    if ($imgWidth > 500) {

        $image = new Imagick($save_path . $filename);
        $image->transformImageColorspace(Imagick::COLORSPACE_SRGB);
        $newH = 500 / $imgRatio;
        $image->resizeImage(500, $newH, Imagick::FILTER_LANCZOS, 1);
        $image->writeImage($save_path . "500/" . $filename);
        $image->destroy();
    } else {
        copy($save_path . $filename, $save_path . "500/" . $filename);
    }
}

if (!file_exists($save_path . "750/" . $filename)) {

    if ($imgWidth > 750) {

        $image = new Imagick($save_path . $filename);
        $image->transformImageColorspace(Imagick::COLORSPACE_SRGB);
        $newH = 750 / $imgRatio;
        $image->resizeImage(750, $newH, Imagick::FILTER_LANCZOS, 1);
        $image->writeImage($save_path . "750/" . $filename);
        $image->destroy();
    } else {
        copy($save_path . $filename, $save_path . "750/" . $filename);
    }
}

if (!file_exists($save_path . "1000/" . $filename)) {

    if ($imgWidth > 1000) {
        $image = new Imagick($save_path . $filename);
        $image->transformImageColorspace(Imagick::COLORSPACE_SRGB);
        $newH = 1000 / $imgRatio;
        $image->resizeImage(1000, $newH, Imagick::FILTER_LANCZOS, 1);
        $image->writeImage($save_path . "1000/" . $filename);
        $image->destroy();
    } else {
        copy($save_path . $filename, $save_path . "1000/" . $filename);
    }
}

if (!file_exists($save_path . "1536/" . $filename)) {

    if ($imgWidth > 1536) {
        $image = new Imagick($save_path . $filename);
        $image->transformImageColorspace(Imagick::COLORSPACE_SRGB);
        $newH = 1536 / $imgRatio;
        $image->resizeImage(1536, $newH, Imagick::FILTER_LANCZOS, 1);
        $image->writeImage($save_path . "1536/" . $filename);
        $image->destroy();
    } else {
        copy($save_path . $filename, $save_path . "1536/" . $filename);
    }
}

if (!file_exists($save_path . "1920/" . $filename)) {

    if ($imgWidth > 1920) {
        $image = new Imagick($save_path . $filename);
        $image->transformImageColorspace(Imagick::COLORSPACE_SRGB);
        $newH = 1920 / $imgRatio;
        $image->resizeImage(1920, $newH, Imagick::FILTER_LANCZOS, 1);
        $image->writeImage($save_path . "1920/" . $filename);
        $image->destroy();
    } else {
        copy($save_path . $filename, $save_path . "1920/" . $filename);
    }
}

// CREATE GRAYSCALE PNG FOR SCOLL PLACEHOLDER
$strPicName = $filename;
$strPicName = str_replace(".jpg", "", $strPicName);
$strPicName = str_replace(".jpeg", "", $strPicName);
$strPicName = str_replace(".gif", "", $strPicName);
$strPicName = str_replace(".png", "", $strPicName);

$im = imagecreatetruecolor($imgWidth, $imgHeight);
$gray = imagecolorallocate($im, 0, 0, 0);

imagecolortransparent($im, $gray);

imagepng($im, "../images/pics/siteGray/" . $strPicName . ".png");

imagedestroy($im);

// save to database - need to check for module id
$query = "INSERT INTO pics (catid, picid, moduleid, img, sortBy, width, height, orientation, aspectRatio, filename) VALUES ('$catID', '$picID', '$moduleID', '$filename', '0', '$imgWidth', '$imgHeight', '$orientation', '$imgRatio', '$imgName')";

//echo $query;

$result = mysqli_query(Database::$conn, $query);

if (!$result) {
    die('Could not query:' . mysqli_error(Database::$conn));
    exit;
}

$picID = mysqli_insert_id(Database::$conn);

$query1b = "INSERT INTO cat_pics (picid, catid, width, pos_top, pos_left) VALUES ('$picID', '$catID', '20', '$posStartY', '$posStartX')";

$result1b = mysqli_query(Database::$conn, $query1b);

if (!$result1b) {
    die('Could not query:' . mysqli_error(Database::$conn));
    exit;
}

if ($moduleID > 0) {

    $sql33 = "INSERT INTO module_pics (picid, modid, sortby) VALUES ('$picID', '$moduleID', 0)";

    $result33 = mysqli_query(Database::$conn, $sql33);

    if (!$result33) {
        die('Could not query 33:' . mysqli_error(Database::$conn));
        exit;
    }
}

if ($catDetails['pageType'] === "images - stories") {

    // create a module
    $sql2 = "INSERT INTO modules (picid, title, sortBy) VALUES ('$picID', 'Story Images', 0)";

    $result2 = mysqli_query(Database::$conn, $sql2);

    if (!$result2) {
        die('Could not query:' . mysqli_error(Database::$conn));
        exit;
    }
}
