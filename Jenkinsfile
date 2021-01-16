pipeline {
    agent {
        docker {
            image 'maven:3.6.3'
        }
    }

    stages {
        stage('Build') {
            steps {
                sh 'maven --version'
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
