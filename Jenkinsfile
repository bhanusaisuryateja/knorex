node{
   stage('SCM Checkout'){
       git branch: 'master', url: 'https://github.com/bhanusaisuryateja/knorex.git'
   }
   stage('Build Docker Image'){
     sh 'docker build -t task:v1 . '
   }
   stage('Run Container on prod Server'){
     def dockerRun = 'docker run -p 8000:80 -d --name task:v1'
     sshagent(['dev-server']) {
       sh "ssh -o StrictHostKeyChecking=no ec2-user@172.31.8.218 ${dockerRun}"
     }
   }
}
 
