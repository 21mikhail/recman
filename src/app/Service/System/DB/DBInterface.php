<?php

namespace Service\System\DB;

interface DBInterface
{
    public function commit(): bool;

    public function update(): bool;

    public function delete(): bool;
}