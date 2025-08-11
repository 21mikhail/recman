<?php

namespace Service\System\Http;

use Service\Auth\Auth;
use Service\System\App;
use Service\Auth\NotLoggedInException;
use Smarty\Smarty;

class BaseController
{

    protected bool $auth = false;

    final public function __construct(protected Smarty $view)
    {
        $this->init();
        $this->preload();
    }

    private function init(): void
    {
        try {
            if ($this->auth && !Auth::isLoggedIn()) {
                throw new NotLoggedInException('Not logged in');
            }
            $this->view->assign('user', Auth::user() ? Auth::user()->toArray() : null);
            $this->view->assign('csrf_token', App::instance()->getRequest()->getCSRFToken());
        } catch (NotLoggedInException $e) {
            App::instance()->getRequest()->redirect('/login');
        }
    }

    public function preload()
    {

    }
}