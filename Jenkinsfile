pipeline {

  agent {
    label 'sonar'
  }

   stages {
      stage('SonarQube Analysis') {
         steps {
            echo 'disable for now!'
         }
      }
      stage('Docker Build') {
         steps {
	    echo '${env.BUILD_NUMBER}'
	    echo "${BUILD_NUMBER}"
	/*
	    sh ''docker ps'
	    sh 'docker build -t flaskapp-image .; docker images'
	*/
         }
      }
      stage('Upload Image into GCR') {
         steps {
            echo 'Hello World'
         }
      }
      stage('Deploy into k8s') {
         steps {
            echo 'Hello World'
         }
      }
   }
}

