<?php

namespace Service\Auth;

use Model\User;
use Service\System\App;

class Auth
{
    private static ?User $user = null;

    public static function isLoggedIn(): bool
    {
        return App::instance()->getRequest()->getSession(USER_SESSION_KEY, false);
    }

    public static function login(User $user): void
    {
        App::instance()->getRequest()->setSession(USER_SESSION_KEY, $user->id);
    }

    public static function logout(): void
    {
        session_destroy();
    }

    public static function user(): ?User
    {
        if (!static::isLoggedIn()) {
            return null;
        }

        if (!static::$user) {
            static::$user = User::findById(App::instance()->getRequest()->getSession(USER_SESSION_KEY));
        }

        return static::$user;
    }
}