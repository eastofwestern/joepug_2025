<?php

session_start();
include 'includes/secure.php';
include '../includes/connect.php';
include 'includes/functions.php';

$catID = mysqli_real_escape_string(Database::$conn, $_POST['catID']);
$parentID = mysqli_real_escape_string(Database::$conn, $_POST['parentID']);
$parentParentID = mysqli_real_escape_string(Database::$conn, $_POST['parentParentID']);
$source = mysqli_real_escape_string(Database::$conn, $_POST['source']);
$bgColor = mysqli_real_escape_string(Database::$conn, $_POST['bgColor']);

$sql = "UPDATE cat_list SET bgColor = '$bgColor' WHERE id = '$catID'";

$result = mysqli_query(Database::$conn, $sql);

if (!$result) {
    die('Could not query:' . mysqli_error(Database::$conn));
    exit;
}

header("Location: " . $source . "?category=" . $catID . "&parentID=" . $parentID . "&parentParentID=" . $parentParentID . "&status=page_has_been_updated");
