<?php
require_once '../includes/initialize.php';
require_once '../src/Audiobook.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    errorResponse('Invalid request method');
}

$database = new Database();
$db = $database->connect();
$audiobook = new Audiobook($db);

$data = json_decode(file_get_contents("php://input"));

if(!$data || !isset($data->title)) {
    errorResponse('Missing required fields');
}

// Set translation fields
$audiobook->title = $data->title;
$audiobook->description = $data->description ?? '';
$audiobook->lang_code = $data->lang_code ?? 'en';

// Set product fields
$audiobook->folder = $data->folder ?? '';
$audiobook->folder_with_images = $data->folder_with_images ?? '';
$audiobook->image = $data->image ?? '';
$audiobook->file_type = $data->file_type ?? '';
$audiobook->file_path = $data->file_path ?? '';
$audiobook->time = $data->time ?? '';
$audiobook->visibility = $data->visibility ?? 1;
$audiobook->shop_categorie = $data->shop_categorie ?? '';
$audiobook->book_author_id = $data->book_author_id ?? '';
$audiobook->tag_ids = $data->tag_ids ?? '';
$audiobook->quantity = $data->quantity ?? 1;
$audiobook->is_free = $data->is_free ?? 0;
$audiobook->free_description = $data->free_description ?? '';
$audiobook->procurement = $data->procurement ?? '';
$audiobook->in_slider = $data->in_slider ?? 0;
$audiobook->url = $data->url ?? '';
$audiobook->virtual_products = $data->virtual_products ?? 0;
$audiobook->brand_id = $data->brand_id ?? null;
$audiobook->position = $data->position ?? 0;
$audiobook->vendor_id = $data->vendor_id ?? null;
$audiobook->author_id = $data->author_id ?? null;

if($audiobook->create()) {
    successResponse([
        'message' => 'Audiobook created successfully',
        'id' => $audiobook->id
    ], 201);
} else {
    errorResponse('Failed to create audiobook');
}