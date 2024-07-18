# Envoronment for development on PHP


## For start developepment
1. Create folder or clone you project to `homestead` directory.
2. Create new nginx conf file in `./etc/nginx/conf.d` for you site example.loc
3. Run `docker-compose up -d`

## Run scripts entry php containers

You should set 3 arguments for run commands
- php version
- project name (directory in homestead)
- You command

Example: `./php.sh 74 localhost composer install`