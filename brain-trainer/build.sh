#!/usr/bin/env bash
# Builds index.html (standalone / installable app) from app.html.
set -euo pipefail
cd "$(dirname "$0")"
{
  echo '<!doctype html>'
  echo '<html lang="en"><head><meta charset="utf-8">'
  echo '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">'
  echo '<meta name="theme-color" content="#141b2e"><meta name="apple-mobile-web-app-capable" content="yes">'
  echo '<link rel="manifest" href="manifest.webmanifest"><link rel="icon" href="icon.svg" type="image/svg+xml"><link rel="apple-touch-icon" href="icon.svg">'
  echo '</head><body>'
  cat app.html
  echo '<script>if ("serviceWorker" in navigator && location.protocol !== "file:") navigator.serviceWorker.register("sw.js").catch(function () {});</script>'
  echo '</body></html>'
} > index.html
echo "Built index.html"
