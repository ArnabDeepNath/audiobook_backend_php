<?php
require_once '../includes/initialize.php';
require_once '../src/Audiobook.php';

$database = new Database();
$db = $database->connect();
$audiobook = new Audiobook($db);

$result = $audiobook->read();
$num = $result->rowCount();

if($num > 0) {
    $audiobooks_arr = array();
    while($row = $result->fetch(PDO::FETCH_ASSOC)) {
        extract($row);
        $audiobook_item = array(            'id' => $id,
            'title' => $title,
            'description' => $description,
            'folder' => $folder,
            'image' => $image,
            'file_type' => $file_type,
            'file_path' => $file_path,
            'time' => $time,
            'visibility' => $visibility,
            'shop_categorie' => $shop_categorie,
            'book_author_id' => $book_author_id,
            'tag_ids' => $tag_ids,
            'quantity' => $quantity,
            'is_free' => $is_free,
            'free_description' => $free_description,
            'procurement' => $procurement,
            'in_slider' => $in_slider,
            'url' => $url,
            'virtual_products' => $virtual_products,
            'brand_id' => $brand_id,
            'position' => $position,
            'vendor_id' => $vendor_id,
            'author_id' => $author_id,
            'created_at' => $created_at,
            'updated_at' => $updated_at
        );
        array_push($audiobooks_arr, $audiobook_item);
    }
    successResponse($audiobooks_arr);
} else {
    successResponse(array());
}