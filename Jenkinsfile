pipeline {
   label sonar

   stages {
      stage('SonarQube Analysis') {
         steps {
            echo 'disable for now!'
         }
      }
      stage('Docker Build') {
         steps {
 	ssh into sonar;
	    sh 'pwd;docker ps'
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

