<?php

namespace Controller;

use InvalidArgumentException;
use Model\User;
use Service\Auth\Auth;
use Service\System\Http\BaseController;
use Service\System\Http\RequestInterface;
use Service\Validation\BaseValidation;

class HomeController extends BaseController
{
    public function index(): void
    {
        $this->view->display('home.tpl');
    }

}