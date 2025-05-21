<?php
require_once '../includes/initialize.php';
require_once '../src/User.php';

// Only allow POST requests
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    errorResponse('Invalid request method');
}

$database = new Database();
$db = $database->connect();
$user = new User($db);

// Get posted data
$data = json_decode(file_get_contents("php://input"));

if(!$data || !isset($data->username) || !isset($data->password)) {
    errorResponse('Missing required fields');
}

if($user->login($data->username, $data->password)) {
    // Debug: Log the user object
    error_log('Debug - User object after login: ' . print_r($user, true));
    
    successResponse([
        'message' => 'Login successful',
        'user' => [
            'id' => (int)$user->id,
            'username' => $user->username,
            'email' => $user->email,
            'role' => $user->role
        ]
    ]);
} else {
    errorResponse('Invalid credentials', 401);
}
