#!/bin/bash
set -e

cd /app && rake db:setup && rake db:migrate

exec "$@"
