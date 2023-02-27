pipeline {
    agent {
      label 'Slave'
    }
    stages {
        stage ('checkout') {
            steps {
                script {
                    git branch: 'main', url: 'https://github.com/inbharajmani/Jenkins.git'
                }
            }
        }
        stage ('build') {
            steps {
                sh "echo 'Building'"
            }
        }
        stage ('test') {
            steps {
                echo "testing"
            }
        }
        stage ('package') {
            steps {
                echo "packaging"
            }
        }
    }
}