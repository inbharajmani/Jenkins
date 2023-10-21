pipeline {
    agent {
        label "Slave"
    }
    stages {
        stage("echo") {
            agent {
                docker {
                    image "python"
                }
            }
            steps {
                sh '''whoami
                hostname
                python --version
                '''.stripIndent()
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}