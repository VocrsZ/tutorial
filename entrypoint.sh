#!/bin/bash
set -e

cd /app && bundle exec rake db:setup && bundle exec rake db:migrate

exec "$@"
