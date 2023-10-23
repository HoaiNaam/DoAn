<?php

$db_host = 'localhost';
$db_port = '3306'; // Sửa port thành 3306 hoặc cổng bạn đang sử dụng
$db_name = 'food_db';
$user_name = 'root';
$user_password = '';

$db_connection = "mysql:host=$db_host;port=$db_port;dbname=$db_name";

try {
    $conn = new PDO($db_connection, $user_name, $user_password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
} catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

?>
