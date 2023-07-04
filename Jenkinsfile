// @Library('coverity_shared_lib@main') _
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
                cleanWs()
                print(scm.branches[0].name)
                String idir = "dir"
                sh "mkdir -p $idir/output $idir/tmp  $idir/emit $idir/build_logs"
                sh """ 
                    echo "test" > $idir/output/summary.txt
                    echo "test" > $idir/test.txt
                    echo "test" > $idir/build_logs/test.txt
                    echo "test" > $idir/emit/test.txt
                    touch $idir/output/analysis-log.txt
                """
                zip zipFile: "${idir}.zip", dir: "$idir" , glob: "**/$idir/** , **/output/summary.txt", exclude: "**/tmp/** , **/output/** , **/emit/**", overwrite: true, archive: true
                // String test = "testvalue"
                // sh """
                //     echo Building
                //     mkdir $test
                //     cd $test
                //     echo "test\ntest" > test.txt
                //     temp=$(cat test.txt)
                //     for i in \$(cat test.txt)
                //     do
                //       echo "lines \$i"
                //     done
                // """
                
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