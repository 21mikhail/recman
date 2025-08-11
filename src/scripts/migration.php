#!/usr/bin/php
<?php


use Service\System\DB\Connections;

require dirname(__DIR__) . '/config/base.php';
require dirname(__DIR__) . '/vendor/autoload.php';


echo "\033[0;32mStart Migration ...\033[0m" . PHP_EOL;

Connections::instance()->setConnection(
    (function () {
        $pdo = new PDO('mysql:host=' . DB_DEFAULT['host'] . ';dbname=' . DB_DEFAULT['database'], DB_DEFAULT['username'], DB_DEFAULT['password']);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $pdo;
    })()
);


echo "\033[1;3mAdd table `users`\033[0m" . PHP_EOL;

$pdo = Connections::instance()->getConnection('default');

$sql = "CREATE TABLE IF NOT EXISTS users (
        id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        first_name VARCHAR(128) DEFAULT 'User',
        last_name VARCHAR(128) DEFAULT NULL,
        email VARCHAR(255) UNIQUE NOT NULL,
        password VARCHAR(255) NOT NULL,
        phone VARCHAR(255) DEFAULT NULL,
        registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        INDEX index_email (email)
    )";

$pdo->exec($sql);

echo "\033[0;32mEnd Migration ...\033[0m" . PHP_EOL;