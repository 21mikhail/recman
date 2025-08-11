<?php

namespace Service\System\DB;

use PDO;
use ReflectionClass;

class BaseModel implements DbInterface
{
    protected string $connection = 'default';
    protected array $attributes = [];

    protected ?string $table = null;

    protected PDO $db;


    public function __get(string $name)
    {
        return $this->attributes[$name] ?? null;
    }

    public function checkPassword($password): bool
    {
        return $this->password && hash('sha256', SALT . $password . SALT) === $this->password;
    }

    public function __set(string $name, $value): void
    {
        if ($name === 'password') {
            $value = hash('sha256', SALT . $value . SALT);
        }
        $this->attributes[$name] = $value;
    }

    final public function __construct()
    {
        $this->db = Connections::instance()->getConnection($this->connection);
    }

    public function commit(): bool
    {
        try {

            $this->db->beginTransaction();
            $columnsString = '';
            $valueString = '';
            foreach ($this->attributes as $name => $value) {
                $columnsString .= $name . ',';
                $valueString .= ':' . $name . ',';
            }

            $columnsString = '(' . substr($columnsString, 0, -1) . ')';
            $valueString = '(' . substr($valueString, 0, -1) . ')';

            $reflection = new ReflectionClass($this);
            $tableName = $this->table ?? strtolower($reflection->getShortName() . 's');

            $sql = 'INSERT INTO ' . $tableName . ' ' . $columnsString . '  VALUES  ' . $valueString;

            $stmt = $this->db->prepare($sql);
            $stmt->execute($this->attributes);
            $this->attributes['id'] = $this->db->lastInsertId();
            $this->db->commit();
            return true;
        } catch (\Exception $e) {
            $this->db->rollback();
            return false;
        }
    }


    public function update(): bool
    {
        // TODO: Implement update() method.
        return false;
    }

    public function delete(): bool
    {
        // TODO: Implement delete() method.
        return false;
    }

    public function toArray(): array
    {
        return $this->attributes;
    }


}