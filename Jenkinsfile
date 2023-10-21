// pipeline {
//     agent none
//     stages {
//         stage("echo") {
//             steps {
//                 sh '''whoami
//                 hostname
//                 '''.stripIndent()
//             }
//         }
//     }
//     post {
//         always {
//             cleanWs()
//         }
//     }
// }
node {
    try {
        stage("checkout") {
            checkout scm
        }
        stage("echo") {
            sh '''whoami
                hostname
                '''.stripIndent()
        }
    } finally {
        cleanWs()
    }
}