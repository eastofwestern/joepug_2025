<?php

	session_start();
	include 'includes/secure.php';
	include '../includes/connect.php';
	include 'includes/functions.php';
	require_once('getid3/getid3/getid3.php');
	
	$getID3 = new getID3;

	$picID = mysqli_real_escape_string(Database::$conn, $_POST['picID']);
	$catID = mysqli_real_escape_string(Database::$conn, $_POST['catID']);

	$myVar = $_FILES['videoHover']['name'];

	 if ($myVar != "") {

		$uploaddir = "../videos/";
		$cleanFile = $picID . "_" . $myVar;
		$uploadfile = $uploaddir . $cleanFile;

		if (move_uploaded_file($_FILES['videoHover']['tmp_name'], $uploadfile)) {

		}

		//UPDATE DATABASE

		$fileName = $cleanFile;
		$filePath = "../videos/" . $fileName;
		
		$ThisFileInfo = $getID3->analyze($filePath);
		
		$width = $ThisFileInfo['video']['resolution_x'];
		$height = $ThisFileInfo['video']['resolution_y'];
		
		$query1 = "SELECT * FROM videos WHERE picid = '$picID'";
		
		$result1 = mysqli_query(Database::$conn, $query1);
		
		if (mysqli_num_rows($result1) > 0 ) {

			$query = "UPDATE videos SET hoverFile = '$fileName', hoverWidth = '$width', hoverHeight = '$height' WHERE picid = '$picID'";
			
		} else {
		
			$query = "INSERT INTO videos (hoverFile, hoverWidth, hoverHeight, picid) VALUES ('$fileName', '$width', '$height', '$picID')";
		
		}

		$result = mysqli_query(Database::$conn, $query);

		if (!$result) {
				die('Could not query:' . mysqli_error(Database::$conn));
				exit;
		}

	}

	echo "success";

	 //header("Location: detail.php?picID=" . $picID . "&category=" . $catID . "&status=main_image_has_been_updated");

?>