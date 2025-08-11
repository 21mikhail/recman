<?php

namespace Service\System;


use Service\System\Http\RequestInterface;
use Service\System\Http\RouteInterface;
use Smarty\Smarty;

class App
{
    private static $instance;
    private RequestInterface $request;
    private RouteInterface $route;
    private Smarty $view;


    private function __construct()
    {
    }

    public static function instance(): App
    {
        if (!static::$instance) {
            static::$instance = new self();
        }
        return static::$instance;
    }

    public function setRequest(RequestInterface $request): static
    {
        $this->request = $request;
        return $this;
    }

    public function getRequest(): RequestInterface
    {
        return $this->request;
    }

    public function setRoute(RouteInterface $route): static
    {
        $this->route = $route;
        return $this;
    }

    public function getRoute(): RouteInterface
    {
        return $this->route;
    }

    public function setView(Smarty $view): static
    {
        $this->view = $view;
        return $this;
    }

    public function getView(): Smarty
    {
        return $this->view;
    }

    public function launch(): void
    {
        $this->route->launch();
    }
}