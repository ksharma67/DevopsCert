try {
    node('puppet-agent') {
        def app

        stage('Clone Repository')
        {
            checkout scm
        }
        stage('Show me the files') {
            
            sh "ls -l"
        
        }
        stage('Build docker image') {
            sh "docker build -t spongebob:version1 ."
        }
        stage('Check the docker image'){
            sh "docker image ls | grep php_dev"
        }
        stage('Check which containers are running'){
            sh "docker ps"
        }
        stage('Remove Containers that are running'){
            sh "docker container rm -f php_dev"
        }
        stage('Run the docker image locally'){
            sh "docker container run -itd -p 7080:80 --name php_dev:latest"
        }
        stage('Check if docker container is running'){
            sh "docker ps -a"
        }
        stage(' Check if website is runnint on '){
            sh "curl http://localhost:7080 | grep '@Spongebob' "
        }


    }





}