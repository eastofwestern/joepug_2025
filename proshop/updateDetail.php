<?php

session_start();
include 'includes/secure.php';
include '../includes/connect.php';
include 'includes/functions.php';

if (isset($_POST["myContent"])) {
	$data_json = $_POST["myContent"];
	$data_array = json_decode($data_json, true);

	if ($data_array !== null) {
		$category = $data_array["catID"];
		$picID = $data_array["picID"];
		$content = $data_array["content"];
		$content2 = $data_array["content2"];
		$cleanTitle = str_replace('"', '&quot;', $data_array["title"]);
		$cleanCaption = str_replace('"', '&quot;', $data_array["caption"]);
		$bgColor = $data_array["bgColor"];
		$customSlug = $data_array["customSlug"];

		if ($cleanCaption != "caption:" and $cleanCaption != "") {
			$slug = createSlug($cleanTitle . "-" . $cleanCaption);
		} else {
			$slug = createSlug($cleanTitle);
		}

		// check if custom slug matches default slug, if different update
		$defaultSlug = $picID . "/" . $slug;
		if ($customSlug != $defaultSlug) {

			// make sure custom slug doesn't have a forward slash, also check to make sure there is no duplicate customSlug in system.
			$customSlug = createSlug($customSlug);

			$customCheck = uniqueSlug($customSlug);
			if ($customCheck > 0) {
				$addCustomSlug = "";
			}
			$addCustomSlug = $customSlug;
		} else {
			$addCustomSlug = "";
		}

		$query2 = "UPDATE pics SET title = ?, caption = ?, slug = ?, customSlug = ?, bgColor = ? WHERE id = ?";
		$stmt2 = Database::$conn->prepare($query2);
		$stmt2->bind_param("sssssi", $cleanTitle, $cleanCaption, $slug, $addCustomSlug, $bgColor, $picID);
		$stmt2->execute();

		if ($stmt2->error) {
			die('Could not query: ' . $stmt2->error);
		}

		// Check if the record exists
		$query1 = "SELECT * FROM content WHERE picID = ?";
		$stmt1 = Database::$conn->prepare($query1);
		$stmt1->bind_param("i", $picID);
		$stmt1->execute();
		$result1 = $stmt1->get_result();

		if ($result1->num_rows != 0) {
			// Update the existing record
			$query = "UPDATE content SET content = ?, content2 = ? WHERE picid = ?";
			$stmt = Database::$conn->prepare($query);
			$stmt->bind_param("ssi", $content, $content2, $picID);
		} else {
			// Insert a new record
			$query = "INSERT INTO content (picid, content, content2) VALUES (?, ?, ?)";
			$stmt = Database::$conn->prepare($query);
			$stmt->bind_param("iss", $picID, $content, $content2);
		}

		$stmt->execute();

		if ($stmt->error) {
			die('Could not query: ' . $stmt->error);
		}

		echo "Item has been Updated!";
	}
} else {
	echo "Error!";
}
