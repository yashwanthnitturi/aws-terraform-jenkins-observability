pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/yashwanthnitturi/aws-terraform-jenkins-observability.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t flask-app .'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                ssh -o StrictHostKeyChecking=no ubuntu@15.206.28.233 "
                docker stop flask-app || true
                docker rm flask-app || true
                docker run -d --name flask-app -p 5000:5000 flask-app
                "
                '''
            }
        }
    }
}
