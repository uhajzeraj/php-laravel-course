<?php

use Doctrine\DBAL\DriverManager;

require 'vendor/autoload.php';

$connectionParams = [
    'dbname' => 'flossk_demo',
    'user' => 'root',
    'password' => '',
    'host' => 'localhost',
    'driver' => 'pdo_mysql',
];

$connection = DriverManager::getConnection($connectionParams);

//==============================================================================
// $sql = 'SELECT * FROM users';

// $result = $connection->executeQuery($sql);

// while (($row = $result->fetchAssociative()) !== false) {
//     dump($row);
// }
//==============================================================================
// $sql = 'SELECT * FROM users WHERE role = :role';
// $statement = $connection->prepare($sql);
// $statement->bindValue('role', 'admin');

// $result = $statement->executeQuery();

// $users = $result->fetchAllAssociative();

// foreach ($users as $user) {
//     dump($user);
// }
