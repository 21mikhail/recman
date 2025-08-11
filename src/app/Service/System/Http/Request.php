<?php

namespace Service\System\Http;


class Request implements RequestInterface
{

    private string $method;
    private array $post;
    private array $query;
    private array $cookie;
    private array $session;
    private array $segments;
    private string $clientRootUrl;
    private string $path;


    public function __construct()
    {
        $this->method = $_SERVER['REQUEST_METHOD'];
        $this->post = &$_POST;
        $this->query = &$_GET;
        $this->cookie = &$_COOKIE;
        $this->session = &$_SESSION;

        $clientWebPath = dirname($_SERVER['PHP_SELF']) === '/' ? '' : dirname($_SERVER['PHP_SELF']);
        $clientWebPath = str_replace('/public', '', $clientWebPath);

        $this->clientRootUrl = (isset($_SERVER['REQUEST_SCHEME']) ? $_SERVER['REQUEST_SCHEME'] : 'http') . "://{$_SERVER['HTTP_HOST']}{$clientWebPath}";
        $this->path = '/' . (string)substr(
                trim(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH), "/"),
                strlen($clientWebPath)
            );
    }

    public function getPost(?string $param, $default = null): mixed
    {
        return $this->post[$param] ?? $this->post;
    }

    public function getQuery(?string $param, $default = null): mixed
    {
        return $this->query[$param] ?? $this->query;
    }

    public function getCookie(?string $param, $default = null): mixed
    {
        return $this->cookie[$param] ?? $this->cookie;
    }

    public function setCookie(string $name, string $value, int $time, string $path = '', string $domain = '', bool $secure = false, $httponly = false): void
    {
        setcookie($name, $value, $time, $path, $domain, $secure, $httponly);
    }

    public function getSession(?string $param, $default = null): mixed
    {
        return $this->session[$param] ?? $default;
    }

    public function setSession(string $name, mixed $value): void
    {
        $this->session[$name] = $value;
    }

    public function getMethod(): string
    {
        return $this->method;
    }

    public function getPath(): string
    {
        return $this->path;
    }

    public function getUriSegment(?string $key): string|array|null
    {
        if (!$this->segments) {
            $uri = explode('/', $this->getPath());
            $param = [];
            foreach ($uri as $_uri) {
                if ($_uri != '') {
                    $param[] = $_uri;
                }
            }
            $this->segments = $param;
        }
        if ($key === null) {
            return $this->segments;
        } elseif (isset($this->segments[$key])) {
            return $this->segments[$key];
        } else {
            return null;
        }
    }

    public function redirect(string $key): void
    {
        header('Location:' . $this->clientRootUrl . $key);
        exit;
    }

    public function getCSRFToken(): string
    {
        if (!$this->getSession('csrf_token')) {
            $this->setSession('csrf_token', bin2hex(random_bytes(35)));
        }

        return $this->getSession('csrf_token');
    }

    public function renewCSRFToken(): string
    {
        $this->setSession('csrf_token', null);
        return $this->getCSRFToken();
    }
}