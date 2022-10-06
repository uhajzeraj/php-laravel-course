<?php

require 'vendor/autoload.php';

$user = 'root';
$pass = '';

try {
    $connection = new PDO('mysql:host=localhost;dbname=flossk_demo', $user, $pass);

    $statement = $connection->prepare("
        INSERT INTO users (department_id, name, email, role, password, created_at)
        VALUES (:departmentId, :name, :email, :role, :password, :createdAt)
    ");

    // The fields would be based on user input
    $statement->bindValue('departmentId', 12);
    $statement->bindValue('name', 'Uran Hajzeraj');
    $statement->bindValue('email', 'uran+10@duck.com');
    $statement->bindValue('role', 'admin');
    $statement->bindValue('password', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi');
    $statement->bindValue('createdAt', (new DateTimeImmutable())->format('Y-m-d H:i:s'));

    $statement->execute();

    $connection = null;
} catch (PDOException $e) {
    print $e->getMessage() . PHP_EOL;
    die();
}
