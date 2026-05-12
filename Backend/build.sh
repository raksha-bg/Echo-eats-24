#!/bin/bash
set -e

echo "Installing dependencies..."
pip install -r requirements.txt

echo "Initializing database..."
python init_db.py

echo "Running migrations..."
python manage.py migrate

echo "Build complete!"
