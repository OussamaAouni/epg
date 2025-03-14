#!/bin/sh
cd F:/iptv/epg
git add .
timestamp() {
  date +"at %H:%M:%S on %d/%m/%Y"
}
git commit -m "Update epg auto-commit $(timestamp)"
git push