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

if(!$data || !isset($data->username) || !isset($data->email) || !isset($data->password)) {
    errorResponse('Missing required fields');
}

// Set user properties
$user->username = $data->username;
$user->email = $data->email;
$user->password = $data->password;

try {
    if($user->register()) {
        successResponse([
            'message' => 'User registered successfully',            'user' => [
                'username' => $user->username,
                'email' => $user->email
            ]
        ], 201);
    }
} catch(Exception $e) {
    errorResponse($e->getMessage(), 400);
}
