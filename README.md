# Audiobook Backend API

A PHP-based REST API for managing audiobooks.

## Requirements

- PHP 7.4 or higher
- MySQL 5.7 or higher
- PDO PHP Extension
- Apache/Nginx web server

## Setup

1. Configure your database connection in `config/database.php`
2. Import the database schema from `database/schema.sql`
3. Ensure your web server is configured to serve from the `public` directory

## API Endpoints

### Get All Audiobooks

- **URL**: `/public/get_audiobooks.php`
- **Method**: GET
- **Response**: List of all audiobooks

### Create Audiobook

- **URL**: `/public/create_audiobook.php`
- **Method**: POST
- **Body**:

```json
{
  "title": "Book Title",
  "author": "Author Name",
  "narrator": "Narrator Name",
  "duration": "HH:MM:SS",
  "file_path": "/path/to/audio/file",
  "cover_image": "/path/to/cover/image"
}
```

## Security

- Input sanitization is implemented
- PDO prepared statements are used to prevent SQL injection
- Basic error handling and response formatting
