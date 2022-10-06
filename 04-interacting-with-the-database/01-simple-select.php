<?php

require 'vendor/autoload.php';

$user = 'root';
$pass = '';

try {
    $dbh = new PDO('mysql:host=localhost;dbname=flossk_demo', $user, $pass);
    foreach ($dbh->query('SELECT * FROM users LIMIT 1') as $row) {
        dump($row);
    }
    $dbh = null;
} catch (PDOException $e) {
    print $e->getMessage() . PHP_EOL;
    die();
}
