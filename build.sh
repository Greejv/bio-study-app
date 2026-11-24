#!/bin/sh
# Zabalí src/app.html do samostatného index.html (pre GitHub Pages / otvorenie v prehliadači).
set -e
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="sk">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  sed -n '1,/<\/style>/p' src/app.html
  printf '</head>\n<body>\n'
  sed '1,/<\/style>/d' src/app.html
  printf '</body>\n</html>\n'
} > index.html
echo "index.html hotový"
