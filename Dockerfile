FROM composer
MAINTAINER jeff.tunessen@gmail.com

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /srv

RUN composer global require phpmd/phpmd:^2 --no-suggest --no-ansi --no-interaction \
    && ln -s /srv/vendor/bin/phpmd /usr/local/bin/phpmd

ENTRYPOINT ["phpmd"]
CMD ["-"]