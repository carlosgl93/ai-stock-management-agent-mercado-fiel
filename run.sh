#!/usr/bin/env bash
set -euo pipefail

if [ ! -f .env ]; then
  echo "No .env found. Run ./setup.sh first."
  exit 1
fi

echo "Starting Docker services..."
docker compose up --build -d

echo "Waiting for API container to be ready..."
until docker compose exec api bash -lc 'echo ready' &>/dev/null; do
  sleep 2
done

echo "Loading documents..."
docker compose exec api bash -lc 'python scripts/load_documents.py'

echo "Starting ngrok on port 8000..."
ngrok http 8000
