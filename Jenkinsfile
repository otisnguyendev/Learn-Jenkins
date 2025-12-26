pipeline {
    agent any

    stages {
        stage('Compile') {
            steps {
                echo 'Đang vào thư mục src và biên dịch...'
                sh 'javac src/Main.java'
            }
        }

        stage('Run') {
            steps {
                echo 'Kết quả thực thi:'
                sh 'java -cp src Main'
            }
        }
    }
}