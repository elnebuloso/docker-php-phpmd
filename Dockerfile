FROM elnebuloso/composer:7.2
MAINTAINER jeff.tunessen@gmail.com

RUN composer global require phpmd/phpmd \
    && ln -s /srv/composer/vendor/bin/phpmd /usr/local/bin/phpmd

CMD ["sh"]