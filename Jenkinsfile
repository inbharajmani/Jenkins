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
                def jsonValues = readJSON(file: "test.json")
                assert jsonValues == false
                assert jsonValues instanceOf Boolean
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}