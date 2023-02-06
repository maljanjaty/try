pipeline {
    agent {
        dockerfile true {
            image 'node:lts-buster-slim'
            args '-p 5000:5000'
        }
    }
    environment {
        HOME = '.'
    }
     stages {
       /* stage('Lint') {
            steps {
                sh 'npx eslint src/app.js'
                sh 'npm run lint:fix'
            }
        }
        stage('Lintfix') {
            steps {
                sh 'npm run lint:fix'
            }
        }
    */    
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                echo 'Test stage should be runing here!'
            }
        }
        stage('Deliver') {
            steps {
                sh 'node src/app.js'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh './scripts/kill.sh'
            }
        }
    }
}
