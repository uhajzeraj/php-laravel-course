<?php

require 'vendor/autoload.php';

$user = 'root';
$pass = '';

try {
    $connection = new PDO('mysql:host=localhost;dbname=flossk_demo', $user, $pass);

    foreach ($connection->query('SELECT * FROM users LIMIT 1', PDO::FETCH_ASSOC) as $row) {
        dump($row);
    }

    $connection = null;
} catch (PDOException $e) {
    print $e->getMessage() . PHP_EOL;
    die();
}

// https://www.php.net/manual/en/pdo.constants.php
