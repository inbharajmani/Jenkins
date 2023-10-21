pipeline {
    agent {
        label "Slave"
    }
    stages {
        stage("echo") {
            agent {
                docker {
                    image "python"
                    reuseNode true
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