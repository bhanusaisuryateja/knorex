node{
   stage('SCM Checkout'){
       git branch: 'master', url: 'https://github.com/bhanusaisuryateja/knorex.git'
   }
   stage('Build Docker Image'){
     sh 'docker build -t task:v1 . '
   }
  }
