FROM elnebuloso/composer:7.2
MAINTAINER jeff.tunessen@gmail.com

ENV PATH="/srv/composer/vendor/bin:${PATH}"
RUN composer global require phpmd/phpmd

CMD ["-"]
ENTRYPOINT ["phpmd"]