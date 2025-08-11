<?php

namespace Service\Validation;
class BaseValidation
{
    public static function validateEmail($email)
    {
        return filter_var($email, FILTER_VALIDATE_EMAIL);
    }


}