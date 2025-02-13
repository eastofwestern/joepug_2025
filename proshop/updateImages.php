<?php

session_start();
include 'includes/secure.php';
include '../includes/connect.php';
include 'includes/functions.php';
include 'classes/resize-class.php';

$detailID = 0;
$thisDesc = "";
$thisHover = "";
$thisImgSize = "";
$module = "";
$product = "";
$thisMoveCat = "";
$thisCopyCat = "";
$thisURL = "";
$thisDelete = "";

if (isset($_POST["myContent"])) {
    $data_json = $_POST["myContent"];

    $data_array = json_decode($data_json, true);

    if ($data_array !== null) {
        $catID = $data_array["category"];
        $catorder = $data_array["catorder"];
        if (isset($data_array["parentID"])) {
            $parentID = $data_array["parentID"];
        }
        if (isset($data_array["parentParentID"])) {
            $parentParentID = $data_array["parentParentID"];
        }
        if (isset($data_array["detailID"])) {
            $detailID = $data_array["detailID"];
        }
        if (isset($data_array["moduleID"])) {
            $moduleID = $data_array["moduleID"];
        }
        $picIDArray = $data_array["picID"];
        $imgArray = $data_array["img"];
        $titleArray = str_replace('"', '&quot;', $data_array["title"]);
        $captionsArray = str_replace('"', '&quot;', $data_array["captions"]);
        $picURLArray = $data_array["picURL"];
        $shortDescArray = $data_array["shortDesc"];
        /*
			$priceArray = $data_array["price"];
			$wPriceArray = $data_array["wprice"];
			*/
        $copyCatArray = $data_array["copyCat"];
        $moveCatArray = $data_array["moveCat"];
        if (isset($data_array["artists"])) {
            $artistArray = $data_array["artists"];
        }
        if (isset($data_array["product"])) {
            $product = $data_array["product"];
        }
        if (isset($data_array["hover"])) {
            $hoverArray = $data_array["hover"];
        }
        if (isset($data_array["module"])) {
            $module = $data_array["module"];
        }
        if (isset($data_array["orgCatID"])) {
            $orgCatIDArray = $data_array["orgCatID"];
        }
        $deleteArray = $data_array["deleteArray"];
        if (isset($data_array["imgSizeArray"])) {
            $imgSizeArray = $data_array["imgSizeArray"];
        }
        if (isset($data_array["rowBreakArray"])) {
            $rowBreakArray = $data_array["rowBreakArray"];
        }

        if (isset($data_array["topMarginArray"])) {
            $topMarginArray = $data_array["topMarginArray"];
        }
        if (isset($data_array["leftMarginArray"])) {
            $leftMarginArray = $data_array["leftMarginArray"];
        }
        if (isset($data_array["colStartArray"])) {
            $colStartArray = $data_array["colStartArray"];
        }
        if (isset($data_array["colEndArray"])) {
            $colEndArray = $data_array["colEndArray"];
        }
    }
} else {
    echo "Error!";
}

if (!isset($catID)) {
    echo "error updating page!";
    exit;
}

$save_path = getOption("imagePathSave");

