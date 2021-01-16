pipeline {

    agent any

    environment { 
        dockerHome = tool 'myDocker'
        mavenHome = tool 'myMaven'
        PATH = "$dockerHome/bin:$mavenHome/bin:$PATH"
    }

    stages {
        stage('Checkout') {
            steps {
                sh 'mvn --version'
                sh 'docker version'
                echo "PATH - $PATH"
                echo "BUILD_NUMBER - $env.BUILD_NUMBER"
                echo "BUILD_URL - $env.BUILD_URL"
                echo "BUILD_ID - $env.BUILD_ID"
                echo "BUILD_TAG - $env.BUILD_TAG"
                echo "JOB_NAME - $env.JOB_NAME"
                echo "Building.."
            }
        }
        stage('Compile') {
            steps {
                sh 'mvn clean compile'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Intégration test') {
            steps {
                sh 'mvn failsafe:integration-test failsafe:verify'
            }
        }
    }
    post {
        always{
           echo "I always run" 
        }
        success{
           echo "I run when build succeded"
        }
        failure{
           echo "I run when build fails"
        }
    }
}
