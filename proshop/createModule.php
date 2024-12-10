<?php

session_start();
include 'includes/secure.php';
include '../includes/connect.php';
include 'includes/functions.php';

if (isset($_POST["myContent"])) {
	$data_json = $_POST["myContent"];

	$data_array = json_decode($data_json, true);

	if ($data_array !== null) {
		$catID = $data_array["catID"];
		$picID = $data_array["picID"];
		$title = $data_array["title"];
		$pageType = $data_array["pageType"];
	}
} else {
	echo "Error!";
}

if (!isset($picID)) {
	echo "error updating page!";
	exit;
}

$sql1 = "INSERT INTO modules (picid, title, pageType, status, sortBy) VALUES ('$picID', '$title', '$pageType', 'live', '500')";

$result1 = mysqli_query(Database::$conn, $sql1);

$modID = mysqli_insert_id(Database::$conn);

echo $modID;
