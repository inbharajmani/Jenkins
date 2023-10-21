pipeline {
    agent {
        label "Slave"
        docker {
            image "python"
        }
    }
    stages {
        stage("echo") {
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