#!/bin/bash
# MERCURY STATUS DASHBOARD 🧟

echo "--- STORAGE STATUS ---"
# Checks space on your System, DVD_Storage, and Expansion drives
df -h | grep -E 'Filesystem|DVD_Storage|Expansion'

echo ""
echo "--- GPU STATUS (GTX 750) ---"
# Pulls Name, Temperature, and Utilization from NVIDIA
nvidia-smi --query-gpu=name,temperature.gpu,utilization.gpu --format=csv,noheader

echo ""
echo "--- DOCKER CONTAINER STATUS ---"
# Lists running containers and their current uptime
docker ps --format "table {{.Names}}\t{{.Status}}"
