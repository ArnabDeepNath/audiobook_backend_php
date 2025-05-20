<?php
class Categories {
    private $conn;
    private $table = 'shop_categories';
    private $translation_table = 'shop_categories_translations';

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
        $query = "SELECT c.*, ct.name 
                FROM " . $this->table . " c
                LEFT JOIN " . $this->translation_table . " ct 
                    ON c.id = ct.for_id 
                WHERE ct.abbr = :abbr
                ORDER BY c.position";

        $stmt = $this->conn->prepare($query);
        
        // Set default language to English if not specified
        $this->abbr = $this->abbr ?? 'en';
        $stmt->bindParam(':abbr', $this->abbr);
        
        $stmt->execute();
        return $stmt;
    }

    public function readOne() {
        $query = "SELECT c.*, ct.name 
                FROM " . $this->table . " c
                LEFT JOIN " . $this->translation_table . " ct 
                    ON c.id = ct.for_id 
                WHERE c.id = :id AND ct.abbr = :abbr
                LIMIT 1";

        $stmt = $this->conn->prepare($query);
        
        $stmt->bindParam(':id', $this->id);
        $this->abbr = $this->abbr ?? 'en';
        $stmt->bindParam(':abbr', $this->abbr);
        
        $stmt->execute();
        return $stmt;
    }
}
