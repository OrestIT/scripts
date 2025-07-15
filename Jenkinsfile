pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo "Building from PR ${env.CHANGE_ID ?: env.BRANCH_NAME}"
      }
    }
  }
}
