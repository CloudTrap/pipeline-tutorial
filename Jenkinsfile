#!groovy

pipeline {
    agent { docker 'ubuntu:16.04' }
    stages {
        stage('installdeps') {
            steps {
                sh 'npm install'
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
