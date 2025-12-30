LABEL authors="Otis"
# Bước 2: Tạo thư mục làm việc trong Container
WORKDIR /app

# Bước 3: Copy code từ máy thật vào trong Container
COPY src/Main.java .

# Bước 4: Biên dịch code bên trong Container
RUN javac Main.java

# Bước 5: Lệnh để chạy ứng dụng khi Container khởi động
CMD ["java", "Main"]

ENTRYPOINT ["top", "-b"]