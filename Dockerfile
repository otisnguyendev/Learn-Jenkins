# Sử dụng Image JDK 25 chính thức từ Oracle hoặc các đơn vị uy tín
FROM container-registry.oracle.com/java/openjdk:25-oraclelinux9

# Tạo thư mục làm việc
WORKDIR /app

# Copy thư mục src (chứa các file .class đã biên dịch) vào container
COPY src/ /app/src

# Chạy ứng dụng
CMD ["java", "-cp", "src", "Main"]