pipeline {
    agent none
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