pipeline {
    
    agent {
        docker {
            image 'maven:3.6.3'
        }
    }

    stages {
        stage('Build') {
            steps {
                //sh 'mvn --version'
                echo 'PATH - $PATH'
                echo 'BUILD_NUMBER - $env.BUILD_NUMBER'
                echo 'BUILD_URL - $env.BUILD_URL'
                echo 'BUILD_ID - $env.BUILD_ID'
                echo 'BUILD_TAG - $env.BUILD_TAG'
                echo 'JOB_NAME - $env.JOB_NAME'
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Intégration test') {
            steps {
                echo 'Intégration testing....'
            }
        }
    }
    post {
        always{
           echo 'I always run' 
        }
        success{
           echo 'I run when build succeded' 
        }
        failure{
           echo 'I run when build fails' 
        }
    }
}
