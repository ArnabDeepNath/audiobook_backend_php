<?php
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'audiobook_app');

class Database {
    private $connection;

    public function getConnection() {
        if ($this->connection === null) {
            try {
                $this->connection = new PDO(
                    "mysql:host=" . DB_HOST . ";dbname=" . DB_NAME,
                    DB_USER,
                    DB_PASS
                );
                $this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            } catch(PDOException $e) {
                throw new Exception("Database Connection Error: " . $e->getMessage());
            }
        }
        return $this->connection;
    }
}