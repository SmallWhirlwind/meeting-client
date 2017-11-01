node {
    stage('Download Project') {
        git 'https://github.com/SmallWhirlwind/meeting-client.git'
    }
    stage('Depenance install') {
        docker.image('node').inside {
            sh '''npm install
            npm install axios'''
        }
    }
    stage('Build Server') {
        docker.image('node').inside {
            sh '''npm run build'''
        }
    }
    stage('Build Docker Images') {
            sh '''docker build -t 192.168.33.80:5000/meeting_client:${BUILD_NUMBER} .
            docker push 192.168.33.80:5000/meeting_client:${BUILD_NUMBER}'''
    }
    stage('Deploy To Server') {
        sh '''cd scripts
           sudo ansible-playbook -e BUILDNUMBER=${BUILD_NUMBER} -i hosts deploy.yml'''
    }
}
