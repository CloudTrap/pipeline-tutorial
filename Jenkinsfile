pipeline {
    agent { docker 'node:6.10' }
    stages {
        stage('build') {
            steps {
                sh 'npm install -g bower'
                sh 'npm install'
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
