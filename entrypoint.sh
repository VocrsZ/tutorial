#!/bin/bash
set -e

bundle

gem install bundler

bundle config --global --jobs 8 && bundle install

cd /app && bundle exec rake db:setup && bundle exec rake db:migrate

exec "$@"
