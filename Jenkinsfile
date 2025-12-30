pipeline {
    agent any

    stages {
        stage('Compile (Biên dịch)') {
            steps {
                echo "Đang ở thư mục: ${pwd()}"
                // Cách 1: Chỉ định đường dẫn đầy đủ đến file java
                sh 'javac src/Main.java'
            }
        }

        stage('Run (Chạy thử)') {
            steps {
                // Cách 2: Dùng lệnh -cp để báo cho Java biết code nằm trong 'src'
                sh 'java -cp src Main'
            }
        }
    }
}