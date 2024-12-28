# Menggunakan node versi 14-alpine
FROM node:14-buster-slim

# Menentukan working direktori
WORKDIR /app

# Menyalin seluruh source code ke working direktori
COPY . .

# Mengatur mode aplikasi menjadi production
ENV NODE_ENV=production DB_HOST=item-db

# Menginstall dependecies untuk production
RUN npm install --production --unsafe-perm && npm run build

CMD ["npm", "start"]

# Mengekspos aplikasi pada port 8080
EXPOSE 8080