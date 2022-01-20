#!/usr/bin/env bash

case $1 in
    run)
        docker-compose -f docker-compose.dev.yml up --build "${@:2}"
        ;;

    stop)
        docker-compose -f docker-compose.dev.yml down  "${@:2}"
        ;;

    *)
        echo
        echo "Usage: ./run.sh COMMAND [OPTIONS]"
        echo
        echo "Commands:"
        echo "  start    Start all services."
        echo "  stop     Stop all services."
        echo
        echo "Options:"
        echo "  Check 'docker-compose --help' for options."
        ;;
esac
