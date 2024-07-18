@echo off
if "%~3"=="" (
    echo Usage: %0 ^<php_version^> ^<project_name^> ^<command^>
    exit /b 1
)

set PHP_VERSION=%1
set PROJECT_NAME=%2
shift
shift
set COMMAND=%*

docker-compose exec php%PHP_VERSION% bash -c "cd /var/www/html/%PROJECT_NAME% && %COMMAND%"
