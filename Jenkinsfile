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
                script {
                    def jsonValues = readJSON(file: "test.json")
                    assert jsonValues.release == false
                    assert jsonValues.release instanceof Boolean
                    if (jsonValues.release) {
                        printf("Fucked up")
                    }
                    else {
                        printf("Working. it is false value")
                    }
                }
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}