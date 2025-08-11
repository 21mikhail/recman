<?php

namespace Model;

use PDO;
use Service\System\DB\BaseModel;

class User extends BaseModel
{

    public static function findByEmail($email): ?User
    {
        $user = new User();
        $stmt = $user->db->prepare('SELECT * FROM users WHERE email = :email LIMIT 1');
        $stmt->bindParam('email', $email, PDO::PARAM_STR);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        if (!$row) {
            return null;
        }
        $user->attributes = $row;
        return $user;
    }

    public static function findById($id): ?User
    {
        $user = new User();
        $stmt = $user->db->prepare('SELECT * FROM users WHERE id = :id LIMIT 1');
        $stmt->bindParam('id', $id, PDO::PARAM_INT);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        if (!$row) {
            return null;
        }

        foreach ($row as $key => $value) {
            $user->{$key} = $value;
        }
        return $user;
    }
}