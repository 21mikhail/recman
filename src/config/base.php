<?php
if (php_sapi_name() !== 'cli') {
    define('HOST_NAME', $_SERVER['SERVER_NAME']);
    define('SITE_URL', 'https://' . $_SERVER['SERVER_NAME']);

    define('ROOT_PATH', dirname(__DIR__));
    define('PATH_LOG_FILES', ROOT_PATH . '/logs');

    define('TEMPLATES_PATH', ROOT_PATH . '/templates/');
    define('TEMPLATES_CACHE_PATH', ROOT_PATH . '/templates_c/');

    define('USER_SESSION_KEY', 'USER_ID');

    define('SALT', '15FcvLxaD3F6zUXqicV7');
}

define('DB_DEFAULT', [
    'driver' => 'mysql',
    'host' => $_SERVER['MYSQL_HOST'],
    'port' => $_SERVER['MYSQL_PORT'],
    'database' => $_SERVER['MYSQL_DATABASE'],
    'username' => $_SERVER['MYSQL_USER'],
    'password' => $_SERVER['MYSQL_PASSWORD'],
    'charset' => 'utf8',
    'collation' => 'utf8_unicode_ci',
    'prefix' => '',
]);