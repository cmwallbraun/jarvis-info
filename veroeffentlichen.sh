#!/usr/bin/env bash
# Einmal am Mac starten: legt das öffentliche Repo an und schaltet GitHub Pages ein.
set -euo pipefail
cd "$(dirname "$0")"
gh repo create cmwallbraun/jarvis-info --public --source . --push --description "Infoseite für die private Jarvis-Anwendung"
gh api repos/cmwallbraun/jarvis-info/pages -X POST -f 'source[branch]=main' -f 'source[path]=/' --jq '.html_url'
echo "Fertig. Die Seite ist in etwa einer Minute erreichbar."
