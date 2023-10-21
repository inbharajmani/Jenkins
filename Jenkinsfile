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
    }
    post {
        always {
            cleanWs()
        }
    }
}