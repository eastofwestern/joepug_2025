<?php

	session_start();
	include 'includes/secure.php';
	include '../includes/connect.php';
    include 'includes/functions.php';
    
    $picID = mysqli_real_escape_string(Database::$conn, $_POST["picID"]);
    $catID = mysqli_real_escape_string(Database::$conn, $_POST["catID"]);
    $url_desktop = mysqli_real_escape_string(Database::$conn, $_POST["url_desktop"]);
    $url_mobile = mysqli_real_escape_string(Database::$conn, $_POST["url_mobile"]);

    $sql1 = "SELECT id FROM videos WHERE picid = '$picID'";

    $result1 = mysqli_query(Database::$conn, $sql1);
    $num = mysqli_num_rows($result1);

    if ($num == 0) {

        $sql2 = "INSERT INTO videos (picid, url_desktop, url_mobile) VALUES ('$picID', '$url_desktop', '$url_mobile')";

    } else {

        $sql2 = "UPDATE videos SET url_desktop = '$url_desktop', url_mobile = '$url_mobile' WHERE picid = '$picID'";

    }

    $result2 = mysqli_query(Database::$conn, $sql2);

    if (!$result2) {
        die('Could not query:' . mysqli_error(Database::$conn));
        exit;
    }

    header("Location: detail.php?picID=" . $picID . "&category=" . $catID . "&status=video_links_have_been_updated");

?>