pipeline {
    agent any
 


    stages{
        stage('Paytonkawa checkout') { 
            steps {
                git branch:'main',url:'https://github.com/NdiayeAdama/paytonkawa-1.git'
                }

        }

        stage('Paytonkawa clean') {
                steps {
                  
                    bat 'flutter clean'
                 
                } 
         }

        stage('Paytonkawa dependencies') {
            steps {
              
                bat 'flutter pub get'
           
          }  
        }

        stage('Paytonkawa test') {
            steps {
                dir('lib/'){
                       bat 'flutter test'
                    }
            }
        }

        stage('Paytonkawa package') {
              steps {
                 
                   bat 'flutter build apk --release'
               
              }  
        }

        stage('Paytonkawa archive') {
            steps {
               
                bat 'mv build/app/outputs/flutter-apk/app-release.apk apk-payetonkawa-$BUILD_NUMBER.apk'
                archiveArtifacts artifacts: 'apk-payetonkawa-*.apk', followSymlinks: false

             
          } 
        }  

    }
  }
