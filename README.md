## About
Docker-compose running a Laravel app using: php, nginx and mysql docker containers. Made with docker-compose study purposers.
<br/>

Brief summary of how the containers are structured:

* <strong>NGINX</strong>: Responsible for serving the Laravel application. It is based on the official nginx image and exposes port 80.

* <strong>PHP</strong>: Responsible for running the PHP code of the Laravel application. It is based on the official PHP image and has a Dockerfile that installs the necessary PHP extensions and dependencies. It also mounts the Laravel application code as a volume.

* <strong>MySQL</strong>: Responsible for running the MySQL database. It is based on the official MySQL image and has environment variables that define the root password and the name of the database.

## Commands: 
1. <code>docker-compose up -d --build</code>
2. <code>docker-compose exec php php /var/www/artisan migrate --seed</code>
3. <code>curl http://localhost:8080</code>

## References
* Built this docker-compose structure following <a href="https://dev.to/aschmelyun/the-beauty-of-docker-for-local-laravel-development-13c0">this fantastic article</a>, with minor changes in the Dockerfile's php version and laravel .env DB values.
* Do not forget to give the mysql user the correct permissions!
