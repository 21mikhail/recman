<?php

namespace Service\System\Http;

use Service\System\App;

class Route implements RouteInterface
{

    const PATH_TO_CONTROLLER = 'Controller';

    public function __construct(private array $config, private RequestInterface $request)
    {

    }

    public function launch()
    {
        foreach ($this->config as $key => $route) {
            if ($key === $this->request->getPath()) {
                $params = explode(':', $route);
                $methods = explode('|', $params[0]);
                if (in_array($this->request->getMethod(), $methods)) {
                    return new (static::PATH_TO_CONTROLLER . '\\' . $params[1])(App::instance()->getView())->{$params[2]}(App::instance()->getRequest());
                }
            }
        }
        throw new \BadMethodCallException('Not found page');
    }
}