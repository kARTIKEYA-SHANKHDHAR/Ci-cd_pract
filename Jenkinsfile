pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/kARTIKEYA-SHANKHDHAR/Ci-cd_pract.git'
            }
        }
        stage('Build Image') {
            steps {
                sh 'docker build -t mywebsite .'
                sh 'docker tag mywebsite kartikeya12/mywebsite:latest'
            }
        }
        stage('Push Image') {
            steps {
                sh 'docker push kartikeya12/mywebsite:latest'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker stop mywebsite-cont || true'
                sh 'docker rm mywebsite-cont || true'
                sh 'docker run -d --name mywebsite-cont -p 8080:80 mywebsite'
            }
        }
    }
}
