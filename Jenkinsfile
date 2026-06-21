pipeline {
    agent any

    stages {

        stage('Deploy to App Server') {
            steps {
                sh '''
                ssh -o StrictHostKeyChecking=no ubuntu@15.206.28.233 '

                if [ ! -d ~/aws-terraform-jenkins-observability ]; then
                    git clone https://github.com/yashwanthnitturi/aws-terraform-jenkins-observability.git
                fi

                cd ~/aws-terraform-jenkins-observability

                git pull origin main

                sudo docker stop flask-app || true
                sudo docker rm flask-app || true

                sudo docker build -t flask-app .

                sudo docker run -d \
                    --name flask-app \
                    -p 5000:5000 \
                    flask-app
                '
                '''
            }
        }

    }
}
