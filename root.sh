#!/bin/bash

# Login ke VPS
# (Masukkan perintah login Anda di sini)

# Beralih ke akun root
sudo su

# Pindah ke direktori beranda
cd

# Edit file konfigurasi SSH
nano /etc/ssh/sshd_config

# Ubah konfigurasi SSH
sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config

# Simpan perubahan
# (Di dalam nano, tekan Ctrl + X, lalu tekan Y, dan tekan Enter)

# Ganti kata sandi root
passwd

# Restart layanan SSH
service ssh restart
service sshd restart

echo "Root login telah diaktifkan dengan kata sandi. Ingatlah untuk menjaga keamanan VPS Anda dengan baik."