#!/bin/bash
# 🧟 MERCURY: OPTIONAL VAULT MOUNTER

echo "🔍 Searching for External Drives..."
sudo blkid

echo ""
read -p "Enter the UUID of your Expansion drive: " UUID
read -p "Enter your username (e.g., markvx1): " USERNAME

# 1. Create the Mount Point
sudo mkdir -p /media/linux/Expansion
sudo chown -R 1000:1000 /media/linux/Expansion

# 2. Backup and Update FSTAB
sudo cp /etc/fstab /etc/fstab.bak
echo "UUID=$UUID /media/linux/Expansion auto nosuid,nodev,nofail,x-gvfs-show 0 0" | sudo tee -a /etc/fstab

# 3. Mount all
sudo mount -a

echo "✅ Expansion Drive integrated as internal storage."
echo "⚠️ Your original fstab is backed up at /etc/fstab.bak"
