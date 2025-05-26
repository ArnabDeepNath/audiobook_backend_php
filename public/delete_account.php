<?php
// Prevent PHP errors from being output
error_reporting(E_ALL);
ini_set('display_errors', 0);

// Required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

try {
    // Include database and user object files
    require_once '../includes/initialize.php';
    require_once '../src/User.php';

    // Get database connection
    try {
        $database = new Database();
        $db = $database->getConnection();
        if (!$db) {
            throw new Exception("Failed to connect to database");
        }
    } catch (Exception $e) {
        errorResponse("Database connection failed: " . $e->getMessage(), 500);
    }

    // Initialize user object
    $user = new User($db);

    // Get posted data
    $rawData = file_get_contents("php://input");
    if ($rawData === false) {
        errorResponse("Failed to read request data", 400);
    }
    
    $data = json_decode($rawData);

    // Check if JSON was parsed correctly
    if (json_last_error() !== JSON_ERROR_NONE) {
        errorResponse("Invalid JSON data provided", 400);
    }

    // Make sure data is not empty and contains required fields
    if(empty($data->username) || empty($data->password)) {
        errorResponse("Username and password are required", 400);
    }    // Debug logging
    error_log("Attempting to delete account for username: " . $data->username);
    
    // Check if user exists first
    $checkQuery = "SELECT username FROM users WHERE username = :username";
    $stmt = $db->prepare($checkQuery);
    $stmt->bindParam(':username', $data->username);
    $stmt->execute();
    error_log("User exists check result: " . ($stmt->rowCount() > 0 ? "Yes" : "No"));
    
    // Try to delete the account
    $result = $user->deleteAccount($data->username, $data->password);
    
    error_log("Delete account result: " . print_r($result, true));
    
    if($result['success']) {
        successResponse(array("message" => $result['message']));
    } else {
        errorResponse($result['message'], 401);
    }

} catch (Exception $e) {
    errorResponse("Server error: " . $e->getMessage(), 500);
}
