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

$connection->insert('users', [
    'department_id' => 12,
    'name' => 'Uran Hajzeraj',
    'email' => 'uran+10@duck.com',
    'role' => 'admin',
    'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',
    'created_at' => new DateTimeImmutable(),
], ['created_at' => 'datetime']);
