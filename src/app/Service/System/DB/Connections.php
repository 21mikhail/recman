<?php

namespace Service\System\DB;

use PDO;

class Connections
{
    private static $instance;
    /**
     * @var array<PDO>
     */
    private array $connections = [];

    private function __construct()
    {
    }

    public static function instance(): static
    {
        if (!static::$instance) {
            static::$instance = new self();
        }
        return static::$instance;
    }

    public function getConnection(string $name): PDO
    {
        return $this->connections[$name];
    }

    public function setConnection(PDO $connection, $name = 'default'): void
    {
        $this->connections[$name] = $connection;
    }
}