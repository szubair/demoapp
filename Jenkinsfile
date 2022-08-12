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
	    sh '''
		docker build -t flaskapp-image:${BUILD_NUMBER} .; docker images
	    	docker tag flaskapp-image:${BUILD_NUMBER} gcr.io/astute-quarter-352805/flask-sample/flaskapp-image:${BUILD_NUMBER}
	   '''
         }
      }
      stage('Upload Image into GCR') {
         steps {
	    script {
	    withDockerRegistry(credentialsId: 'gcr:astute-quarter-352805', url: 'https://gcr.io') {
              sh "docker push gcr.io/astute-quarter-352805/flask-sample/flaskapp-image:${BUILD_NUMBER}"
              }
            }
         }
      }
      stage('Deploy into k8s') {
         steps {
            echo 'Deploying to k8s cluster!'
	    sh 'kubectl apply -f deploy-flask.yaml'
         }
      }
   }
}

