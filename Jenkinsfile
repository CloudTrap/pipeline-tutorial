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
                sh 'pwd'
                sh 'ls -la'
                sh 'npm --version'
                sh 'node --version'
                sh 'yarn --version'
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
