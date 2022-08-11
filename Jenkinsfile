pipeline {

  agent {
    label 'sonar'
  }
  
  environment {
    GCR_PROJECT_ID = "astute-quarter-352805"
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
	    sh '''
		docker build -t flaskapp-image:${BUILD_NUMBER} .; docker images
	    	docker tag flaskapp-image:${BUILD_NUMBER} gcr.io/astute-quarter-352805/flask-sample/flaskapp-image:${BUILD_NUMBER}
	   '''
         }
      }
      stage('Upload Image into GCR') {
         steps {
	    script {
	     withDockerRegistry([credentialsId: "gcr:${GCP_PROJECT_ID}", url: "https://gcr.io"]) {
              sh "docker push gcr.io/${GCP_PROJECT_ID}/flask-sample/flaskapp-image:${BUILD_NUMBER}"
              }
            }
         }
      }
      stage('Deploy into k8s') {
         steps {
            echo 'Hello World'
         }
      }
   }
}

