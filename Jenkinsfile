pipeline {
    agent any
    tools {
        maven "maven-3.9.9"
    }
    parameters {
        choice(name: 'VERSION', choices: ['1.1.0', '1.1.1'], description: '')
        booleanParam(name: 'executeTest', defaultValue: true, description: '')
    }
    environment {
        NEW_VERSION = '1.3.0'
        SERVER_CREDENTIALS = credentials('github-credentials')
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                echo "Building version ${NEW_VERSION}"
            }
        }
        stage('Test') {
            when {
                expression {
                    params.executeTest
                }
            }
            steps {
                echo 'Testing...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                echo "Deploying version ${params.VERSION}"
            }
        }
    }
}

