#!/bin/sh
# Zabalí src/app.html do samostatnej stránky.
#   index.html         – na otvorenie priamo v prehliadači / GitHub Pages
#   public/index.html  – výstup pre Vercel (vercel.json → outputDirectory)
set -e
cd "$(dirname "$0")"
ICON='<link rel="icon" href="data:image/svg+xml,%3Csvg xmlns=%22http://www.w3.org/2000/svg%22 viewBox=%220 0 32 32%22%3E%3Cpath d=%22M16 28C5 19 2 13 5 8.5 8 4 13 5 16 9c3-4 8-5 11-.5 3 4.5 0 10.5-11 19.5z%22 fill=%22%23D3263F%22/%3E%3C/svg%3E">'
{
  printf '<!doctype html>\n<html lang="sk">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  printf '%s\n' "$ICON"
  printf '<link rel="manifest" href="/manifest.webmanifest">\n<link rel="apple-touch-icon" href="/apple-touch-icon.png">\n<meta name="apple-mobile-web-app-capable" content="yes">\n<meta name="apple-mobile-web-app-title" content="Srdce v čase">\n' 
  printf '<meta name="theme-color" content="#FFFFFF" media="(prefers-color-scheme: light)">\n<meta name="theme-color" content="#000000" media="(prefers-color-scheme: dark)">\n'
  sed -n '1,/<\/style>/p' src/app.html
  printf '</head>\n<body>\n'
  sed '1,/<\/style>/d' src/app.html
  printf '</body>\n</html>\n'
} > index.html
mkdir -p public
cp index.html public/index.html
cp src/assets/* public/
echo "index.html a public/index.html hotové"
