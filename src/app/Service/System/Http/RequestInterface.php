<?php

namespace Service\System\Http;

interface RequestInterface
{
    public function getPost(?string $param, $default = null): mixed;

    public function getQuery(?string $param, $default = null): mixed;

    public function getCookie(?string $param, $default = null): mixed;

    public function setCookie(string $name, string $value, int $time, string $path = '', string $domain = '', bool $secure = false, $httponly = false): void;

    public function getSession(?string $param, $default = null): mixed;

    public function setSession(string $name, mixed $value): void;

    public function getPath(): string;

    public function getMethod(): string;

    public function getUriSegment(?string $key): string|array|null;

    public function redirect(string $key): void;

    public function getCSRFToken(): string;

    public function renewCSRFToken(): string;
}