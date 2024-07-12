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
                    // Define o nome da imagem Docker e constrói a imagem
                    dockerImage = docker.build("olaunicamp")
                }
            }
        }
        stage('Run Docker Image') {
            steps {
                script {
                    // Executa a imagem Docker
                    dockerImage.run('')
                }
            }
        }
    }
    post {
        always {
            script {
                echo 'Pipeline finalizado!'
            }
        }
    }
}
