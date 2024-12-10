<?php

session_start();
include 'includes/secure.php';
include '../includes/connect.php';
include 'includes/functions.php';

$catID = mysqli_real_escape_string(Database::$conn, $_POST['catID']);
$parentID = mysqli_real_escape_string(Database::$conn, $_POST['parentID']);
$source = mysqli_real_escape_string(Database::$conn, $_POST['source']);
$content = mysqli_real_escape_string(Database::$conn, $_POST['content']);

$sql = "UPDATE cat_list SET content = '$content' WHERE id = '$catID'";

$result = mysqli_query(Database::$conn, $sql);

if (!$result) {
    die('Could not query1:' . mysqli_error(Database::$conn));
    exit;
}

header("Location: " . $source . "?category=" . $catID . "&parentID=" . $parentID . "&status=page_has_been_updated");
