#!/bin/sh
cd F:/iptv/epg
# update time
sed -i 's/ +0200"/ +0100"/g' guide.xml
# upload file
git add .
timestamp() {
  date +"at %H:%M:%S on %d/%m/%Y"
}
git commit -m "Update epg auto-commit $(timestamp)"
git push