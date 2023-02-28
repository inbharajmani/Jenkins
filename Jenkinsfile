pipeline {
    agent {
      label 'Slave'
    }
    options([
        parameters([
            booleanParam(defaultValue: true, name: 'Deploy'),
            choice(choices: ['Dev', 'Stage', 'Prod'], name: 'Environment'),
            string(defaultValue: 'Value', name: 'Key'),
            text(defaultValue: 'Entermultiline string', name: 'MultilineKey')
        ])
    ])
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