# Menggunakan Node.js versi 14 sebagai image dasar
FROM node:18

# Menentukan direktori kerja daslam kontainer
WORKDIR /usr/src/app

# Menyalin file pakage.json dan pakage-lock.json ke dalam direktory kerja
COPY package*.json ./

# Menginstal dependensi Node.js
RUN npm install

# Menyalin seloruh sumber ke aplikasi
COPY . .

# Menjalankan aplikasi Node.js
CMD ["node", "test.js"]