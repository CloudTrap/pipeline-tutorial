#!groovy

pipeline {
    agent {
      dockerfile {
        filename 'Dockerfile'
        args '-v /.cache/ -v /.bower/  -v /.config/configstore/'
      }
    }
    environment {
        // stupid NPM configstore package!
        XDG_CONFIG_HOME = '.configstore'
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
                sh 'printenv'
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
