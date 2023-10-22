pipeline {
    agent {
        docker {
            image "python"
            label "Slave"
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