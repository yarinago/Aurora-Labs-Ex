pipeline {
    agent { 
        docker { 
            'python:3.7-slim-buster' 
        }
    }
    // Second option that I tried to initiate a python job on any merge request
    // I tried to do it using the triggers for github but the documentation was lacking and I didn't find the rigth trigger.
    /*triggers {
        githubPullRequest {
            triggerOnPush = false
            triggerOnComment = true
            triggerPhrase = "test this"
            onlyTriggerPhrase = true
            onlyTriggerOnOpen = true
        }
    }*/
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/yarinago/Aurora-Labs-Ex.git', branch: 'master'
            }
        }
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
                sh 'docker build -t main.py .'
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
    }
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
}