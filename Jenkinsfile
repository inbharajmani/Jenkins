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
                sh """
                git reset --hard
                git fetch origin master
                git merge FETCH_HEAD
                git show HEAD^
                """
                
                // sh """
                // echo test > archivaltest.txt
                // zip archivaltest.zip archivaltest.txt
                // """
                script {
                docker.image("ubuntu:latest").inside(){
                    sh "hostname"
                    sh "cat /etc/os-release"
                    sh "echo 'test' > newfile"
                }
                archiveArtifacts allowEmptyArchive: false, artifacts: "newfile"
                }
            }
        }
        // stage ('test') {
        //     steps {
        //         echo "testing"
        //     }
        // }
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