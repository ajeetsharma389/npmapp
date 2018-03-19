pipeline
{
	
	agent {
		node{
			label 'CD'
		}
	}
	/*agent { dockerfile true }*/
	
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
        		sh 'sudo docker build -t ajeetsharma389/npm'
        		//sh sudo docker run -it -p 8000:8000 ajeetsharma389/npm:1'
      		}
        }
        /*stage('Running') {
            steps {
              //  sh 'docker run -p 49160:9000 -d ajeetsharma389/npm:100'
            }
        }*/
    }
}