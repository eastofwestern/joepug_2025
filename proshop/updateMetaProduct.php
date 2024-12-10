<?php

session_start();
include 'includes/secure.php';
include '../includes/connect.php';
include 'includes/functions.php';

$picID = mysqli_real_escape_string(Database::$conn, $_POST["picID"]);
$metaTitle = mysqli_real_escape_string(Database::$conn, $_POST["metaTitle"]);
$metaDesc = mysqli_real_escape_string(Database::$conn, $_POST["metaDesc"]);
$metaKeywords = mysqli_real_escape_string(Database::$conn, $_POST["metaKeywords"]);
$currentImage = mysqli_real_escape_string(Database::$conn, $_POST["currentImage"]);
$currentWidth = mysqli_real_escape_string(Database::$conn, $_POST["currentWidth"]);
$currentHeight = mysqli_real_escape_string(Database::$conn, $_POST["currentHeight"]);

$previewImage = $currentImage;
$previewWidth = $currentWidth;
$previewHeight = $currentHeight;

if (isset($_FILES['file']['name'])) {

	/* Getting file name */
	$filename = $_FILES['file']['name'];

	/* Location */
	$save_path = getOption("imagePathSave");
	$location = $save_path . $picID . "_" . "meta_" . $filename;
	$imageFileType = pathinfo($location, PATHINFO_EXTENSION);
	$imageFileType = strtolower($imageFileType);

	/* Valid extensions */
	$valid_extensions = array("jpg", "jpeg", "png", "gif");

	$response = 0;
	/* Check file extension */
	if (in_array(strtolower($imageFileType), $valid_extensions)) {
		/* Upload file */
		if (move_uploaded_file($_FILES['file']['tmp_name'], $location)) {
			$response = $location;
		}
	}

	// GET IMAGE SIZE
	$imgSize = getimagesize($save_path . $picID . "_" . "meta_" . $filename);
	$previewWidth = $imgSize[0];
	$previewHeight = $imgSize[1];

	$previewImage = $picID . "_" . "meta_" . $filename;
}

$query = "UPDATE pics SET metaTitle = '$metaTitle', metaDesc = '$metaDesc', metaKeywords = '$metaKeywords', metaImage = '$previewImage', metaImageWidth = '$previewWidth', metaImageHeight = '$previewHeight' WHERE id = '$picID'";

$result = mysqli_query(Database::$conn, $query);

if (!$result) {
	die('Could not query:' . mysqli_error(Database::$conn));
	exit;
}

echo "Meta Tags have been updated!<br /><br />";
