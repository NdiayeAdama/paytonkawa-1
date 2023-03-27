pipeline {
    agent any
 
    environment {
         PATH = 'C:/Users/adama/Desktop/MSPR_ERP/flutter/bin'
    }

    stages{
        stage('Paytonkawa checkout') { 
            steps {
                git branch:'main',url:'https://github.com/NdiayeAdama/paytonkawa-1.git'
                }

        }

        stage('Paytonkawa clean') {
                steps {
                  
                    sh 'flutter clean'
                 
                } 
         }

        stage('Paytonkawa dependencies') {
            steps {
              
                sh 'flutter pub get'
           
          }  
        }

        stage('Paytonkawa test') {
            steps {
                dir('lib/'){
                       sh 'flutter test'
                    }
            }
        }

        stage('Paytonkawa package') {
              steps {
                 
                   sh 'flutter build apk --release'
               
              }  
        }

        stage('Paytonkawa archive') {
            steps {
               
                sh 'mv build/app/outputs/flutter-apk/app-release.apk apk-payetonkawa-$BUILD_NUMBER.apk'
                archiveArtifacts artifacts: 'apk-payetonkawa-*.apk', followSymlinks: false

             
          } 
        }  

    }
  }
