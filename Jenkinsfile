pipeline {
    agent any
        stages {
            stage('checkout') {
                steps {
                    git branch: 'master', url: 'https://github.com/msrikanth-12/Git-tuto.git'
                    sh 'ls *'
            }

            }
	        stage('Docker Build') {
                steps {
                    sh 'docker build -t my-httpd:v1 .'
                    sh 'docker tag my-httpd:v1 srikanth1209/jenkins_practice:v1'
            }
	
            }

	        stage('Image push') {
                steps {
                    withCredentials([usernamePassword(credentialsId: 'Dockerhub_Creds', passwordVariable: 'pass', usernameVariable: 'un')]) {
		            sh ('sudo docker login -u ${un} -p ${pass}')
		            }
	                sh ('sudo docker push srikanth1209/jenkins_practice:v1')
                }

            }

        }
}
