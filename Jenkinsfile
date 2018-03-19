/*node("CD")
{
	def app

		stage('Clone repository') {
       	 /* Let's make sure we have the repository cloned to our workspace */
			echo "Pulling code from repo"
        	checkout scm
    	}
        stage('Build Image') {
        	
        	app = docker.build("ajeetsharma389/npmapp")
        	
        }

    
}
*/
pipeline
{
	
	
	agent { dockerfile true }
	
	stages {
		stage('Clone repository') {
        	
			steps {
        		echo "clone code"
        		checkout scm
      		}
        	
    	}
        stage('Build Image') {
        	
        	
        	/*agent{
        		docker
        			{
        				
        				reuseNode true
        			}
        	}*/
        	steps {
        		sh 'docker build ajeetsharma389/npm'
      		}
        }
        /*stage('Running') {
            steps {
              //  sh 'docker run -p 49160:9000 -d ajeetsharma389/npm:100'
            }
        }*/
    }
}