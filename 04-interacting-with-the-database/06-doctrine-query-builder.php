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

$result = $connection->createQueryBuilder()
    ->select('*')
    ->from('users')
    ->andWhere('email = :email')
    ->setParameter('email', 'uran@duck.com')
    ->executeQuery()
    ->fetchAssociative();

dump($result);
