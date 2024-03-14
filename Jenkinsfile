pipeline {
    agent any
    
    stages {
        stage ('clone_repo') {
            steps {
                git branch: 'webhook', url: 'https://github.com/harshadgithub007/Devops.git'
            }
        }
        stage ('build_app') {
            steps {
                sh 'python3 python_app'
            }
        }
        stage ('print build url') {
            steps {
                sh 'echo $JENKINS_URL'
    }
}
