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
	    echo "Build Num: ${env.BUILD_NUMBER}"
	    sh 'id; pwd'
	    sh 'docker build -t flaskapp-image:${BUILD_NUMBER} .; docker images'
         }
      }
      stage('Upload Image into GCR') {
         steps {
            echo 'Pushing images into GCR!'
	    sh 'docker tag gcr.io/astute-quarter-352805/flask-sample/flaskapp-image:${BUILD_NUMBER}'
         }
      }
      stage('Deploy into k8s') {
         steps {
            echo 'Hello World'
         }
      }
   }
}

