# docker-php-phpmd

Dockerized PHPMD - PHP Mess Detector (https://phpmd.org/)

## docker hub

See Supported Tags at https://hub.docker.com/r/elnebuloso/php-phpmd/tags/

#### Supported tags and respective `Dockerfile` links

- [Dockerfile](https://github.com/elnebuloso/docker-php-phpmd/blob/master/Dockerfile)

## run

```
docker run --rm -w $(pwd) -v $(pwd):$(pwd) elnebuloso/php-phpmd phpmd
```