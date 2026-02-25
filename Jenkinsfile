pipeline {
    agent any

    stages {

        stage('Pull Code') {
            steps {
                echo 'Pulling latest code from GitHub...'
                git branch: 'main', url: 'https://github.com/Ankita-Bhowmick/ci-cd-1.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    echo "Building Docker image..."
                    dockerImage = docker.build("ci-cd-1:${BUILD_NUMBER}")
                }
            }
        }

        stage('Test') {
            steps {
                echo "No tests available"
            }
        }
    }

    post {
        always {
            echo "Pipeline completed with status: ${currentBuild.currentResult}"
        }
    }
}
