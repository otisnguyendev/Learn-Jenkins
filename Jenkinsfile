pipeline {
    agent any

    stages {
        stage('Biên dịch Java') {
            steps {
                sh 'javac src/Main.java'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Lệnh build image đặt tên là 'learn-jenkins'
                // Dấu chấm '.' ở cuối có nghĩa là tìm Dockerfile ở thư mục hiện tại
                sh 'docker build -t learn-jenkins .'
            }
        }

        stage('Chạy thử Container') {
            steps {
                // Chạy thử image vừa build để xem kết quả
                // --rm: tự xóa container sau khi chạy xong để đỡ rác máy
                sh 'docker run --rm learn-jenkins'
            }
        }
    }
}