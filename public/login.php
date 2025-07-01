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
$db = $database->getConnection();
$user = new User($db);

// Get posted data
$data = json_decode(file_get_contents("php://input"));

if(!$data || !isset($data->email) || !isset($data->password)) {
    errorResponse('Missing required fields');
}

// User will provide email, but backend still uses both username and email fields
if($user->login($data->email, $data->password)) {
    // Debug: Log the user object
    error_log('Debug - User object after login: ' . print_r($user, true));    successResponse([
        'message' => 'Login successful',
        'user' => [
            'id' => (int)$user->id,
            'username' => $user->username, // Include username in response
            'email' => $user->email,
            'role' => $user->role
        ]
    ]);
} else {
    errorResponse('Invalid credentials', 401);
}
