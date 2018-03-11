FROM elnebuloso/composer:7.2

RUN composer global require phpmd/phpmd

ENV PATH="/tmp/vendor/bin:${PATH}"