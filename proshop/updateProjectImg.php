<?php

session_start();
include 'includes/secure.php';
include '../includes/connect.php';
include 'includes/functions.php';

$picID = mysqli_real_escape_string(Database::$conn, $_POST['picID']);
$catID = mysqli_real_escape_string(Database::$conn, $_POST['catID']);
$randStr = generateRandomString();

$myVar = $_FILES['mainImg']['name'];

//GET A CLEAN FILE NAME HERE
$cleanName = cleanFileName($myVar);

if ($myVar != "") {

	$save_path = getOption("physicalPath");

	$filename = $catID . "_" . $randStr . "_" . $cleanName;
	$filepath = $save_path . $filename;

	if (move_uploaded_file($_FILES["mainImg"]["tmp_name"], $filepath)) {
		//echo "The file has been uploaded.";
	} else {
		echo "Sorry, there was an error uploading your file.";
	}

	// GET IMAGE SIZE
	$imgSize = getimagesize($save_path . $filename);
	$imgWidth = $imgSize[0];
	$imgHeight = $imgSize[1];

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
			$newH = 500 * $imgRatio;
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
			$newH = 750 * $imgRatio;
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
			$newH = 1000 * $imgRatio;
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
			$newH = 1536 * $imgRatio;
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
			$newH = 1920 * $imgRatio;
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
}

//UPDATE DATABASE

$imgName = $catID . "_" . $randStr . "_" . $cleanName;

$query = "UPDATE pics SET img = '$imgName', width = '$imgWidth', height = '$imgHeight', orientation = '$orientation' WHERE id = '$picID'";

$result = mysqli_query(Database::$conn, $query);

if (!$result) {
	die('Could not query:' . mysqli_error(Database::$conn));
	exit;
}

echo "success";

//header("Location: detail.php?picID=" . $picID . "&category=" . $catID . "&status=main_image_has_been_updated");
