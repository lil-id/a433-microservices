#! /usr/bin/bash

# # Membuat Docker image dari Dockerfile bernama item-app:v1
# docker build -t item-app:v1 .

# # Melihat list docker images
# docker images

# # Mengubah nama (tag) image agar sesuai dengan format Docker Hub
# docker tag item-app:v1 liloid/item-app:v1

# # Login ke Docker Hub
# docker login

# # Mengunggah image ke Docker Hub
# docker push liloid/item-app:v1


# 1. Membuat Docker image dari Dockerfile
docker build -t item-app:v1 .

# 2. Melihat daftar Docker image di lokal
docker images

# 3. Mengubah nama (tag) image agar sesuai dengan format GitHub Container Registry
# Ganti `USERNAME` dengan nama pengguna GitHub Anda
# Ganti `REPOSITORY` dengan nama repository Anda di GitHub
docker tag item-app:v1 ghcr.io/lil-id/item-app/item-app:v1

# 4. Login ke GitHub Container Registry
# Akan diminta token GitHub Personal Access Token dengan scope "write:packages"
echo $GITHUB_TOKEN | docker login ghcr.io -u lil-id --password-stdin

# 5. Mengunggah image ke GitHub Container Registry
docker push ghcr.io/lil-id/item-app/item-app:v1
