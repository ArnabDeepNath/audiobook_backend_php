<?php
// This is a simple ping endpoint for checking API availability
// Place this file in the server root directory (e.g., granthakatha.com/pdoapp/public/)

// Allow CORS for PWA support
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, X-Requested-With');

// Handle preflight requests
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit;
}

// Return a simple JSON response
header('Content-Type: application/json');
echo json_encode(['status' => 'ok', 'message' => 'API is available']);
?>
