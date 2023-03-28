//Jenkins pipeline to test, build, deploy and release 
pipeline {
    //Defining where the pipeline will execute. Can be a top-level agent like this or a stage level agent. It is set to any to execute in any of the available nodes
    agent any
    stages {
        stage ('build') {
            agent {
                docker 'image python:3.12.0a6-alpine3.17'
            }
            steps {
                sh 'pip install -r requirements.txt'
            }
        }

        //Execute the command for test phase. Inorder to compile the source code and test code and then execute the tests.
        stage ('Test') {
            steps {
                sh 'python manage.py test'
            }
        }
       
        //Outputs the result of the final build - Optional. Deploy is usually the stage of deploying the released version of a 
        //project into the desired environment, usually production environment
        stage ('Deploy/Show Output'){
            steps {
                echo 'Deploying/Outputing .....'
                sh 'python3 manage.py runserver 0.0.0.0:8000'
            }  
        }          
           
    }
                
}
    