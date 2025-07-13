#!/bin/sh

echo "[ENTRYPOINT] Checking DB file..."

ls -l /home/node/.n8n || echo "Folder not accessible"

if [ -f /home/node/.n8n/database.sqlite ]; then
  echo "✅ DB File exists!"
else
  echo "❌ DB File NOT FOUND (akan dibuat oleh n8n jika bisa nulis)"
fi
exec n8n
