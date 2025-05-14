<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST, GET, PUT, DELETE");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require_once __DIR__ . '/../config/database.php';

function errorResponse($message, $code = 400) {
    http_response_code($code);
    echo json_encode(array("error" => $message));
    exit();
}

function successResponse($data, $code = 200) {
    http_response_code($code);
    echo json_encode($data);
    exit();
}