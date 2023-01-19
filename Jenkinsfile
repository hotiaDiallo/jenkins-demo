#!/usr/bin/env groovy

pipeline {
    agent any
    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "maven"
    }
    stages {
        stage('Build jar') {
            steps {
                sh "mvn -Dmaven.test.failure.ignore=true clean package"
            }
        }

        stage('Build docker image') {
            steps {
                withCredentials([usernameColonPassword(
                        credentialsId: 'docker-login',
                        usernameVariable: 'USERNAME',
                        passwordVariable: 'PASSWORD')]
                ) {
                    echo 'Docker build'
                    sh "docker build -t selftaughdevops/jenkins-demo:0.1 ."
                    echo 'Docker login'
                    sh "echo $PASSWORD | docker login -u $USERNAME --password-stdin"
                    echo 'Docker push'
                    sh "docker push selftaughdevops/jenkins-demo:0.1"
                }
            }
        }
    }
}