<?php

session_start();
include 'includes/secure.php';
include '../includes/connect.php';
include 'includes/functions.php';

// Get JSON input
$json = file_get_contents('php://input');
$data = json_decode($json, true);

// Extract values
$view = $data['view'];
$picid = $data['picid'];
$catid = $data['catid'];
$top = $data['top'];
$left = $data['left'];
$width = $data['width'];
$layer = $data['layer'];

if ($view === "desktop") {
    // Prepare and execute the update statement
    $stmt = Database::$conn->prepare("UPDATE cat_pics SET pos_top = ?, pos_left = ?, width = ?, layer = ? WHERE picid = ? and catid = ?");
} else {
    // Prepare and execute the update statement
    $stmt = Database::$conn->prepare("UPDATE cat_pics SET pos_top_mobile = ?, pos_left_mobile = ?, width_mobile = ?, layer_mobile = ? WHERE picid = ? and catid = ?");
}

if ($stmt === false) {
    die('Prepare failed: ' . Database::$conn->error);
}

$stmt->bind_param("dddiii", $top, $left, $width, $layer, $picid, $catid);
$stmt->execute();
$stmt->close();

// Create response array
$response = [
    'status' => 'success',
    'message' => "Received: View: $view, ID: $picid, Top: $top, Left: $left, Width: $width, Layer: $layer"
];

// Send JSON response
header('Content-Type: application/json');
echo json_encode($response);
