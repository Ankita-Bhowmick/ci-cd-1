pipeline {
    agent any

    stages {
        stage('Pull Code') {
            steps {
                echo 'Pulling latest code from GitHub...'
                // Explicitly clone your repo
                git branch: 'main',
                    url: 'https://github.com/Ankita-Bhowmick/ci-cd-1.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Installing dependencies...'
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'pytest'
            }
        }

        
stages {
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("ci-cd-1:${BUILD_NUMBER}")

            }
        }
    }
}
