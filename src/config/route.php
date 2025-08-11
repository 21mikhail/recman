<?php
return array(
    '/' => 'GET:HomeController:index',
    '/login' => 'GET|POST:LoginController:login',
    '/registration' => 'GET|POST:LoginController:registration',
    '/dashboard' => 'GET:AdminController:dashboard',
    '/logout' => 'GET:LoginController:logout',
);
