# Envoronment for development on PHP


## For start developepment
1. Create folder or clone you project to `homestead` directory.
2. Create new nginx conf file in `./etc/nginx/conf.d` for you site example.loc
3. Run `docker-compose up -d`

## Run scripts entry php containers

You should set 3 arguments for run commands:
- php version from docker-compose.yml
- project name (directory in homestead)
- You command

Example: `./php.sh 74 localhost composer install`

## Create new vhost for nginx
You should set 3 arguments for run commands:
- hostname
- php service from docker-compose.yml
- Path in /var/www/html

Example: `./nginx.sh youhost.test php70 youhost/public`

> Don't forget to restart your Nginx container.
> And add you localhost to hosts file.