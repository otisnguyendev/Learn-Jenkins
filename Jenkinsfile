pipeline {
    agent any

    stages {
        stage('Biên dịch Java') {
            steps {
                sh 'java -version'
                sh 'javac src/Main.java'
            }
        }

        stage('Check Docker') {
            steps {
                // Kiểm tra xem Jenkins đã thấy Docker chưa
                sh 'docker version'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build với tên image là learn-jenkins
                sh 'docker build -t learn-jenkins .'
            }
        }

        stage('Run Container') {
            steps {
                // Chạy thử container để xem kết quả "Hello Jenkins"
                sh 'docker run --rm learn-jenkins'
            }
        }
    }
}