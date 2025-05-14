pipeline {

	agent any

	stages {
	    stage('Build and Deploy Application' ) {
		steps {
			// Run build scripts
			sh "./deployment/build.sh"
		}
	     }
	}
}
