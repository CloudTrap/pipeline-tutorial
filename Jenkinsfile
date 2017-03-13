#!groovy

pipeline {
    agent {
      dockerfile {
        filename 'Dockerfile'
        args '-v /.config -v /.cache -v /.bower '
      }
    }
    stages {
        stage('installdeps') {
            steps {
                sh 'npm install'
                // sh 'npm run bower'
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
