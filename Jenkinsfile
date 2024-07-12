pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("olaunicamp")
                }
            }
        }
        stage('Run Docker Image') {
            steps {
                script {
                    dockerImage.run('-d')
                }
            }
        }
    }
    post {
        always {
            script {
                // Verifica o log do container
                def output = dockerImage.inside {
                    sh 'java OlaUnicamp'
                }
                echo output
            }
        }
    }
}
