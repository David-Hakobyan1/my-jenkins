def gv

pipeline {
    agent any
    tools {
        maven "maven-3.9.9"
    }
    stages {
        stage('init') {
            steps {
                script {
                    gv = load "script.groovy"
                }
            }
        }
        stage('Buildi jar') {
            steps {
                script{
                    gv.buildJar()
                }
            }
        }
        stage('Build image') {
            steps {
                script{
                    gv.buildImage()
                }
            }
        }
        stage('Deploy') {
            steps {
                script{
                    gv.deployApp()
                }
            }
        }
    }
}

