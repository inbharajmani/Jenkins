pipeline {
    agent {
      label 'Slave'
    }
    parameters {
            booleanParam(defaultValue: true, name: 'Deploy')
            choice(choices: ['Dev', 'Stage', 'Prod'], name: 'Environment')
            string(defaultValue: 'Value', name: 'Key')
            text(defaultValue: 'Entermultiline string', name: 'MultilineKey')
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
                sh " echo 'params.Deploy' 'params.Environment' 'params.Key' 'MultilineKey' > artifact.txt"
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: 'artifact.txt'
        }
    }
}