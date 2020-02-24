<img src="https://raw.githubusercontent.com/elnebuloso/docker-php-phpmd/master/logo.png" width="100%"/>

# docker-php-phpmd

![Release](https://github.com/elnebuloso/docker-php-phpmd/workflows/Release/badge.svg)
[![Docker Pulls](https://img.shields.io/docker/pulls/elnebuloso/php-phpmd.svg)](https://hub.docker.com/r/elnebuloso/php-phpmd)
[![GitHub](https://img.shields.io/github/license/elnebuloso/docker-php-phpmd.svg)](https://github.com/elnebuloso/docker-php-phpmd)

Dockerized PHPMD - PHP Mess Detector (https://phpmd.org/)

## github

- https://github.com/elnebuloso/docker-php-phpmd

## docker

- https://hub.docker.com/r/elnebuloso/php-phpmd
- https://hub.docker.com/r/elnebuloso/php-phpmd/tags?page=1&ordering=last_updated
- weekly builds, 0 0 * * 0

## run

```
docker run --rm -w $(pwd) -v $(pwd):$(pwd) elnebuloso/php-phpmd --version
docker run --rm -w $(pwd) -v $(pwd):$(pwd) elnebuloso/php-phpmd
```