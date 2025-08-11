<?php

use Service\System\DB\Connections;
use Service\System\App;
use Service\System\Http\Request;
use Service\System\Http\Route;
use Services\Auth\NotLoggedInException\NotLoggedInException;
use Smarty\Smarty;

session_start();

require dirname(__DIR__) . '/config/base.php';
require dirname(__DIR__) . '/vendor/autoload.php';

try {

    Connections::instance()->setConnection(
        (function () {
            $pdo = new PDO('mysql:host=' . DB_DEFAULT['host'] . ';dbname=' . DB_DEFAULT['database'], DB_DEFAULT['username'], DB_DEFAULT['password']);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $pdo;
        })()
    );

    $app = App::instance();
    $app->setRequest(new Request())
        ->setRoute(new Route(
                (require dirname(__DIR__) . '/config/route.php'), $app->getRequest())
        )
        ->setView((function () {
            $view = new Smarty();
            $view->setCaching(false);
            $view->setForceCompile(true);
            $view->setTemplateDir(TEMPLATES_PATH);
            $view->setCompileDir(TEMPLATES_CACHE_PATH);
            return $view;
        })());
    $app->launch();
} catch (\BadMethodCallException $e) {
    http_response_code(404);
} catch (\Smarty\Exception) {
    // http_response_code(500);
}