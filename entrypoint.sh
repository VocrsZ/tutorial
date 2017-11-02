#!/bin/bash
set -e

gem install bundler

bundle config --global --jobs 8 && bundle install

cd /app && rake db:setup && rake db:migrate

exec "$@"
