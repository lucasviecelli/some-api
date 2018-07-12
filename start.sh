#!/bin/sh

waitforit -address=tcp://db:5432 -timeout=10 -- echo Database is running!
rails db:create 2> /dev/null || true 
rails db:migrate
set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

exec bundle exec "$@"