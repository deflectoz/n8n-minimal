#!/bin/sh

echo "[ENTRYPOINT] Fixing permission on volume..."

# Coba dulu tanpa chown, biar kita lihat output
ls -l /home/node/.n8n

# Jalankan n8n langsung sebagai root dulu (biar gak kehalang permission)
exec n8n
