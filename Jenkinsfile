pipeline {
    agent {
      label 'Slave'
    }
    // triggers {
    //     cron '* * * * *'
    // }
    // parameters {
    //         booleanParam(defaultValue: true, name: 'Deploy')
    //         choice(choices: ['Dev', 'Stage', 'Prod'], name: 'Environment')
    //         string(defaultValue: 'Value', name: 'Key')
    //         text(defaultValue: 'Entermultiline string', name: 'MultilineKey')
    // }
    stages {
        stage ('build') {
            steps {
                sh "echo 'Building'"
                sh "echo $USER"
                // sh """
                // git reset --hard
                // git fetch origin main
                // git merge FETCH_HEAD
                // git show HEAD^
                // """
                
                // sh """
                // echo test > archivaltest.txt
                // zip archivaltest.zip archivaltest.txt
                // """
                script {
                def SnapshotPushed = 1
                docker.image("ubuntu:latest").inside(){
                    SnapshotPushed = sh(returnStatus: true, script: 'bash bashScript.sh')
                    echo '${SnapshotPushed}'
                }
                }
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
                // sh "echo ${params.Deploy} ${params.Environment} ${params.Key} ${params.MultilineKey} > artifact.txt"
            }
        }
    }
    // post {
    //     always {
    //         archiveArtifacts artifacts: 'artifact.txt'
    //     }
    // }
}