#!/usr/bin/env bash
set -euo pipefail

echo "Setting up .env..."

# Start from example
cp .env.example .env

echo ""
echo "Fill in the following values in your .env:"
echo "  - OPENAI_API_KEY"
echo "  - WHATSAPP_PHONE_NUMBER_ID"
echo "  - FACEBOOK_PAGE_ACCESS_TOKEN"
echo "  - FACEBOOK_APP_SECRET"
echo "  - FACEBOOK_TARGET_APP_ID"
echo "  - WHATSAPP_WEBHOOK_VERIFY_TOKEN"
echo "  - WEBHOOK_BASE_URL (from ngrok)"
echo "  - MERCADO_FIEL_API_KEY"
echo ""
echo ".env created from .env.example. Edit it with your credentials."
