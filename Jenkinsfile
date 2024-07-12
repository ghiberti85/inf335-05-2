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
                    def dockerImage = docker.build("olaunicamp")
                }
            }
        }
        stage('Run Docker Image') {
            steps {
                script {
                    // Executa a imagem Docker
                    def container = dockerImage.run('-d')
                    // Verifica o log do container
                    def output = container.logs()
                    echo output
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
