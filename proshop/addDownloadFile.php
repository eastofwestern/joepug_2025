<?php

session_start();
include 'includes/secure.php';
include '../includes/connect.php';
include 'includes/functions.php';

$target_dir = "../downloads/";
$target_file = $target_dir . basename($_FILES["download_file"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

// Check if file already exists
if (file_exists($target_file)) {
    echo "Sorry, file already exists.<br /><br />";
    echo '<a href="/downloads/' . $_FILES["download_file"]["name"] . '" target="_blank">/downloads/' . $_FILES["download_file"]["name"] . '</a><br /><br />';
    echo '<a href="main.php">Return to Dashboard</a>';
    $uploadOk = 0;
    exit;
}

// Allow certain file formats
if (
    $imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
    && $imageFileType != "gif" && $imageFileType != "pdf"
) {
    echo "Sorry, only JPG, JPEG, PNG, GIF and PDF files are allowed.<br /><br />";
    echo '<a href="main.php">Return to Dashboard</a>';
    $uploadOk = 0;
    exit;
}

// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
    // if everything is ok, try to upload file
} else {
    if (move_uploaded_file($_FILES["download_file"]["tmp_name"], $target_file)) {
        echo "The file " . htmlspecialchars(basename($_FILES["download_file"]["name"])) . " has been uploaded.<br /><br />";
        echo '<a href="/downloads/' . $_FILES["download_file"]["name"] . '" target="_blank">/downloads/' . $_FILES["download_file"]["name"] . '</a><br /><br />';
        echo '<a href="main.php">Return to Dashboard</a>';
    } else {
        echo "Sorry, there was an error uploading your file.<br /><br />";
        echo '<a href="main.php">Return to Dashboard</a>';
    }
}
