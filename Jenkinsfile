pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/ghiberti85/inf335-05-2.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Define o nome da imagem Docker
                    dockerImage = docker.build("olaunicamp")
                }
            }
        }
        stage('Run Docker Image') {
            steps {
                script {
                    // Executa a imagem Docker
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
