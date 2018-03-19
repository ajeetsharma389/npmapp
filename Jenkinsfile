pipeline
{
	
	agent {
		node{
			label 'CD'
		}
	}

	
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
        		sh 'sudo docker build -t ajeetsharma389/npm .'
        		
      		}
        }
        stage('Running the container') {
            steps {
              //  sh 'docker run -p 49160:9000 -d ajeetsharma389/npm:100'
              
              sh 'sudo docker run -p 49160:8000 ajeetsharma389/npm'
            }
        }
    }
}