FROM elnebuloso/composer:7.2
MAINTAINER jeff.tunessen@gmail.com

COPY entrypoint.sh /usr/local/bin/entrypoint

ENV PATH="/srv/composer/vendor/bin:${PATH}"

RUN composer global require phpmd/phpmd \
    && chmod +x /usr/local/bin/entrypoint

CMD ["sh"]
ENTRYPOINT ["entrypoint"]