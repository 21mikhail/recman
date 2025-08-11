<?php

namespace Controller;

use InvalidArgumentException;
use Model\User;
use Service\Auth\Auth;
use Service\System\Http\BaseController;
use Service\System\Http\RequestInterface;
use Service\Validation\BaseValidation;

class LoginController extends BaseController
{

    public function login(RequestInterface $request): void
    {

        try {
            if ($request->getMethod() == 'POST') {

                if ($request->getSession('csrf_token') != $request->getPost('csrf_token')) {
                    throw new InvalidArgumentException('Invalid CSRF Token');
                }

                if (!BaseValidation::validateEmail($request->getPost('email'))) {
                    throw new InvalidArgumentException('Invalid email');
                }

                $user = User::findByEmail($request->getPost('email'));
                if (!$user) {
                    throw new InvalidArgumentException('User not found');
                }

                if (!$user->checkPassword($request->getPost('password'))) {
                    throw new InvalidArgumentException('Password is incorrect');
                }

                Auth::login($user);

                $request->renewCSRFToken();

                $request->redirect('/dashboard');

            }
        } catch (InvalidArgumentException $e) {
            $this->view->assign('alert_message', $e->getMessage());
        }

        $this->view->display('login.tpl');
    }

    public function registration(RequestInterface $request): void
    {
        try {
            if ($request->getMethod() == 'POST') {
                if ($request->getSession('csrf_token') != $request->getPost('csrf_token')) {
                    throw new InvalidArgumentException('Invalid CSRF Token');
                }

                $user = User::findByEmail($request->getPost('email'));
                if ($user) {
                    throw new InvalidArgumentException('User already exists');
                }

                //todo Validation rows

                $user = new User();
                $user->first_name = $request->getPost('first_name');
                $user->last_name = $request->getPost('last_name');
                $user->email = $request->getPost('email');
                $user->phone = $request->getPost('phone');
                $user->password = $request->getPost('password');
                $user->commit();

                Auth::login($user);

                $request->renewCSRFToken();

                $request->redirect('/dashboard');
            }

        } catch (InvalidArgumentException $e) {
            $this->view->assign('alert_message', $e->getMessage());
        }


        $this->view->display('registration.tpl');
    }

    public function logout(RequestInterface $request): void
    {
        Auth::logout();
        $request->redirect('/');
    }


}