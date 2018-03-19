node
{
	def app

		stage('Clone repository') {
       	 /* Let's make sure we have the repository cloned to our workspace */
			echo "Pulling code from repo"
        	checkout scm
    	}
        stage('Build Image') {
        	
        	app = docker.build ‘ajeetsharma389/npmapp’
        	
        }

    
}