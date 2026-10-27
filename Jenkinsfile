pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('BuildImage') {
            steps {
                sh 'docker build -t mywebsite .'
                sh 'docker tag mywebsite Kartikeya12/mywebsite:latest'
            }
        }
        stage('PushImage') {
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
