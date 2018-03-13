#/bin/bash

case "$1" in
    create)
        echo ""
        docker build -t docker-php-phpmd --rm --pull -f Dockerfile .
    ;;

    verify)
        echo ""
        docker run -it --rm docker-php-phpmd phpmd --version
    ;;

    test)
        echo ""
        mkdir -p test/report
        git clone https://github.com/symfony/asset.git test/symfony-asset > /dev/null 2>&1

        docker run --rm -w $(pwd) -v $(pwd):$(pwd) docker-php-phpmd phpmd $(pwd)/test/symfony-asset/ xml codesize,unusedcode,naming --reportfile $(pwd)/test/report/phpmd.xml
    ;;

    *)
        echo ""
        echo " - create  create container"
        echo " - verify  verify container"
        echo " - test    collect metrics from test"
    ;;
esac