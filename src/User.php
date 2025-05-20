<?php
class User {
    private $conn;
    private $table = 'users';

    // User properties
    public $id;
    public $username;
    public $email;
    public $password;
    public $name;
    public $phone;
    public $created_at;
    public $updated_at;

    public function __construct($db) {
        $this->conn = $db;
    }

    public function register() {
        // Check if email or username already exists
        if ($this->emailExists() || $this->usernameExists()) {
            return false;
        }

        $query = "INSERT INTO " . $this->table . "
                SET
                    username = :username,
                    email = :email,
                    password = :password,
                    name = :name,
                    phone = :phone";

        $stmt = $this->conn->prepare($query);

        // Sanitize input
        $this->username = htmlspecialchars(strip_tags($this->username));
        $this->email = htmlspecialchars(strip_tags($this->email));
        $this->password = md5($this->password); // Using MD5 as specified
        $this->name = htmlspecialchars(strip_tags($this->name));
        $this->phone = htmlspecialchars(strip_tags($this->phone));

        // Bind parameters
        $stmt->bindParam(':username', $this->username);
        $stmt->bindParam(':email', $this->email);
        $stmt->bindParam(':password', $this->password);
        $stmt->bindParam(':name', $this->name);
        $stmt->bindParam(':phone', $this->phone);

        if($stmt->execute()) {
            $this->id = $this->conn->lastInsertId();
            return true;
        }
        return false;
    }

    public function login($username, $password) {
        // Query to check both username and email
        $query = "SELECT id, username, email, name, phone 
                FROM " . $this->table . " 
                WHERE (username = :username OR email = :username) 
                AND password = :password 
                LIMIT 1";

        $stmt = $this->conn->prepare($query);

        // Sanitize
        $username = htmlspecialchars(strip_tags($username));
        $password = md5($password);

        // Bind parameters
        $stmt->bindParam(':username', $username);
        $stmt->bindParam(':password', $password);

        $stmt->execute();

        if($stmt->rowCount() > 0) {
            $row = $stmt->fetch(PDO::FETCH_ASSOC);
            
            // Set properties
            $this->id = $row['id'];
            $this->username = $row['username'];
            $this->email = $row['email'];
            $this->name = $row['name'];
            $this->phone = $row['phone'];

            return true;
        }

        return false;
    }

    private function emailExists() {
        $query = "SELECT id FROM " . $this->table . " WHERE email = :email LIMIT 1";
        $stmt = $this->conn->prepare($query);
        
        $this->email = htmlspecialchars(strip_tags($this->email));
        $stmt->bindParam(':email', $this->email);
        
        $stmt->execute();
        return $stmt->rowCount() > 0;
    }

    private function usernameExists() {
        $query = "SELECT id FROM " . $this->table . " WHERE username = :username LIMIT 1";
        $stmt = $this->conn->prepare($query);
        
        $this->username = htmlspecialchars(strip_tags($this->username));
        $stmt->bindParam(':username', $this->username);
        
        $stmt->execute();
        return $stmt->rowCount() > 0;
    }
}
