pipeline {
    agent any
    options {
        timeout(time: 30, unit: 'MINUTES')
    }

    stages {
        stage('Clonar código') {
            steps {
                git branch: 'main', url: 'https://github.com/DaR3kDev/jenkins-proyect.git'
                echo '📥 Código clonado desde GitHub'
            }
        }

        stage('Verificar archivos') {
            steps {
                sh '''
                    echo "=== Archivos en el repositorio ==="
                    ls -la
                    echo "=== Contenido de app/index.php ==="
                    cat app/index.php || echo "⚠️ index.php no encontrado"
                '''
            }
        }

        stage('Construir imagen Docker') {
            steps {
                sh '''
                    echo "🐳 Construyendo imagen Docker"
                    docker build -t php-app-image:latest ./app
                '''
            }
        }

        stage('Desplegar contenedor') {
            steps {
                sh '''
                    echo "🗑️ Eliminando contenedor previo"
                    docker rm -f php-app-container || true

                    echo "🚀 Iniciando nuevo contenedor"
                    docker run -d --name php-app-container -p 8081:80 php-app-image:latest
                '''
            }
        }

        stage('Finalizar') {
            steps {
                echo '✅ Pipeline completado exitosamente'
                echo '🌐 Accede a tu aplicación en: http://localhost:8081'
            }
        }
    }
}
