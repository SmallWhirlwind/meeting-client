node {
    stage('Download Project') {
        git 'https://github.com/SmallWhirlwind/meeting-client.git'
    }
    stage('Depenance install') {
        sh '''npm install'''
    }
    stage('Build Server') {
        sh '''npm run build'''
    }
    stage('Deploy jar package to service') {
        sh '''cd scripts
        sudo ansible-playbook deploy_jar.yml'''
    }
    stage('Deploy jar package to service') {
        sh '''cd scripts
        sudo ansible-playbook run_jar.yml'''
    }
}
