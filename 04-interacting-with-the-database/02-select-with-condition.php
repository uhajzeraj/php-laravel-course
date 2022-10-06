<?php

require 'vendor/autoload.php';

$user = 'root';
$pass = '';

try {
    $connection = new PDO('mysql:host=localhost;dbname=flossk_demo', $user, $pass);

    $statement = $connection->prepare('SELECT * FROM users WHERE department_id = ?'); // replace ? with :departmentId

    //========================================
    // Use this
    $statement->bindValue(1, 2); // then do $statement->bindValue('departmentId', 2); b

    $statement->execute();
    //========================================
    // Or
    // $statement->execute([2]);
    //========================================

    foreach ($statement->fetchAll(PDO::FETCH_ASSOC) as $user) {
        dump($user);
    }

    $connection = null;
} catch (PDOException $e) {
    print $e->getMessage() . PHP_EOL;
    die();
}
