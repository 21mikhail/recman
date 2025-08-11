<?php

namespace Controller;

use Service\Auth\Auth;
use Service\System\Http\BaseController;
use Service\System\Http\RequestInterface;

class AdminController extends BaseController
{

    protected bool $auth = true;

    public function dashboard(RequestInterface $request)
    {
        $this->view->display('admin/dashboard.tpl');
    }

    public function logout(RequestInterface $request)
    {
        Auth::logout();
    }
}