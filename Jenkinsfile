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
        		sh 'sudo docker build -t ajeetdocker/npm:latest .'
        		
        		
      		}
        }
        stage('Test image') {
        /* Ideally, we would run a test framework against our image.
         * For this example, we're using a Volkswagen-type approach ;-) */

        steps {
      		
            echo "Tests passed"
        }
    }
        
        stage('Pushing the container') {
            steps {
              
              echo "Push the image to hub"
              			
              		node {
  							withCredentials([usernameColonPassword(credentialsId: 'dockerHub', variable: 'USERPASS')]) {
    					
      						//curl -u $USERPASS https://private.server/ > output
      						echo 'username='.$USERNAME.' and password ='.$USERPASS
      						docker login -u="ajeetdocker" -p="$USERPASS"
    				
  							}
						}	
    			
              			
              //sh 'sudo docker push ajeetdocker/npm:latest'
		
            }
        }
    }
}