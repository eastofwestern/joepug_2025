<?php

session_start();
include 'includes/secure.php';
include '../includes/connect.php';
include 'includes/functions.php';

// Get JSON input
$json = file_get_contents('php://input');
$data = json_decode($json, true);

// Extract values
$picid = $data['picid'];
$catid = $data['catid'];
$top = $data['top'];
$left = $data['left'];
$width = $data['width'];
$layer = $data['layer'];

// Prepare and execute the update statement
$stmt = Database::$conn->prepare("UPDATE cat_pics SET pos_top = ?, pos_left = ?, width = ?, layer = ? WHERE picid = ? and catid = ?");
$stmt->bind_param("dddiii", $top, $left, $width, $layer, $picid, $catid);
$stmt->execute();
$stmt->close();

// Create response array
$response = [
    'status' => 'success',
    'message' => "Received: ID: $picid, Top: $top, Left: $left, Width: $width, Layer: $layer"
];

// Send JSON response
header('Content-Type: application/json');
echo json_encode($response);
