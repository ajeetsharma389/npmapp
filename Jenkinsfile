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