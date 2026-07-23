#!/usr/bin/env bash
# Seed the Weaviate vector database from the API container.

set -euo pipefail

echo "Seeding Weaviate vector index..."
docker compose exec -T api python api/seed_weaviate.py
echo "Weaviate seeding completed successfully."