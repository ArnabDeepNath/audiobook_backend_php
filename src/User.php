<?php
class User {
    private $conn;
    private $table = 'users';    // User properties
    public $id;
    public $username; // Keep username for database compatibility
    public $email;
    public $password;
    public $role;
    public $created_at;
    public $updated_at;

    public function __construct($db) {
        $this->conn = $db;
    }    public function register() {
        // Check if email already exists
        if ($this->emailExists()) {
            return false;
        }        $query = "INSERT INTO " . $this->table . "
                SET
                    username = :username,
                    email = :email,
                    password = :password,
                    role = 'user'";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->email = htmlspecialchars(strip_tags($this->email));
        $this->password = md5($this->password); // Using MD5 as specified

        // Use email as username
        $username = $this->email;

        // Bind parameters
        $stmt->bindParam(':username', $username);
        $stmt->bindParam(':email', $this->email);
        $stmt->bindParam(':password', $this->password);

        if($stmt->execute()) {
            $this->id = $this->conn->lastInsertId();
            return true;
        }
        return false;
    }    public function login($email, $password) {        // Query to check email
        $query = "SELECT id, username, email, role 
                FROM " . $this->table . " 
                WHERE email = :email
                AND password = :password 
                LIMIT 1";

        $stmt = $this->conn->prepare($query);

        // Sanitize
        $email = htmlspecialchars(strip_tags($email));
        $password = md5($password);        // Bind parameters
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':password', $password);$stmt->execute();

        if($stmt->rowCount() > 0) {
            $row = $stmt->fetch(PDO::FETCH_ASSOC);
            
            // Debug: Log the row data
            error_log('Debug - Row data: ' . print_r($row, true));            // Set properties
            $this->id = isset($row['id']) ? (int)$row['id'] : null;
            $this->username = $row['username']; // Keep username property
            $this->email = $row['email'];
            $this->role = $row['role'];

            return true;
        }

        return false;
    }    public function deleteAccount($email, $password) {
        error_log("Entering deleteAccount function");
        // Sanitize inputs
        $email = htmlspecialchars(strip_tags($email));
        $password = md5($password); // Using MD5 as specified in existing code
        error_log("After sanitization - email: $email");

        // First check if user exists
        $checkUserQuery = "SELECT id FROM " . $this->table . " WHERE email = :email";
        error_log("User check query: $checkUserQuery");
        $checkStmt = $this->conn->prepare($checkUserQuery);
        $checkStmt->bindParam(':email', $email);
        $checkStmt->execute();        if($checkStmt->rowCount() === 0) {
            error_log("Delete account failed: Email '$email' not found");
            return ["success" => false, "message" => "Account not found"];
        }

        // Now check password
        $query = "SELECT id FROM " . $this->table . " 
                WHERE email = :email 
                AND password = :password";

        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':password', $password);
        $stmt->execute();

        if($stmt->rowCount() === 0) {
            error_log("Delete account failed: Invalid password for email '$email'");
            return ["success" => false, "message" => "Invalid password"];
        }

        // User exists and password is correct, proceed with deletion
        $deleteQuery = "DELETE FROM " . $this->table . " WHERE email = :email";
        $deleteStmt = $this->conn->prepare($deleteQuery);
        $deleteStmt->bindParam(':email', $email);        if($deleteStmt->execute()) {
            error_log("Account deleted successfully: '$email'");
            return ["success" => true, "message" => "Account deleted successfully"];
        }

        error_log("Delete account failed: Database error while deleting user with email '$email'");
        return ["success" => false, "message" => "Database error"];
    }

    private function emailExists() {
        $query = "SELECT id FROM " . $this->table . " WHERE email = :email LIMIT 1";
        $stmt = $this->conn->prepare($query);
        
        $this->email = htmlspecialchars(strip_tags($this->email));
        $stmt->bindParam(':email', $this->email);
        
        $stmt->execute();
        return $stmt->rowCount() > 0;
    }    // Username method removed as per requirement
}
