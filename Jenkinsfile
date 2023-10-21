pipeline {
    agent {
        label "docker"
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