pipeline {
    agent { 
        docker { image 'python:3.7-slim-buster' }
    }


    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Compile') {
            steps {
                sh 'python ./main.py .'
            }
        }
    }

    options 
    {
        buildDiscarder(logRotator(artifactNumToKeepStr: '1', numToKeepStr: '5'))
        skipDefaultCheckout(true)
    }

    triggers 
    {
        githubPullRequest()
    }
}
