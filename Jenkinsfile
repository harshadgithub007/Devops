pipeline {
    agent any

    parameters {
        string (name: DOC_USER, description: 'docker_username')
        string (name: DOC_PASS, description: 'docker_password", deaultValue" '', password: true)
    
    stages {
        stage('clone_repo') {
            steps {
                git branch: 'webhook', url: 'https://github.com/harshadgithub007/Devops.git'
            }
        }
        stage('build_app') {
            steps {
                sh 'python3 python_app'
            }
        }
        stage('print build url') {
            steps {
                sh 'echo $BUILD_URL'
            }
        }
        stage ('docker login') {
            steps {
                sh 'docker login -u ${params.DOC_USER} -p ${params.DOC_PASS}'
    }
}
