pipeline {
    agent {
      label 'Slave'
    }
    stages {
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