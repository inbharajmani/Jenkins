pipeline {
    agent {
      label 'Slave'
    }
    stages {
        stage ('build') {
            steps {
                sh "echo 'Building'"
                sh "hostname"
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