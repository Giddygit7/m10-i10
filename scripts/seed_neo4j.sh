#!/usr/bin/env bash
# Seed the running Neo4j container with the recipe fixture.
#
# Idempotent — `MERGE` and `CREATE CONSTRAINT IF NOT EXISTS` in seed.cypher
# mean repeat runs do not duplicate nodes.

set -euo pipefail

# Read NEO4J_USER and NEO4J_PASSWORD from the environment
if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
fi

echo "Seeding Neo4j database..."
docker compose exec -T neo4j cypher-shell -u "$NEO4J_USER" -p "$NEO4J_PASSWORD" < api/seed.cypher
echo "Neo4j seeding completed successfully."