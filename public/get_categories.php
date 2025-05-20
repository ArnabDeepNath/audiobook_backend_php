<?php
require_once '../includes/initialize.php';
require_once '../src/Categories.php';

$database = new Database();
$db = $database->connect();
$categories = new Categories($db);

// Set language from query parameter if provided
$categories->abbr = isset($_GET['lang']) ? htmlspecialchars(strip_tags($_GET['lang'])) : 'en';

// Check if specific ID is requested
if(isset($_GET['id'])) {
    $categories->id = htmlspecialchars(strip_tags($_GET['id']));
    $result = $categories->readOne();
} else {
    $result = $categories->read();
}

$num = $result->rowCount();

if($num > 0) {
    $categories_arr = array();
    while($row = $result->fetch(PDO::FETCH_ASSOC)) {
        extract($row);
        $category_item = array(
            'id' => $id,
            'name' => $name,
            'sub_for' => $sub_for,
            'position' => $position,
            'created_at' => $created_at,
            'updated_at' => $updated_at
        );
        array_push($categories_arr, $category_item);
    }
    successResponse($categories_arr);
} else {
    successResponse(array());
}
