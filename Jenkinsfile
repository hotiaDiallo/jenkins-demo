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
                echo 'Building docker image'
            }
        }
    }
}