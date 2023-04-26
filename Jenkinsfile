@Library('coverity_shared_lib@main') _
pipeline {
    // agent any
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
                script {
                String test = "testvalue"
                sh """
                echo Building
                mkdir $test
                name=$(hostname)
                echo $name
                """
                // script {
                //     withDockerContainer('mcr.microsoft.com/windows/servercore:ltsc2022') {
                //         cov_configure()
                //     }
                // }
                // sh "echo $USER"
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
                // script {
                // def SnapshotPushed = 1
                // // docker.image("ubuntu:latest").inside(){
                // //     SnapshotPushed = sh(returnStatus: true, script: 'bash bashScript.sh')
                // // }
                // // sh "echo $SnapshotPushed"
                // try {
                //     SnapshotPushed = sh(returnStatus: true, script: """ hostname
                //     pw """)
                //     ech
                // }
                // catch (Exception e){
                //     if(SnapshotPushed != 0) {
                //         echo "Exception occured check pipeline errors"
                //         currentBuild.result = 'Failure'
                //         throw e
                //     }
                //     else {
                //         echo "IOException occured due to Docker rm issue. Continuing pipeline..."
                //         currentBuild.result = 'SUCCESS'
                //     }
                // }
                // }
                // copyArtifacts(projectName: 'Folder/ArtifactCopyTest', selector: lastSuccessful())
                // sh "bash bashScript.sh"
                // echo "$currentBuild.fullProjectName"
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
    //         archiveArtifacts artifacts: 'coverity_output/**/*'
    //     }
    // }
}