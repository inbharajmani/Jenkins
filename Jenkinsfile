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
                    def jsonValues1 = readJSON(file: "test.json", returnPojo: true)
                    print(jsonValues1.getClass())
                    print(jsonValues1.std.join(","))
                    def jsonValues2 = readJSON(file: "test.json")
                    print(jsonValues2.getClass())
                    print(jsonValues2.std.join(","))
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