#!/bin/bash
set -euo pipefail

source ~/.nvm/nvm.sh
nvm use 22

cd "$(dirname "$0")/.."

echo "Building Quartz..."
npx quartz build

echo "Deploying to Cloudflare Pages..."
wrangler pages deploy public/ --project-name=second-brain-wiki

echo "Done. Visit https://second-brain-wiki.pages.dev"
