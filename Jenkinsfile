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
                sh """
                echo test > archivaltest.txt
                zip archivaltest.zip archivaltest.txt
                """
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
                sh "echo ${params.Deploy} ${params.Environment} ${params.Key} ${params.MultilineKey} > artifact.txt"
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: 'artifact.txt'
        }
    }
}