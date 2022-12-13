pipeline {
  agent any
  stages {
    stage('Build') {
      post {
        success {
          junit '**/target/surefire-reports/TEST-*.xml'
          archiveArtifacts 'target/*.jar'
        }

      }
      steps {
        git(url: 'https://github.com/jglick/simple-maven-project-with-tests.git', branch: 'master')
        sh 'mvn -Dmaven.test.failure.ignore=true clean package'
      }
    }

    stage('maven build on remote agent') {
      agent {
        label 'linux'
      }
      post {
        success {
          junit '**/target/surefire-reports/TEST-*.xml'
          archiveArtifacts 'target/*.jar'
        }

      }
      steps {
        git 'https://github.com/jglick/simple-maven-project-with-tests.git'
        sh 'mvn -Dmaven.test.failure.ignore=true clean package'
      }
    }

  }
  tools {
    maven 'M3'
  }
}