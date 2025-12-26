pipeline {
    agent any

    environment {
        IMAGE_NAME = "my-java-app"
        IMAGE_TAG = "${env.BUILD_NUMBER}"
    }

    stages {
        stage('Cleanup') {
            steps {
                echo 'Dọn dẹp các Image cũ...'
                sh "docker image prune -f"
            }
        }

        stage('Docker Build') {
            steps {
                echo "Đang đóng gói Image: ${IMAGE_NAME}:${IMAGE_TAG}..."
                sh "docker build -t ${IMAGE_NAME}:${IMAGE_TAG} ."
                sh "docker tag ${IMAGE_NAME}:${IMAGE_TAG} ${IMAGE_NAME}:latest"
            }
        }

        stage('Docker Run Test') {
            steps {
                echo 'Đang chạy thử nghiệm Container...'
                sh "docker run --rm ${IMAGE_NAME}:${IMAGE_TAG}"
            }
        }
    }

    post {
        success {
            echo "Tuyệt vời! Image ${IMAGE_NAME}:${IMAGE_TAG} đã sẵn sàng."
        }
    }
}