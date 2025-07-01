<?php
require_once '../includes/initialize.php';
require_once '../src/User.php';

// Allow CORS for PWA support
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, X-Requested-With');

// Handle preflight requests
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit;
}

// Only allow POST requests
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    errorResponse('Invalid request method');
}

$database = new Database();
$db = $database->connect();
$user = new User($db);

// Get posted data
$data = json_decode(file_get_contents("php://input"));

if(!$data || !isset($data->email) || !isset($data->password)) {
    errorResponse('Missing required fields');
}

// Set user properties
$user->email = $data->email;
$user->password = $data->password;

try {
    if($user->register()) {        successResponse([
            'message' => 'User registered successfully',            'user' => [
                'username' => $user->email, // Username is same as email
                'email' => $user->email
            ]
        ], 201);
    }
} catch(Exception $e) {
    errorResponse($e->getMessage(), 400);
}
