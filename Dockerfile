# Bước 1: Dùng Image JDK nhẹ để chạy Java
FROM openjdk:17-jdk-slim

# Bước 2: Tạo thư mục app trong container
WORKDIR /app

# Bước 3: Copy toàn bộ thư mục src (đã compile) vào container
COPY src/ /app/src

# Bước 4: Chạy chương trình khi container khởi động
# Chúng ta sẽ chạy file Main đã được biên dịch sẵn
CMD ["java", "-cp", "src", "Main"]