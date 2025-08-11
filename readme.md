1. Add domain to host in your local machine - `echo "127.0.0.1 recman.server" | sudo tee -a /etc/hosts`
2. Up docker containers - `docker-compose up -d` 
3. Composer update and start migration - `docker-compose run --rm -u $UID php-fpm /bin/bash -c "composer update && chmod u+x ./scripts/migration.php && php ./scripts/migration.php"`
4. Go to `https://recman.server/` in your browser