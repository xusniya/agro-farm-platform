#!/bin/sh
set -e

echo "Starting agro-farm-platform..."

# If DATABASE_URL contains postgres, wait for db:5432
if echo "$DATABASE_URL" | grep -q "postgres"; then
  echo "Waiting for PostgreSQL..."
  until python -c "import socket; s=socket.socket(); s.settimeout(2); s.connect(('db', 5432)); s.close()" 2>/dev/null; do
    echo "PostgreSQL is unavailable - sleeping"
    sleep 2
  done
  echo "PostgreSQL is up"
else
  echo "Using SQLite (no DB wait)"
fi

python manage.py migrate --noinput

echo "Starting gunicorn on 0.0.0.0:8000"
exec gunicorn config.wsgi:application --bind 0.0.0.0:8000 --workers 2 --timeout 120
