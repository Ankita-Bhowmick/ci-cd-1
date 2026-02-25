pipeline {
    agent any

    stages {

        stage('Pull Code') {
            steps {
                echo 'Pulling latest code from GitHub...'
                git branch: 'main',
                    url: 'https://github.com/Ankita-Bhowmick/ci-cd-1.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Installing dependencies...'
                sh 'pip3 install -r requirements.txt'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                // Skip pytest for now if you don't have tests
                sh 'echo "No tests available"'
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

    }

    post {
        always {
            echo "Pipeline completed with status: ${currentBuild.currentResult}"
        }
    }
}
