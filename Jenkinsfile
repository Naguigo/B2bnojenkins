pipeline{
    agent { dockerfile true }    
    stages {
        stage("Build") {
            steps {
                sh "bundle install'"
            }
        }
        stage("Tests") {
            steps{
                sh "echo 'simulando um teste automatizado'"
            }
        }
    }
}



