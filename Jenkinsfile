pipeline {
    agent { docker 'node:6.10' }
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
}
