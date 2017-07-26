pipeline {
    agent any 

    stages {
        stage('Build image') { 
            steps { 
                sh 'docker -H 172.17.0.1:2375 build -t registry/os:7.3f .' 
            }
        }
        stage('Push image'){
        	steps {
	            sh 'docker -H 172.17.0.1:2375 push registry.wgn.wuerth.com/os:7.3f'
            }
        }
    }
}