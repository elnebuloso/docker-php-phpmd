#/bin/bash

case "$1" in
    create)
        docker build -t docker-php-phpmd --rm --pull -f Dockerfile .
    ;;

    verify)
        docker run -it --rm docker-php-phpmd --version
    ;;

    test)
        mkdir -p test/report
        git clone https://github.com/symfony/asset.git test/symfony-asset > /dev/null 2>&1

        docker run --rm -w $(pwd) -v $(pwd):$(pwd) docker-php-phpmd $(pwd)/test/symfony-asset/ xml codesize,unusedcode,naming --reportfile $(pwd)/test/report/phpmd.xml
    ;;

    *)
        echo " - create  create container"
        echo " - verify  verify container"
        echo " - test    collect metrics from test"
    ;;
esac