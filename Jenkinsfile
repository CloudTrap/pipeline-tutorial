#!groovy

pipeline {
    agent {
      dockerfile {
        filename 'Dockerfile'
      }
    }
    stages {
        stage('installdeps') {
            steps {
                sh 'yarn --global-folder .yarn-cache'
                sh 'npm run bower'
            }
        }
        stage('build') {
            steps {
                sh 'npm run build'
            }
        }
        stage('test') {
            steps {
                  sh 'npm run test'
            }
        }
    }
    post {
      always {
        junit 'junit-results.xml'
      }
    }
}
