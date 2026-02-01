pipeline {
    agent any

    environment {
        DOCKER_USER = "madhusudhan143"
        IMAGE_NAME  = "demo-app"
        TAG         = "latest"
    }

    stages {
        stage('Checkout') {
            steps {
                // Pull code from GitHub
                git branch: 'main', url: 'https://github.com/Madhusudhanhub/flask-devops-app.git'
            }
        }

        stage('Build & Push Docker Image') {
            steps {
                sh 'chmod +x build.sh'
                sh './build.sh'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'chmod +x deploy.sh'
                sh './deploy.sh'
            }
        }
    }

    post {
        success {
            echo '✅ Pipeline completed successfully!'
        }
        failure {
            echo '❌ Pipeline failed. Check logs.'
        }
    }
}

