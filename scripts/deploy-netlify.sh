#!/usr/bin/env bash
set -euo pipefail

HOOK_URL="https://api.netlify.com/build_hooks/699fe40f53fc10086cc2a8e4"

if [[ -n "${NETLIFY_BUILD_HOOK:-}" ]]; then
  HOOK_URL="$NETLIFY_BUILD_HOOK"
fi

echo "🔍 Rodando validações locais (lint, build, Lighthouse)..."
npm run lint:html
npm run build:css
npx lhci autorun --config=./lighthouserc.json

echo "🚀 Disparando deploy na Netlify..."
curl -s -X POST -d '{}' "$HOOK_URL" >/dev/null

echo "✅ Deploy disparado com sucesso. Acompanhe em https://app.netlify.com/"
