pipeline {
    agent {
        label "Slave"
    }
    stages {
        stage("echo") {
            steps {
                sh '''whoami
                hostname
                '''.stripIndent()
            }
        }
        stage("unstable") {
            steps {
                catchError(buildResult: "SUCCESS", stageResult: "UNSTABLE") {
                    error "unstabling"
                }
            }
        }
        stage("exit") {
            steps {
                error "next error"
            }
        }
        stage("after error") {
            steps {
                echo "hi after error"
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
} 