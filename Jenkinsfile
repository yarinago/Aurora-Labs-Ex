pipeline {
    agent { 
        docker { 
            'python:3.7-slim-buster' 
        }
    }

    // Activate pipeline only on merge request
    on {
        pull_request {
            types 'opened', 'reopened', 'synchronize'
        }
    }
    options {
        skipDefaultCheckout()
    }

    stages {
        stage('Upgrade and Install') {
            steps {
                sh 'pip install --upgrade pip'
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Compile') {
            steps {
                sh 'python ./main.py .'
            }
        }
        /*
        stage('Test') {
            steps {
                // Run tests on the app
            }
        }
        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('SonarQube') {
                    sh 'sonar-scanner'
                }
            }
        }
        stage('Build') {
            // agent { need to run on an agent with a docker installed }
            steps {
                // Build the app
            }
        }
        stage('Integration Test') {
            steps {
                // Run test on the app
            }
        }
        stage('Cleanup and Push') {
            steps {
                // Do cleanup
            }
        }
        stage('Deploy') {
            // agent { need to run on an agent with a docker installed }
            steps {
                // docker tag + push
                // Any other Deploy options can come either here or in a diffrent step
            }
        }
        // WE CAN ADD MORE STEP ACCORDINGLY
        */
    }
    /*
    post {
        always {
            // always
        }
        failure {
            // failure
        }
        success {
            // success
        }
        cleanup {
            // cleanup
        }
        // We can add more
    }
    */
}