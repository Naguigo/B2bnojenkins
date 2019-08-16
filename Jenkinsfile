pipeline{
    agent { dockerfile true }    
    stages {
        stage("Build") {
            steps {
                bat "bundle install'"
            }
        }
        stage("Tests") {
            steps{
                bat "echo 'simulando um teste automatizado'"
            }
        }
    }
}



