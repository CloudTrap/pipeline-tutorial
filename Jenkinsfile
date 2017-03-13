#!groovy

pipeline {
    agent {
      dockerfile {
        filename 'Dockerfile'
        args '-v /.cache/ -v /.bower/  -v /.config/configstore/'
      }
    }
    stages {
        stage('installdeps') {
            steps {
                // stupid NPM configstore package!
                env.XDG_CONFIG_HOME = '.configstore'
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
