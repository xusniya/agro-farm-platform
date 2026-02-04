#!/bin/sh
set -e

echo "Waiting for PostgreSQL..."
until python -c "import socket; s=socket.socket(); s.settimeout(2); s.connect(('db', 5432)); s.close()" 2>/dev/null; do
  echo "PostgreSQL is unavailable - sleeping"
  sleep 2
done

echo "PostgreSQL is up - running migrations"
python manage.py migrate --noinput

echo "Starting gunicorn"
exec gunicorn config.wsgi:application --bind 0.0.0.0:8000 --workers 2
