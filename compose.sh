#!/usr/bin/env bash
docker-compose -f docker-compose.dev.yml ${@:1}
