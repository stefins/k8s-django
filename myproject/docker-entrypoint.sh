#!/bin/sh

echo "Waiting for postgres..."

python manage.py wait_for_database

echo "PostgreSQL started"

python manage.py migrate

python manage.py collectstatic --no-input

exec "$@"
