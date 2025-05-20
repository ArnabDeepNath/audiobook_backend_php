<?php
class Tags {
    private $conn;
    private $table = 'shop_tags';
    private $translation_table = 'shop_tags_translations';

    public $id;
    public $sub_for;
    public $position;
    public $created_at;
    public $updated_at;
    public $name;
    public $abbr;

    public function __construct($db) {
        $this->conn = $db;
    }

    public function read() {
        $query = "SELECT t.*, tt.name 
                FROM " . $this->table . " t
                LEFT JOIN " . $this->translation_table . " tt 
                    ON t.id = tt.for_id 
                WHERE tt.abbr = :abbr
                ORDER BY t.position";

        $stmt = $this->conn->prepare($query);
        
        // Set default language to English if not specified
        $this->abbr = $this->abbr ?? 'en';
        $stmt->bindParam(':abbr', $this->abbr);
        
        $stmt->execute();
        return $stmt;
    }

    public function readOne() {
        $query = "SELECT t.*, tt.name 
                FROM " . $this->table . " t
                LEFT JOIN " . $this->translation_table . " tt 
                    ON t.id = tt.for_id 
                WHERE t.id = :id AND tt.abbr = :abbr
                LIMIT 1";

        $stmt = $this->conn->prepare($query);
        
        $stmt->bindParam(':id', $this->id);
        $this->abbr = $this->abbr ?? 'en';
        $stmt->bindParam(':abbr', $this->abbr);
        
        $stmt->execute();
        return $stmt;
    }
}
