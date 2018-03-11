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
        docker run --rm -w $(pwd)/test -v $(pwd)/test:$(pwd)/test phpmd ${@:2}
    ;;

    *)
        echo ""
        echo " - create  create container"
        echo " - verify  verify container"
        echo " - test    collect metrics from test"
    ;;
esac