$myCount = 0;
$listingCounter = 1;
foreach ($picIDArray as $picID) {

    //echo $picID . " - " . $captions[$myCount] . "<br />";

    $thisImg = mysqli_real_escape_string(Database::$conn, $imgArray[$myCount]);
    $thisTitle = str_replace('"', '&quot;', $titleArray[$myCount]);
    $thisTitle = mysqli_real_escape_string(Database::$conn, $titleArray[$myCount]);

    $thisCaption = str_replace('"', '&quot;', $captionsArray[$myCount]);
    $thisCaption = mysqli_real_escape_string(Database::$conn, $captionsArray[$myCount]);

    if (isset($picURLArray[$myCount])) {
        $thisURL = mysqli_real_escape_string(Database::$conn, $picURLArray[$myCount]);
    }
    if (isset($shortDescArray[$myCount])) {
        $thisDesc = mysqli_real_escape_string(Database::$conn, $shortDescArray[$myCount]);
    }
    if (isset($moveCatArray[$myCount])) {
        $thisMoveCat = mysqli_real_escape_string(Database::$conn, $moveCatArray[$myCount]);
    }
    if (isset($copyCatArray[$myCount])) {
        $thisCopyCat = mysqli_real_escape_string(Database::$conn, $copyCatArray[$myCount]);
    }
    if (isset($deleteArray[$myCount])) {
        $thisDelete = mysqli_real_escape_string(Database::$conn, $deleteArray[$myCount]);
    }
    if (isset($imgSizeArray[$myCount])) {
        $thisImgSize = mysqli_real_escape_string(Database::$conn, $imgSizeArray[$myCount]);
    } else {
        $thisImgSize = "";
    }
    if (isset($rowBreakArray[$myCount])) {
        $thisRowBreak = mysqli_real_escape_string(Database::$conn, $rowBreakArray[$myCount]);
    } else {
        $thisRowBreak = "";
    }

    $thisTopMargin = mysqli_real_escape_string(Database::$conn, $topMarginArray[$myCount]);
    $thisLeftMargin = mysqli_real_escape_string(Database::$conn, $leftMarginArray[$myCount]);
    if (isset($colStartArray[$myCount])) {
        $thisColStart = mysqli_real_escape_string(Database::$conn, $colStartArray[$myCount]);
    } else {
        $thisColStart = "";
    }
    if (isset($colEndArray[$myCount])) {
        $thisColEnd = mysqli_real_escape_string(Database::$conn, $colEndArray[$myCount]);
    } else {
        $thisColEnd = "";
    }

    if ($thisCaption != "" and $thisCaption != "caption:") {
        $thisSlug = createSlug($thisTitle, "-", $thisCaption);
    } else {
        $thisSlug = createSlug($thisTitle);
    }

    $query = "UPDATE pics SET picid = '$detailID', caption = '$thisCaption', title = '$thisTitle', picURL = '$thisURL', shortDesc = '$thisDesc', sortBy = '$listingCounter', slug = '$thisSlug', hover = '$thisHover', imgSize = '$thisImgSize', rowBreak = '$thisRowBreak' WHERE id = '$picID'";

    $result = mysqli_query(Database::$conn, $query);

    if (!$result) {
        die('Could not query 1:' . mysqli_error(Database::$conn));
        exit;
    }

    // NEW LOGIC TO ALLOW FOR SINGLE PIC TO LIVE IN MULTIPLE CATEGORIES

    $query1a = "SELECT * FROM cat_pics WHERE catid = '$thisMoveCat' and picid = '$picID'";

    //echo $query1a . "\n";

    $result1a = mysqli_query(Database::$conn, $query1a);
    $num1a = mysqli_num_rows($result1a);

    //echo $num1a . "\n\n";

    if ($num1a == 0) {

        $query1b = "INSERT INTO cat_pics (picid, catid, imgSize, rowBreak, topMargin, leftMargin, colStart, colEnd) VALUES ('$picID', '$thisMoveCat', '$thisImgSize', '$thisRowBreak', '$thisTopMargin', '$thisLeftMargin', '$thisColStart', '$thisColEnd')";

        $result1b = mysqli_query(Database::$conn, $query1b);
    } else {

        $query1b = "UPDATE cat_pics SET imgSize = '$thisImgSize', rowBreak = '$thisRowBreak', topMargin = '$thisTopMargin', leftMargin = '$thisLeftMargin', colStart = '$thisColStart', colEnd = '$thisColEnd' WHERE picid = '$picID' AND catid = '$catID'";

        $result1b = mysqli_query(Database::$conn, $query1b);
    }

    if (!$result1b) {
        die('Could not query 1b:' . mysqli_error(Database::$conn));
        exit;
    }

    // Update imgSize and rowBreak for module_pics
    if ($moduleID > 0) {

        $query11 = "UPDATE module_pics SET rowBreak = '$thisRowBreak', imgSize = '$thisImgSize' WHERE modid = '$moduleID' AND picid = '$picID'";

        $result11 = mysqli_query(Database::$conn, $query11);
    }

    // if they are moving to a new category we need to delete from existing
    if ($thisMoveCat != $catID) {

        $query1c = "DELETE FROM cat_pics WHERE picid = '$picID' AND catid = '$catID'";

        $result1c = mysqli_query(Database::$conn, $query1c);
    }

    if ($thisCopyCat != "") {

        // NEW COPY LOGIC JUST CREATES A REFERENCE IN THE cat_pics TABLE

        $query2a = "SELECT * FROM cat_pics WHERE catid = '$thisCopyCat' and picid = '$picID'";

        $result2a = mysqli_query(Database::$conn, $query2a);
        $num2a = mysqli_num_rows($result2a);

        if ($num2a == 0) {

            $query2b = "INSERT INTO cat_pics (catid, picid, sortBy, rowBreak, topMargin, leftMargin, colStart, colEnd) VALUES ('$thisCopyCat', '$picID', '$listingCounter', '$thisRowBreak', '$thisTopMargin', '$thisLeftMargin', '$thisColStart', '$thisColEnd')";

            $result2b = mysqli_query(Database::$conn, $query2b);

            if (!$result2b) {
                die('Could not query 2b:' . mysqli_error(Database::$conn));
                exit;
            }
        }
    }

    // check for any "yes" values in deleteArray and remove from this cat
    if ($thisDelete === "yes") {

        $query3 = "DELETE FROM cat_pics WHERE catid = '$catID' AND picid = '$picID'";

        $result3 = mysqli_query(Database::$conn, $query3);

        if (!$result3) {
            die('Could not query 3:' . mysqli_error(Database::$conn));
            exit;
        }
    }

    $myCount++;
    $listingCounter++;
}

if ($module === "yes") {

    echo "detail.php?picID=" . $detailID . "&category=" . $catID . "&modedit=recordsArray_" . $moduleID;
} elseif ($product === "yes") {

    echo "manage_products.php?catID=" . $catID;
} else {

    echo "manage_images.php?category=" . $catID . "&parentID=" . $parentID . "&parentParentID=" . $parentParentID;
}
