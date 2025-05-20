<?php
require_once '../includes/initialize.php';
require_once '../src/Tags.php';

$database = new Database();
$db = $database->connect();
$tags = new Tags($db);

// Set language from query parameter if provided
$tags->abbr = isset($_GET['lang']) ? htmlspecialchars(strip_tags($_GET['lang'])) : 'en';

// Check if specific ID is requested
if(isset($_GET['id'])) {
    $tags->id = htmlspecialchars(strip_tags($_GET['id']));
    $result = $tags->readOne();
} else {
    $result = $tags->read();
}

$num = $result->rowCount();

if($num > 0) {
    $tags_arr = array();
    while($row = $result->fetch(PDO::FETCH_ASSOC)) {
        extract($row);
        $tag_item = array(
            'id' => $id,
            'name' => $name,
            'sub_for' => $sub_for,
            'position' => $position,
            'created_at' => $created_at,
            'updated_at' => $updated_at
        );
        array_push($tags_arr, $tag_item);
    }
    successResponse($tags_arr);
} else {
    successResponse(array());
}
