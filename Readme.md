# Envoronment for development on PHP

## Description of directories

Dockerfiles for build containers
/docker
  /mongodb
  /php
    /70
    /71
    /74
    /81
    /83

## For start developepment
1. Create folder or clone you project to `homestead` directory.
2. Create new nginx conf file in `./etc/nginx/conf.d` for you site example.loc
3. Run `docker-compose up -d`