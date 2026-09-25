FROM node:18-alpine

# Install curl, bash, dan dependencies untuk mendownload Xray core
RUN apk add --no-cache curl bash

# Download dan install Xray-core resmi ke dalam container
RUN bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install

# Setup direktori kerja aplikasi Node.js Anda
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Jalankan script start Anda (atau file runner yang memanggil Xray & Node)
EXPOSE 3000
CMD ["node", "index.js"]
