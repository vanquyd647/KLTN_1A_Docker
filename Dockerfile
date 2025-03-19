# Sử dụng Node.js 18 làm môi trường
FROM node:18

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Copy file package.json và package-lock.json trước (để tận dụng cache)
COPY package*.json ./

# Cài đặt dependencies
RUN npm install

# Copy toàn bộ mã nguồn vào container
COPY . .

# Expose cổng 3000 (hoặc cổng bạn đang dùng)
EXPOSE 3000

# Chạy ứng dụng
CMD ["npm", "start"]
