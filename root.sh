#!/bin/bash

# Pastikan perintah ini dijalankan sebagai root atau dengan hak akses sudo

# Edit file konfigurasi SSH
sudo nano /etc/ssh/sshd_config

# Ubah konfigurasi SSH
sudo sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config

# Simpan perubahan
# (Di dalam nano, tekan Ctrl + X, lalu tekan Y, dan tekan Enter)

# Ganti kata sandi root
sudo passwd

# Restart layanan SSH
sudo systemctl restart ssh

echo "Root login telah diaktifkan dengan kata sandi. Ingatlah untuk menjaga keamanan VPS Anda dengan baik."
