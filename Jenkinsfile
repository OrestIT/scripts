pipeline {
  agent any
  stages {
      stage('Build') {
      steps {
        echo 'projectBuild'
        // приклад для Maven:
        sh 'mvn clean compile'
        // або для Gradle:
        // sh './gradlew build'
      }
    }

    stage('Run Tests') {
      steps {
        echo '🧪 Запуск тестів'
        // Maven:
        sh 'mvn test'
        // Node.js:
        // sh 'npm ci && npm test'
        // Python:
        // sh 'pytest'
      }

      post {
        always {
          junit '**/target/surefire-reports/*.xml'
        }
      }
    }
  }

  post {
    success {
      echo '✅ Все пройшло успішно'
    }
    failure {
      echo '❌ Тести/білд завалилися'
    }
  }
}
