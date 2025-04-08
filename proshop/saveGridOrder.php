<?php

session_start();
include 'includes/secure.php';
include '../includes/connect.php';
include 'includes/functions.php';

// Get JSON input
$json = file_get_contents('php://input');
$data = json_decode($json, true);

// Extract values
$order = $data['order'];

$response = [];
foreach ($order as $item) {
    $id = $item['id'];
    $catid = $item['catid'];
    $visualOrder = $item['visualOrder'];

    $sql = "UPDATE cat_pics SET vo_desktop = ? WHERE picid = ? AND catid = ?";
    $stmt = Database::$conn->prepare($sql);
    if ($stmt === false) {
        die('Prepare failed: ' . Database::$conn->error);
        $response['status'] = "error";
        $response['message'] = "Prepare failed: " . Database::$conn->error;
    }
    $stmt->bind_param("iii", $visualOrder, $id, $catid);

    $stmt->execute();
}

$response['status'] = "success";
$response['message'] = "Visual order updated successfully.";

// Send JSON response
header('Content-Type: application/json');
echo json_encode($response);
