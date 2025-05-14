CREATE DATABASE IF NOT EXISTS audiobook_db;
USE audiobook_db;

CREATE TABLE IF NOT EXISTS audiobooks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    narrator VARCHAR(255),
    duration VARCHAR(50),
    file_path VARCHAR(255),
    cover_image VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);