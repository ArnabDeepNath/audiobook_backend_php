<?php
class Audiobook {
    private $conn;
    private $table = 'products';
    private $translation_table = 'products_translations';    // Product table fields
    public $id;
    public $folder;
    public $image;
    public $file_type;
    public $file_path;
    public $time;
    public $time_created;
    public $time_update;
    public $visibility;
    public $shop_categorie;
    public $book_author_id;
    public $tag_ids;
    public $quantity;
    public $is_free;
    public $free_description;
    public $procurement;
    public $in_slider;
    public $url;
    public $virtual_products;
    public $brand_id;
    public $position;
    public $vendor_id;
    public $author_id;
    public $created_at;
    public $updated_at;

    // Translation table fields
    public $title;
    public $description;
    public $lang_code = 'en'; // Default language code

    public function __construct($db) {
        $this->conn = $db;
    }

    public function create() {
        // Begin transaction to ensure both inserts succeed or fail together
        $this->conn->beginTransaction();

        try {
            // Insert into products table
$query = "INSERT INTO " . $this->table . "
            SET
                folder = :folder,
                image = :image,
                file_type = :file_type,
                file_path = :file_path,
                time = :time,
                visibility = :visibility,
                shop_categorie = :shop_categorie,
                book_author_id = :book_author_id,
                tag_ids = :tag_ids,
                quantity = :quantity,
                is_free = :is_free,
                free_description = :free_description,
                procurement = :procurement,
                in_slider = :in_slider,
                url = :url,
                virtual_products = :virtual_products,
                brand_id = :brand_id,
                position = :position,
                vendor_id = :vendor_id,
                author_id = :author_id,
                created_at = CURRENT_TIMESTAMP,
                updated_at = CURRENT_TIMESTAMP";

            $stmt = $this->conn->prepare($query);

            // Sanitize and bind product parameters
            $this->sanitizeProductFields();
            $this->bindProductParameters($stmt);

            if(!$stmt->execute()) {
                throw new Exception("Failed to insert into products table");
            }

            $this->id = $this->conn->lastInsertId();

            // Insert into products_translation table
            $translation_query = "INSERT INTO " . $this->translation_table . " (
                                    for_id,
                                    title,
                                    description,
                                    lang_code
                                ) VALUES (
                                    :for_id,
                                    :title,
                                    :description,
                                    :lang_code
                                )";

            $trans_stmt = $this->conn->prepare($translation_query);

            // Sanitize translation fields
            $this->title = htmlspecialchars(strip_tags($this->title));
            $this->description = htmlspecialchars(strip_tags($this->description));
            $this->lang_code = htmlspecialchars(strip_tags($this->lang_code));

            // Bind translation parameters
            $trans_stmt->bindParam(':for_id', $this->id);
            $trans_stmt->bindParam(':title', $this->title);
            $trans_stmt->bindParam(':description', $this->description);
            $trans_stmt->bindParam(':lang_code', $this->lang_code);

            if(!$trans_stmt->execute()) {
                throw new Exception("Failed to insert into products_translations table");
            }

            // Commit transaction
            $this->conn->commit();
            return true;

        } catch(Exception $e) {
            // Rollback transaction on error
            $this->conn->rollBack();
            return false;
        }
    }    public function read() {
        $query = "SELECT p.*, pt.title, pt.description 
                FROM " . $this->table . " p
                LEFT JOIN " . $this->translation_table . " pt 
                    ON p.id = pt.for_id";

        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        return $stmt;
    }

    public function readOne() {
        $query = "SELECT p.*, pt.title, pt.description 
                FROM " . $this->table . " p
                LEFT JOIN " . $this->translation_table . " pt 
                    ON p.id = pt.for_id 
                WHERE p.id = :id
                LIMIT 1";

        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id', $this->id);
       
        $stmt->execute();
        return $stmt;
    }

    public function update() {
        $this->conn->beginTransaction();

        try {
            // Update products table
            $query = "UPDATE " . $this->table . "
                    SET
                        folder = :folder,
                        image = :image,
                        file_type = :file_type,
                        file_path = :file_path,
                        time = :time,
                        visibility = :visibility,
                        shop_categorie = :shop_categorie,
                        book_author_id = :book_author_id,
                        tag_ids = :tag_ids,
                        quantity = :quantity,
                        is_free = :is_free,
                        free_description = :free_description,
                        procurement = :procurement,
                        in_slider = :in_slider,
                        url = :url,
                        virtual_products = :virtual_products,
                        brand_id = :brand_id,
                        position = :position,
                        vendor_id = :vendor_id,
                        author_id = :author_id,
                        updated_at = CURRENT_TIMESTAMP
                    WHERE
                        id = :id";

            $stmt = $this->conn->prepare($query);
            
            // Sanitize and bind product parameters
            $this->sanitizeProductFields();
            $this->bindProductParameters($stmt);
            $stmt->bindParam(':id', $this->id);

            if(!$stmt->execute()) {
                throw new Exception("Failed to update products table");
            }

            // Update products_translation table
            $translation_query = "UPDATE " . $this->translation_table . "
                                SET
                                    title = :title,
                                    description = :description
                                WHERE
                                    for_id = :for_id AND
                                    lang_code = :lang_code";

            $trans_stmt = $this->conn->prepare($translation_query);

            // Sanitize translation fields
            $this->title = htmlspecialchars(strip_tags($this->title));
            $this->description = htmlspecialchars(strip_tags($this->description));

            // Bind translation parameters
            $trans_stmt->bindParam(':title', $this->title);
            $trans_stmt->bindParam(':description', $this->description);
            $trans_stmt->bindParam(':for_id', $this->id);
            $trans_stmt->bindParam(':lang_code', $this->lang_code);

            if(!$trans_stmt->execute()) {
                throw new Exception("Failed to update products_translations table");
            }

            // Commit transaction
            $this->conn->commit();
            return true;

        } catch(Exception $e) {
            // Rollback transaction on error
            $this->conn->rollBack();
            return false;
        }
    }

    public function delete() {
        $this->conn->beginTransaction();

        try {
            // Delete from products_translation first (foreign key constraint)
            $translation_query = "DELETE FROM " . $this->translation_table . " 
                                WHERE for_id = :id";
            $trans_stmt = $this->conn->prepare($translation_query);
            $trans_stmt->bindParam(':id', $this->id);
            
            if(!$trans_stmt->execute()) {
                throw new Exception("Failed to delete from products_translations table");
            }

            // Then delete from products
            $query = "DELETE FROM " . $this->table . " WHERE id = :id";
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':id', $this->id);

            if(!$stmt->execute()) {
                throw new Exception("Failed to delete from products table");
            }

            // Commit transaction
            $this->conn->commit();
            return true;

        } catch(Exception $e) {
            // Rollback transaction on error
            $this->conn->rollBack();
            return false;
        }
    }

    private function sanitizeProductFields() {
        $this->folder = htmlspecialchars(strip_tags($this->folder));
        $this->image = htmlspecialchars(strip_tags($this->image));
        $this->file_type = htmlspecialchars(strip_tags($this->file_type));
        $this->file_path = htmlspecialchars(strip_tags($this->file_path));
        $this->time = htmlspecialchars(strip_tags($this->time));
        $this->visibility = htmlspecialchars(strip_tags($this->visibility));
        $this->shop_categorie = htmlspecialchars(strip_tags($this->shop_categorie));
        $this->book_author_id = htmlspecialchars(strip_tags($this->book_author_id));
        $this->tag_ids = htmlspecialchars(strip_tags($this->tag_ids));
        $this->quantity = htmlspecialchars(strip_tags($this->quantity));
        $this->is_free = htmlspecialchars(strip_tags($this->is_free));
        $this->free_description = htmlspecialchars(strip_tags($this->free_description));
        $this->procurement = htmlspecialchars(strip_tags($this->procurement));
        $this->in_slider = htmlspecialchars(strip_tags($this->in_slider));
        $this->url = htmlspecialchars(strip_tags($this->url));
        $this->virtual_products = htmlspecialchars(strip_tags($this->virtual_products));
        $this->brand_id = htmlspecialchars(strip_tags($this->brand_id));
        $this->position = htmlspecialchars(strip_tags($this->position));
        $this->vendor_id = htmlspecialchars(strip_tags($this->vendor_id));
        $this->author_id = htmlspecialchars(strip_tags($this->author_id));
    }

    private function bindProductParameters($stmt) {
        $stmt->bindParam(':folder', $this->folder);
        $stmt->bindParam(':image', $this->image);
        $stmt->bindParam(':file_type', $this->file_type);
        $stmt->bindParam(':file_path', $this->file_path);
        $stmt->bindParam(':time', $this->time);
        $stmt->bindParam(':visibility', $this->visibility);
        $stmt->bindParam(':shop_categorie', $this->shop_categorie);
        $stmt->bindParam(':book_author_id', $this->book_author_id);
        $stmt->bindParam(':tag_ids', $this->tag_ids);
        $stmt->bindParam(':quantity', $this->quantity);
        $stmt->bindParam(':is_free', $this->is_free);
        $stmt->bindParam(':free_description', $this->free_description);
        $stmt->bindParam(':procurement', $this->procurement);
        $stmt->bindParam(':in_slider', $this->in_slider);
        $stmt->bindParam(':url', $this->url);
        $stmt->bindParam(':virtual_products', $this->virtual_products);
        $stmt->bindParam(':brand_id', $this->brand_id);
        $stmt->bindParam(':position', $this->position);
        $stmt->bindParam(':vendor_id', $this->vendor_id);
        $stmt->bindParam(':author_id', $this->author_id);
    }
}
