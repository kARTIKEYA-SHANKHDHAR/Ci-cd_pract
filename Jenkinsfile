pipeline {
    agent any
    environment {
        PATH = "/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
    }
    stages {

        stage('Build Image') {
            steps {
                sh 'docker --version'
                sh 'docker build -t mywebsite .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -d -p 8080:80 mywebsite'
            }
        }
    }
}
